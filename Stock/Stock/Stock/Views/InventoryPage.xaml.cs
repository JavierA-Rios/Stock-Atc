using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Firebase.Database;
using Firebase.Database.Query;
using Stock.Models;

namespace Stock.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class InventoryPage : ContentPage
    {
        private readonly FirebaseClient firebase = new FirebaseClient(
            "https://stock-atc-12fac-default-rtdb.firebaseio.com/"
        );

        public InventoryPage()
        {
            this.Title = "Stock ATC";
            InitializeComponent();
            LoadInventory(); // Ignora el Warning
            ToolbarItems.Add(new ToolbarItem
            {
                Text = "Logout",
                Command = new Command(async () => await OnLogoutClicked())
            });
        }

        private async Task OnLogoutClicked()
        {
            // Restablecer la variable global CurrentEmployeeNumber
            App.CurrentEmployeeNumber = 0000;

            // Redirigir a la pantalla de login
            await Navigation.PushAsync(new LoginPage());

            // limpia la pila de navegación para que el usuario no pueda volver a InventoryPage
            Navigation.RemovePage(this);
        }

        public async Task LoadInventory()
        {
            try
            {
                var stockItems = await firebase
                    .Child("Stock")
                    .OnceAsync<StockItem>();

                var filteredItems = App.CurrentEmployeeNumber == 1001
                    ? stockItems
                    : stockItems.Where(item => item.Object.NumeroEmpleado == App.CurrentEmployeeNumber.ToString()).ToList();

                // Mostrar u ocultar el mensaje de "Aún no se ha agregado ningún producto"
                EmptyInventoryLabel.IsVisible = !filteredItems.Any();

                // Configura los elementos en el ListView
                var groupedInventory = filteredItems
                    .GroupBy(item => item.Object.SerialNumber)
                    .Select(group => new
                    {
                        SerialNumber = group.Key,
                        Count = group.Count(),
                        FirstItem = group.Last().Object
                    })
                    .ToList();

                InventoryListView.ItemsSource = groupedInventory;
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", $"Ocurrió un error: {ex.Message}", "OK");
            }
        }

        private async void OnItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem != null)
            {
                // Aquí puedes manejar la lógica de un artículo de inventario
                var selectedItem = e.SelectedItem;
                await DisplayAlert("Seleccionado", selectedItem.ToString(), "OK");
            }
        }

        private async void OnDeleteItemClicked(object sender, EventArgs e)
        {
            try
            {
                var button = sender as Button;
                var serialNumber = button?.CommandParameter as string;

                if (serialNumber != null)
                {
                    var stockItems = await firebase
                        .Child("Stock")
                        .OnceAsync<StockItem>();

                    // Buscar el primer elemento que coincida con el SerialNumber
                    var itemToDelete = stockItems.FirstOrDefault(item => item.Object.SerialNumber == serialNumber);

                    if (itemToDelete != null)
                    {
                        // Eliminar el registro de Firebase
                        await firebase
                            .Child("Stock")
                            .Child(itemToDelete.Key)
                            .DeleteAsync();

                        await DisplayAlert("Eliminado", "Se Eliminó un Artículo del inventario.", "OK");

                        // Recargar el inventario
                        await LoadInventory();
                    }
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", $"Ocurrió un error: {ex.Message}", "OK");
            }
        }

        // Acción para ir a AddProductPage al hacer clic en el botón flotante
        private async void OnAddProductClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new AddProductPage());
        }
    }
}