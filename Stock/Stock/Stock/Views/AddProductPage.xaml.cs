using Xamarin.Forms;
using Firebase.Database;
using Firebase.Database.Query;
using System;
using System.Linq;
using System.Threading.Tasks;
using Stock.Models;
using System.Collections.Generic;
using Xamarin.Forms.Xaml;
using ZXing.Net.Mobile.Forms;

namespace Stock.Views
{
    public partial class AddProductPage : ContentPage
    {
        private readonly FirebaseClient firebase = new FirebaseClient(
            "https://stock-atc-12fac-default-rtdb.firebaseio.com/"
        );

        public AddProductPage()
        {
            InitializeComponent();
            this.Title = "Agregar Producto";
        }

        // Método para manejar el botón de búsqueda
        private async void OnScanAndSearchProductClicked(object sender, EventArgs e)
        {
            // Crear el escáner y mostrar la cámara
            var scanPage = new ZXingScannerPage();
            scanPage.OnScanResult += (result) =>
            {
                // Detiene el escaneo
                scanPage.IsScanning = false;

                // Vuelve a la página anterior con el resultado
                Device.BeginInvokeOnMainThread(async () =>
                {
                    await Navigation.PopAsync();

                    // Usa el valor escaneado en la búsqueda
                    string scannedCode = result.Text.Trim();
                    Console.WriteLine(scannedCode);

                    // Llama a los métodos de búsqueda según el tipo
                    Laptop laptop = await SearchLaptop("Laptops", scannedCode);
                    Periferico periferico = await SearchPeriferico("Perifericos", scannedCode);
                    Console.WriteLine(laptop);
                    Console.WriteLine(periferico);

                    if (laptop != null)
                    {
                        DisplayProductDetails(laptop);
                    }
                    else if (periferico != null)
                    {
                        DisplayProductDetails(periferico);
                    }
                    else
                    {
                        await DisplayAlert("Producto no encontrado", "No se encontró ningún producto con ese código", "OK");
                    }
                });
            };
            // Navegar a la página de escaneo
            await Navigation.PushAsync(scanPage);
        }

        // Buscar producto de tipo Laptop
        private async Task<Laptop> SearchLaptop(string collectionName, string serialNumber)
        {
            var items = await firebase
                .Child(collectionName)
                .OnceAsync<Laptop>();

            return items
                .Select(item => item.Object)
                .FirstOrDefault(product => product.SerialNumber == serialNumber);
        }

        // Buscar producto de tipo Periferico
        private async Task<Periferico> SearchPeriferico(string collectionName, string serialNumber)
        {
            var items = await firebase
                .Child(collectionName)
                .OnceAsync<Periferico>();

            return items
                .Select(item => item.Object)
                .FirstOrDefault(product => product.Barcode == serialNumber);
        }

        // Método para mostrar detalles del producto
        private void DisplayProductDetails(object product)
        {
            ProductFields.IsVisible = true;
            SaveProductButton.IsVisible = true;

            if (product is Laptop laptop)
            {
                SerialNumberResult.Text = laptop.SerialNumber;
                TipoResult.Text = "Laptop";
                MarcaResult.Text = laptop.Marca;
                ModeloResult.Text = laptop.Modelo;
                PrecioResult.Text = laptop.Precio.ToString();
                FacturaResult.Text = laptop.Factura;
            }
            else if (product is Periferico periferico)
            {
                SerialNumberResult.Text = periferico.Barcode;
                TipoResult.Text = "Periferico";
                MarcaResult.Text = periferico.Marca;
                ModeloResult.Text = periferico.Modelo;
                PrecioResult.Text = periferico.Precio.ToString();
                FacturaResult.Text = periferico.Factura;
            }
        }

        // Método para guardar el producto en Stock
        private async void OnSaveProductClicked(object sender, EventArgs e)
        {
            var newStockItem = new
            {
                SerialNumber = SerialNumberResult.Text,
                Marca = MarcaResult.Text,
                Modelo = ModeloResult.Text,
                Factura = FacturaResult.Text,
                Precio = Convert.ToDecimal(PrecioResult.Text),
                Tipo = TipoResult.IsVisible ? TipoResult.Text : "Laptop",
                FechaIngreso = DateTime.Now.ToString("yyyy-MM-dd"),
                NumeroEmpleado = App.CurrentEmployeeNumber
            };

            await firebase
                .Child("Stock")
                .PostAsync(newStockItem);

            await DisplayAlert("Producto Guardado", "El producto ha sido guardado en el stock.", "OK");

            // Actualizar la lista de inventario inmediatamente después de guardar
            var inventoryPage = Navigation.NavigationStack.OfType<InventoryPage>().FirstOrDefault();
            if (inventoryPage != null)
            {
                await inventoryPage.LoadInventory();
            }

            ProductFields.IsVisible = false;
            SaveProductButton.IsVisible = false;
            //SerialNumberEntry.Text = string.Empty;
            await Navigation.PopAsync();
        }
    }
}