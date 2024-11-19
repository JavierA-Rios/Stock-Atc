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
    public partial class RegisterPage : ContentPage
    {
        private readonly FirebaseClient firebase = new FirebaseClient("https://stock-atc-12fac-default-rtdb.firebaseio.com/");

        public RegisterPage()
        {
            InitializeComponent();
            this.Title = "Registro de Usuarios";
        }

        private async void OnRegisterClicked(object sender, EventArgs e)
        {
            try
            {
                // Validación de campos
                if (string.IsNullOrWhiteSpace(NumeroEmpleadoEntry.Text) ||
                    string.IsNullOrWhiteSpace(EmpresaEntry.Text) ||
                    string.IsNullOrWhiteSpace(PrimerNombreEntry.Text) ||
                    string.IsNullOrWhiteSpace(PrimerApellidoEntry.Text) ||
                    string.IsNullOrWhiteSpace(PasswordEntry.Text))
                {
                    await DisplayAlert("Error", "Por favor, complete todos los campos.", "OK");
                    return;
                }

                // Convertir NumeroEmpleado a número
                if (!int.TryParse(NumeroEmpleadoEntry.Text, out int numeroEmpleado))
                {
                    await DisplayAlert("Error", "El Número de Empleado debe ser un número válido.", "OK");
                    return;
                }

                // Verificar si el usuario ya existe en la base de datos
                var usuariosExistentes = await firebase
                    .Child("Usuarios")
                    .OnceAsync<User>();

                var usuarioExistente = usuariosExistentes
                    .FirstOrDefault(u => u.Object.NumeroEmpleado == numeroEmpleado);

                if (usuarioExistente != null)
                {
                    await DisplayAlert("Error", "El usuario ya está registrado.", "OK");
                    return;
                }

                // Crear el nuevo usuario
                var nuevoUsuario = new User
                {
                    NumeroEmpleado = numeroEmpleado,
                    Empresa = EmpresaEntry.Text,
                    PrimerNombre = PrimerNombreEntry.Text,
                    PrimerApellido = PrimerApellidoEntry.Text,
                    Password = PasswordEntry.Text
                };

                // Guardar el nuevo usuario en Firebase
                await firebase
                    .Child("Usuarios")
                    .PostAsync(nuevoUsuario);

                // Confirmación de registro
                await DisplayAlert("Registro", "Usuario registrado con éxito", "OK");
                //await Navigation.PushAsync(new InventoryPage());
                var inicioPage = new InventoryPage();
                Navigation.InsertPageBefore(inicioPage, this);
                await Navigation.PopAsync();

            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", $"Ocurrió un error: {ex.Message}", "OK");
            }
        }

        // Método para navegar a la pantalla de login
        private async void OnGoToLoginClicked(object sender, EventArgs e)
        {
            var login = new LoginPage();
            Navigation.InsertPageBefore(login, this);
            await Navigation.PopAsync();
        }
    }
}