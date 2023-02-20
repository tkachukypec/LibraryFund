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
namespace LibraryIS.Pages.MainWindowsPages
{
    /// <summary>
    /// Логика взаимодействия для Page1.xaml
    /// </summary>
    public partial class Page1 : Page
    {
        public Page1()
        {
            InitializeComponent();
        }

        private void SearchTextBox_TextChanged(object sender, TextChangedEventArgs e) => (DataContext as CatalogPubsViewModel).UpdateBookList();


        private void Filter_Checked(object sender, RoutedEventArgs e) => (DataContext as CatalogPubsViewModel).UpdateBookList();

        private void Filter_UnChecked(object sender, RoutedEventArgs e)
        {
            if((DataContext as CatalogPubsViewModel).ResetFilterActive == true)
            {
                (DataContext as CatalogPubsViewModel).UpdateBookList();
            }
        }

        private void ResetFilterButton_Click(object sender, RoutedEventArgs e) => (DataContext as CatalogPubsViewModel).ResetFilters();

        private void SortComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e) => (DataContext as CatalogPubsViewModel)?.UpdateBookList();

        private void Button_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
