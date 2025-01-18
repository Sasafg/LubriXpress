using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace API_LX.Entities
{
    public class Servicios
    {
        public long id_servicio { get; set; }
        public string nombre_servicio { get; set; }
        public string descripcion { get; set; }
        public string duracion { get; set; }
        public string imagen_servicio { get; set; }
        public DateTime fecha_creacion { get; set; }

    }
}