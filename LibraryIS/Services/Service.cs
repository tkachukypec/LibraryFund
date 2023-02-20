using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibraryIS.Services
{
    public enum TypeDialog
    {
        InfoType,
        ErrorType,
        ConfirmationType
    }
    public enum DialogResult
    {
        Ok,
        Yes,
        No
    }
    interface IDialogService
    {
        DialogResult ShowDialog(string message, string caption = "Диалоговое окно", TypeDialog type = TypeDialog.InfoType);
    }
    class Service
    {
    }


}
