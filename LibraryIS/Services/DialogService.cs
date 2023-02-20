using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LibraryIS.Services;
using LibraryIS.View;

namespace LibraryIS.Services
{
    class DialogService : IDialogService
    {
        public DialogResult ShowDialog(string message, string caption = "Диалоговое окно", TypeDialog type = TypeDialog.InfoType)
        {
            Dialog dialog = new Dialog(message, caption, type);
            bool? result = dialog.ShowDialog();
            if (result == null)
            {
                return DialogResult.Ok;
            }
            else if (result == true)
            {
                return DialogResult.Yes;
            }
            else
            {
                return DialogResult.No;
            }
        }

    }
}
