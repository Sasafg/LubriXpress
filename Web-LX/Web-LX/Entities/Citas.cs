using System;

namespace Web_LX.Entities
{
    public class Citas
    {
        public long id_cita { get; set; }
        public int id_servicio { get; set; }
        public string nombre_cliente { get; set; }
        public string apellidos_cliente { get; set; }
        public string telefono_cliente { get; set; }
        public string email_cliente { get; set; }
        public string direccion { get; set; }
        public string nombre_servicio { get; set; }
        public string fecha_estimada { get; set; }
        public string marca_vehiculo { get; set; }
        public string modelo_vehiculo { get; set; }
        public string placa_vehiculo { get; set; }
        public string anio_vehiculo { get; set; }
        public string estado_cita { get; set; }
        public string fecha_creacion { get; set; }
        public Decimal Amount { get; set; }
    }
}