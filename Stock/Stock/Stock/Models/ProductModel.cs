using System;
using System.Collections.Generic;
using System.Text;

namespace Stock.Models
{
    public class Laptop
    {
        public int IDProducto { get; set; }
        public string SerialNumber { get; set; }
        public string Marca { get; set; }
        public string Modelo { get; set; }
        public string Factura { get; set; }
        public decimal Precio { get; set; }
        public string Tipo { get; set; }
    }

    public class Periferico
    {
        public int IDProducto { get; set; }
        public string Barcode { get; set; }
        public string Marca { get; set; }
        public string Modelo { get; set; }
        public string Factura { get; set; }
        public decimal Precio { get; set; }
        public string Tipo { get; set; }
    }

}
