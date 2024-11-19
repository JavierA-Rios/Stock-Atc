using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Firebase.Database;
using Firebase.Database.Query;
using Stock.Models;

namespace Stock.Services
{
    public class ProductService
    {
        private FirebaseClient firebaseClient;

        public ProductService()
        {
            firebaseClient = new FirebaseClient("https://stock-atc-12fac-default-rtdb.firebaseio.com/");
        }

        public async Task AddLaptopAsync(Laptop laptop)
        {
            await firebaseClient
                .Child("Laptops")
                .PostAsync(laptop);
        }

        public async Task AddPerifericoAsync(Periferico periferico)
        {
            await firebaseClient
                .Child("Perifericos")
                .PostAsync(periferico);
        }
    }
}
