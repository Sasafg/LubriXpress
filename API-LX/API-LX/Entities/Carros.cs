using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace API_LX.Entities
{
    public class Carros
    {
        public string placa { get; set; }
        public string marca { get; set; }
        public string modelo { get; set; }
        public string anio { get; set; }
        public string motor { get; set; }
        public string VIN { get; set; }
        public string comentario { get; set; }
        public DateTime fecha_creacion { get; set; }


    }
}