using Stock.Views;
using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Stock
{
    public partial class App : Application
    {
        public static int CurrentEmployeeNumber { get; set; }

        public App()
        {
            InitializeComponent();
            MainPage = new NavigationPage(new LoginPage());
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
