using System;
using System.Collections.Generic;
using System.Text;


namespace Stock.Models
{
    public class StockItem
    {
        public string SerialNumber { get; set; }
        public string Marca { get; set; }
        public string Modelo { get; set; }
        public string Factura { get; set; }
        public decimal Precio { get; set; }
        public string Tipo { get; set; }
        public string FechaIngreso { get; set; }
        public string NumeroEmpleado { get;set; }
    }
}

