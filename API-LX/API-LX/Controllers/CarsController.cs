using API_LX.Models;
using API_LX.Entities; 
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Net;
using System.Net.Http;
using System.Runtime.InteropServices.ComTypes;
using System.Web.Http; 


namespace API_LX.Controllers
{
    [Authorize]
    public class PaymentsController : ApiController
    {
        [HttpGet]
        [Route("api/VerCarros")]

        public List<Carros> VerCarros()
        {
            try
            {
                using (var bd = new LubriXpressEntities())
                {
                    var data = bd.VerCaros().ToList();
                    if (data.Count > 0)
                    {
                        List<Carros> res = new List<Carros>();
                        foreach (var item in data)
                        {
                            res.Add(new Carros
                            {
                                placa = item.placa,
                                marca = item.marca,
                                modelo = item.modelo,
                                anio = item.anio,
                                motor = item.motor,
                                VIN = item.VIN,
                                comentario = item.comentario,
                                fecha_creacion = (DateTime)item.fecha_creacion,
                                


                            });
                        }
                        return res;
                    }
                    return new List<Carros>();
                }
            }
            catch (Exception ex)
            {
                var exept = ex.Message;
                return new List<Carros>();
            }
        }




        [HttpPost]
        [Route("api/CrearCarros")]
        public int CrearCarros(Carros ent)
        {
            try
            {
                using (var bd = new LubriXpressEntities())
                {
                    var resp = bd.Crearcarro(ent.placa,
                                       ent.marca,
                                       ent.modelo,
                                       ent.anio,
                                       ent.motor,
                                       ent.VIN,
                                       ent.comentario,
                                       ent.fecha_creacion
                                       );
                    return resp;
                }
            }
            catch (Exception ex)
            {
                var message = ex.Message;
                return -1;
            }
        }





        [HttpPut]
        [Route("api/EditarCarro")]
        [AllowAnonymous]
        public int EditarCarro(Carros ent)
        {
            try
            {
                using (var bd = new LubriXpressEntities())
                {
                    bd.EditCar(
                                        ent.placa,
                                        ent.marca,
                                        ent.modelo,
                                        ent.anio,
                                        ent.motor,
                                        ent.VIN, 
                                        ent.comentario);
                    return 1;


               }
            }

            catch (Exception ex)
            {
                var exept = ex.Message;

                return 0;
            }
        }








        [HttpDelete]
        [Route("api/EliminarCarro")]
        public int EliminarCarro(string i)
        {
            try
            {
                using (var bd = new LubriXpressEntities())
                {
                    var data = (from cc in bd.Carros
                                where cc.placa == i
                                select cc).FirstOrDefault();

                    if (data != null)
                    {
                        return bd.EliminarCarro(i);

                    }

                    return 1;
                }

            }
            catch (Exception ex)

            {
                var message = ex.Message;
                return 0;
            }
        }


         


    }



}