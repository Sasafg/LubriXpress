using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace API_LX.Entities
{
    public class UserEnt
    {
        public int id_usuario { get; set; }
        public string cedula { get; set; }
        public string fecha_nacimiento { get; set; }
        public string nombre { get; set; }
        public string email { get; set; }
        public string Email { get; set; }
        public string contrasena { get; set; }
        public int id_rol { get; set; }
        public string nombre_rol { get; set; }
        public DateTime fecha_creacion { get; set; }
        public long StatusId { get; set; }
        public DateTime lastactivity { get; set; }
        public string Token { get; set; }
       
}
}