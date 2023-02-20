using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace LibraryIS.ViewModels
{
    class ReportViewModel : ViewModelBase
    {
        public Publication PopularPub { get; set; }
        public List<string> BookLabels { get; set; }
        public List<double> CountExtraditionValues { get; set; }
        public List<double> RelativeFrequencies { get; set; }
        public List<double> AccumulatedRelativeFrequencies { get; set; }
        public ReportViewModel()
        {
            Title = "Отчет по аренде книг";
            List<Publication> pubs = DataBase.GetEntities().Publication.ToList();
            BookLabels = pubs.Select(p => p.Title).ToList();
            CountExtraditionValues = new List<double>();
            int iCount = 0;
            pubs.ForEach(p =>
            {
                CountExtraditionValues.Add(DataBase.GetEntities().RentedPubs.Where(e => e.PublicationId == p.Id).Count());
                iCount++;
            });
            MessageBox.Show($"pubs = {pubs.Count} labels = {BookLabels.Count}, C = {iCount}");

            RelativeFrequencies = CountExtraditionValues.Select(p => p / CountExtraditionValues.Sum()).ToList();
            AccumulatedRelativeFrequencies = new List<double>();
            AccumulatedRelativeFrequencies.Add(RelativeFrequencies[0]);
            for(int i = 1; i < RelativeFrequencies.Count; i++)
            {
                AccumulatedRelativeFrequencies.Add(AccumulatedRelativeFrequencies[i - 1] + RelativeFrequencies[i]);
            }
            PopularPub = pubs.FirstOrDefault(p => p.RentedPubs.Count() == CountExtraditionValues.Max());
        }
    }
}
