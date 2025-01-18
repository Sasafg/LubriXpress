using System;

namespace Web_LX.Entities
{
    public class Resenas
    {
        public int id_resena { get; set; }
        public string nombre_cliente { get; set; }
        public string apellidos_cliente { get; set; }
        public string telefono_cliente { get; set; }
        public string email_cliente { get; set; }
        public int calificacion { get; set; }
        public string comentario { get; set; }
        public DateTime fecha_creacion { get; set; }

    }
}