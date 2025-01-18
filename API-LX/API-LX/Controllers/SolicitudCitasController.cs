using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using API_LX.Models;
using API_LX.Entities; 

namespace API_LX.Controllers
{
    public class SolicitudCitasController : Controller
    {
        // GET: SolicitudCitas
        public ActionResult Index()
        {
            return View();
        }


        [HttpGet]
        [Route("api/RequestPreCita")]
        public List<Citas> RequestPreCita()
        {
            using (var bd = new LubriXpressEntities())
            {
                var data = bd.VerCitas().ToList();
                List<Citas> res = new List<Citas>();
                if (data.Count > 0)
                {

                    foreach (var item in data)
                    {
                        res.Add(new API_LX.Entities.Citas
                        {
                            id_cita = (int)item.id_cita, 
                            nombre_cliente = item.nombre_cliente,
                            apellidos_cliente = item.apellidos_cliente,
                            telefono_cliente = item.telefono_cliente,
                            email_cliente =  item.email_cliente,
                            direccion =  item.direccion,
                            nombre_servicio = item.servicio_solicitado,
                            fecha_estimada = item.fecha_estimada,
                            marca_vehiculo = item.marca_vehiculo,
                            modelo_vehiculo = item.modelo_vehiculo,
                            placa_vehiculo = item.placa_vehiculo,
                            estado_cita = item.estado_cita,
                            fecha_creacion = item.fecha_creacion
                        });
                    }

                    return res;
                }

                return res;
            }
        }

    }
}