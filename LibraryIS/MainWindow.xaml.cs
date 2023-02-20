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
namespace LibraryIS
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window, IGettingPassword
    {
        public string GetPassword() => _passwordBox.Password;
        public MainWindow()
        {
            InitializeComponent();
            (DataContext as AuthorizationViewModel).GettingPassword = this;
        }

        private void Button_Click2(object sender, RoutedEventArgs e)
        {
            List<Librarian> librarians = DataBase.GetEntities().Librarian.ToList();
            MessageBox.Show($"{librarians.Count}");
            /*if ((DataContext as AuthorizationViewModel).LogIn())
            {
                MessageBox.Show($"Добро пожаловать,{AuthorizationViewModel.Account.Name}");
                Window1 w1 = new Window1();
                w1.Owner = this;
                w1.Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("Неверный логин или пароль!");
            }*/

        }
    }
}
