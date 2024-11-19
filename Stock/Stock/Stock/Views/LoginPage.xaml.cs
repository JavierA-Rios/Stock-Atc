using Firebase.Database;
using Firebase.Database.Query;
using Stock.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Stock.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LoginPage : ContentPage
    {
        public LoginPage()
        {
            InitializeComponent();
            NavigationPage.SetHasNavigationBar(this, false);
        }

        // Método para el botón de login
        private async void OnLoginClicked(object sender, EventArgs e)
        {
            try 
            {
                string password = PasswordEntry.Text;

                if (string.IsNullOrEmpty(NumeroEmpleadoEntry.Text) || string.IsNullOrEmpty(PasswordEntry.Text))
                {
                    await DisplayAlert("Error", "Por favor ingrese su número de empleado y contraseña.", "OK");
                    return;
                }

                // Convertir NumeroEmpleado a número
                if (!int.TryParse(NumeroEmpleadoEntry.Text, out int numeroEmpleado))
                {
                    await DisplayAlert("Error", "El Número de Empleado debe ser un número válido.", "OK");
                    return;
                }

                // Consulta en Firebase si existe un usuario con el mismo NumeroEmpleado y Password
                var firebase = new FirebaseClient("https://stock-atc-12fac-default-rtdb.firebaseio.com/");

                var usuarios = await firebase
                    .Child("Usuarios")
                    .OnceAsync<User>();

                var usuarioValido = usuarios.FirstOrDefault(u => u.Object.NumeroEmpleado == numeroEmpleado && u.Object.Password == password);

                if (usuarioValido != null)
                {
                    // Si el usuario es válido, se guarda el numero de empleado en la variable global
                    App.CurrentEmployeeNumber = numeroEmpleado;

                    // Redirige a la pantalla de inventario
                    var inicio = new InventoryPage();
                    Navigation.InsertPageBefore(inicio, this);
                    await Navigation.PopAsync();
                }
                else
                {
                    // Si no se encuentra un usuario con los datos proporcionados, mostramos un mensaje
                    await DisplayAlert("Error", "Empleado no registrado o datos incorrectos.", "OK");
                }
            } catch (Exception ex)
            {
                {
                    await DisplayAlert("Error", $"Ocurrió un error: {ex.Message}", "OK");
                }
            };
        }

        // Método para navegar a la pantalla de registro
        private async void OnGoToRegisterClicked(object sender, EventArgs e)
        {
            var registro = new RegisterPage();
            Navigation.InsertPageBefore(registro, this);
            await Navigation.PopAsync();
        }
    }
}