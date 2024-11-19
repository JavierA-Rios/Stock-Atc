using System;
using System.Collections.Generic;
using System.Text;

namespace Stock.Models
{
    public class User
    {
        public int NumeroEmpleado { get; set; }
        public string Empresa { get; set; }
        public string PrimerNombre { get; set; }
        public string PrimerApellido { get; set; }
        public string Password { get; set; }
    }
}
