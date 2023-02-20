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
using System.Windows.Shapes;
using LibraryIS.ViewModels;
using System.IO;

namespace LibraryIS
{
    /// <summary>
    /// Логика взаимодействия для AddPublicationWindow.xaml
    /// </summary>
    public partial class AddPublicationWindow : Window
    {
        public AddPublicationWindow()
        {
            InitializeComponent();
        }

        /*private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            TextBox tB = sender as TextBox;
            foreach(Author a in lB.Items)
            {
                if ($"{a.Name}".Contains(tB.Text))
                    ((ListBoxItem)lB.ItemContainerGenerator.ContainerFromItem(a)).Visibility = Visibility.Visible;
                else
                    ((ListBoxItem)lB.ItemContainerGenerator.ContainerFromItem(a)).Visibility = Visibility.Hidden;
            }
        }*/

        /*private void ListBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (DataContext is AddEditBookViewModel)
            {
                Book book = (DataContext as AddEditBookViewModel).Publication.Book;
                if (book != null)
                {
                    (DataContext as AddEditBookViewModel).Publication.Book.Author = (sender as ListBox).SelectedItems.OfType<Author>().ToList();
                }
            }
            
        }*/

        private void Window_DataContextChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (DataContext is AddEditBookViewModel)
            {
                /*Book book = (DataContext as AddEditBookViewModel).Publication.Book;
                if(book != null)
                {
                    foreach (Author a in (DataContext as AddEditBookViewModel).Publication.Book.Author)
                    {
                        lB.SelectedItems.Add(a);
                    }

                }*/
                (DataContext as AddEditBookViewModel).CommandExecuted += AddEditBookWindow_CommandExecuted;
            }
        }


        private void AddEditBookWindow_CommandExecuted(object obj, CommandExecutedEventArgs commandExecuted)
        {
            if (commandExecuted.CommandExecutedResult == CommandExecutedResult.Ok)
                Close();
            else
                Services.ServiceContainer.Instance.GetService<Services.IDialogService>()
                    .ShowDialog(commandExecuted.ErrorMessage, "Ошибка выполнения", Services.TypeDialog.ErrorType);
        }
    }
}
