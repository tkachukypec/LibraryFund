using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibraryIS.Services
{
    class ServiceContainer
    {
        public readonly static ServiceContainer Instance = new ServiceContainer();
        private Dictionary<Type, object> _serviceDictionary;
        private ServiceContainer()
        {
            _serviceDictionary = new Dictionary<Type, object>();
        }
        public void AddService<T>(T implementation) where T:class
        {
            _serviceDictionary[typeof(T)] = implementation;
        }
        public T GetService<T>() where T:class
        {
            object value;
            _serviceDictionary.TryGetValue(typeof(T), out value);
            return value as T;
        }
    }
}
