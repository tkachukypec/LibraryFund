using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;
using LiveCharts;
using LiveCharts.Wpf;

namespace LibraryIS.converters
{
    class PieSeriesConverter : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            List<string> labels = values[0] as List<string>;
            List<double> chartValues = values[1] as List<double>;
            if (labels == null || chartValues == null)
                return null;
            SeriesCollection series = new SeriesCollection();
            for (int i = 0; i < chartValues.Count; i++)
            {
                series.Add(new PieSeries { Title = labels[i], Values = new ChartValues<double> { chartValues[i] } });
            }
            return series;
        }
        public object[] ConvertBack(object value, Type[] targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
