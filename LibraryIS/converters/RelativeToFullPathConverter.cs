using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;
using System.IO;
using System.Windows.Media.Imaging;

namespace LibraryIS.converters
{
    class RelativeToFullPathConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            string path = value as string;
            if (String.IsNullOrWhiteSpace(path))
                return "pack://application:,,,/resources/images/noImage.png";
            
            try
            {
                if(!File.Exists(path))
                {
                    return "pack://application:,,,/resources/images/noImage.png";
                }
                else
                {
                    using (var fs = new FileStream(path, FileMode.Open, FileAccess.Read))
                        return BitmapFrame.Create(fs, BitmapCreateOptions.None, BitmapCacheOption.OnLoad);
                }
            }
            catch
            {
                return "pack://application:,,,/resources/images/noImage.png";
            }
        }
        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
