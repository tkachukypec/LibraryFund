using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using LibraryIS.ViewModels;

namespace LibraryIS.ViewModels
{
    class AuthorizationViewModel : ViewModelBase
    {
        public static Librarian Account { get; private set; }
        public string Login { get; set; }
        public AuthorizationViewModel()
        {
            Title = "Авторизация";
        }
        public IGettingPassword GettingPassword { private get; set; }
        private string Password
        {
            get => GettingPassword.GetPassword();
        }
        public bool LogIn()
        {
            try
            {
                MessageBox.Show($"{DataBase.GetEntities().Librarian}");
                //Account = DataBase.GetEntities().Librarian.FirstOrDefault(p => p.Login == Login && p.Password == Password);
            }
            catch(Exception)
            {

            }
            return Account != null;
        }
    }
}
