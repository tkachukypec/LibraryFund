using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using LibraryIS.ViewModels;
using Microsoft.Win32;
using Word = Microsoft.Office.Interop.Word;

namespace LibraryIS.Pages.MainWindowsPages
{
    /// <summary>
    /// Логика взаимодействия для Page2.xaml
    /// </summary>
    public partial class Page2 : Page
    {
        public Page2()
        {
            InitializeComponent();
        }
        
        async void WordExport(string savePath, ReportViewModel reportViewModel)
        {
            await Task.Run(() =>
            {
                Word.Application wordApplication = new Word.Application();
                try
                {
                    object missing = Type.Missing;
                    Word.Document document = wordApplication.Documents.Add(ref missing, ref missing, ref missing, ref missing);

                    // Заголовок
                    Word.Paragraph paragraph = document.Paragraphs.Add(ref missing);
                    paragraph.Range.Text = $"Отчет на {DateTime.Now.ToString("dddd, dd MMMM yyyy")}";
                    paragraph.Range.Font.Name = "Times New Roman";
                    paragraph.Range.Font.Size = 16;
                    paragraph.Range.Font.Bold = 1;
                    paragraph.Alignment = Word.WdParagraphAlignment.wdAlignParagraphCenter;
                    paragraph.Range.InsertParagraphAfter();

                    // Таблица
                    paragraph.Range.Font.Size = 12;
                    paragraph.Range.Font.Bold = 0;
                    Word.Table table = document.Tables.Add(paragraph.Range, reportViewModel.BookLabels.Count + 1, 3, ref missing, ref missing);
                    table.Borders.InsideLineStyle = Word.WdLineStyle.wdLineStyleSingle;
                    table.Borders.OutsideLineStyle = Word.WdLineStyle.wdLineStyleSingle;

                    table.Rows[1].Range.Font.Bold = 1;
                    table.Rows[1].Shading.BackgroundPatternColor = Word.WdColor.wdColorLightBlue;
                    table.Rows[1].Cells[1].Range.Text = "№";
                    table.Rows[1].Cells[2].Range.Text = "Название книги";
                    table.Rows[1].Cells[3].Range.Text = "Количество аренд";

                    for(int i = 2; i <= table.Rows.Count; i++)
                    {
                        for(int j = 1; j <= table.Columns.Count; j++)
                        {
                            switch(j)
                            {
                                case 1:
                                    table.Rows[i].Cells[j].Range.Text = (i - 1).ToString();
                                    break;
                                case 2:
                                    table.Rows[i].Cells[j].Range.Text = reportViewModel.BookLabels[i - 2];
                                    break;
                                case 3:
                                    table.Rows[i].Cells[j].Range.Text = reportViewModel.CountExtraditionValues[i - 2].ToString();
                                    break;
                            }
                        }
                    }

                    // Диаграмма
                    paragraph.Range.InsertParagraphAfter();
                    Word.InlineShape inlineShape = document.InlineShapes.AddChart2(-1, Microsoft.Office.Core.XlChartType.xlPie, paragraph.Range, ref missing);
                    dynamic chartWb = inlineShape.Chart.ChartData.Workbook;
                    dynamic workSheet = chartWb.Sheets["Лист1"];
                    dynamic dataTable = workSheet.ListObjects["Таблица1"];
                    dataTable.DataBodyRange.ClearContents();
                    workSheet.Range["B1"].Value2 = "Аренда книг";
                    for(int i = 0; i < reportViewModel.BookLabels.Count; i++)
                    {
                        workSheet.Range[$"A{i + 2}"].Value2 = reportViewModel.BookLabels[i];
                        workSheet.Range[$"B{i + 2}"].Value2 = reportViewModel.CountExtraditionValues[i].ToString();
                    }
                    dataTable.Range.Resize(reportViewModel.BookLabels.Count + 1, 2);

                    // Изображение
                    paragraph.Range.InsertParagraphAfter();
                    paragraph.Alignment = Word.WdParagraphAlignment.wdAlignParagraphLeft;
                    paragraph.Range.Text = $"Самая популярная книга: {reportViewModel.PopularPub.Title} " +
                    $"(количество аренд {reportViewModel.PopularPub.RentedPubs.Count})";
                    paragraph.Range.InsertParagraphAfter();
                    paragraph.Alignment = Word.WdParagraphAlignment.wdAlignParagraphCenter;
                    if(reportViewModel.PopularPub.ImagePath != null)
                    {
                        Word.InlineShape inlineShapeImage = document.InlineShapes
                        .AddPicture(System.IO.Path.GetFullPath(reportViewModel.PopularPub.ImagePath), missing, missing, paragraph.Range);
                        inlineShapeImage.Width = 150;
                        inlineShapeImage.Height = 150;
                    }

                    document.SaveAs2(savePath, missing, missing, missing, missing, missing, missing, missing,
                        missing, missing, missing, missing, missing, missing, missing, missing, missing);
                    document.Close(null, null, null);
                    wordApplication.Quit(null, null, null);
                    this.Dispatcher.Invoke(() =>
                    {
                        Services.ServiceContainer.Instance.GetService<Services.IDialogService>().ShowDialog("Отчет успешно сохранен", "Отчет");
                    });
                }
                catch (Exception ex)
                {
                    this.Dispatcher.Invoke(() =>
                    {
                        Services.ServiceContainer.Instance.GetService<Services.IDialogService>()
                        .ShowDialog(ex.Message, "Ошибка", Services.TypeDialog.ErrorType);
                    });
                    wordApplication.Quit(null, null, null);
                }
                this.Dispatcher.Invoke(() =>
                {
                    plug.Visibility = Visibility.Hidden;
                });
            }
            );
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.Filter = "Doc Files (*.doc)|*.doc";
            if(saveFileDialog.ShowDialog() == true)
            {
                WordExport(saveFileDialog.FileName, DataContext as ReportViewModel);
                plug.Visibility = Visibility.Visible;
            }
        }
    }
}
