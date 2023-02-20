using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibraryIS
{
    class DataBase
    {
        private static Entities _context;
        public static Entities GetEntities()
        {
            CreateContext();

            return _context;
        }
        private static void CreateContext()
        {
            if (_context == null)
                _context = new Entities();
        }
        public static void SaveChanges()
        {
            CreateContext();
            _context.SaveChanges();
            _context.ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
        }
    }
}
