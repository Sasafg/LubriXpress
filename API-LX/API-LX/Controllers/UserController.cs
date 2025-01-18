using API_LX.Models;
using API_LX.Entities;
using KN_API.App_Start;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http; 

namespace API_LX.Controllers
{


    [Authorize]
    public class UserController : ApiController
    {
        UtilitiesModel util = new UtilitiesModel();
        TokenGenerator tokGenerator = new TokenGenerator();
        Emails email = new Emails();

        [HttpPost]
        [AllowAnonymous]
        [Route("api/Login")]
        public UserEnt Login(UserEnt ent)
        {
            try
            {
                using (var bd = new LubriXpressEntities())
                {
                    // Desencriptar la contraseña
                    var result = util.Decrypt(ent.contrasena);

                    // Llamada al procedimiento almacenado de login
                    var data = bd.Login(ent.cedula, result).FirstOrDefault();

                    if (data != null)
                    {
                        if (data.StatusId == 1)
                        {
                            // Construir el objeto de respuesta para el usuario
                            UserEnt res = new UserEnt();
                            res.id_usuario = data.id_usuario;
                            res.nombre = data.nombre;
                            res.StatusId = Convert.ToInt64(data.StatusId);  // Convertir a long si es necesario
                            res.id_rol = data.id_rol;
                            res.nombre_rol = data.nombre_rol;
                            res.Token = tokGenerator.GenerateTokenJwt(data.id_usuario);

                            return res;
                        }
                        return null;  // Si el estado no es 1 (activo)
                    }

                    return null;  // Si no se encuentra el usuario
                }
            }
            catch (Exception ex)
            {
                // Capturar la excepción y devolver null
                var exept = ex.Message;
                return null;
            }
        }



        [HttpGet]
        [Route("api/VerUsuarios")]
        [AllowAnonymous]
        public List<UserEnt> VerUsuarios()
        {
            try
            {
                using (var bd = new LubriXpressEntities())
                {
                    var data = bd.VerUsuarios().ToList();

                    if (data.Count > 0)
                    {
                        List<UserEnt> res = new List<UserEnt>();
                        foreach (var item in data)
                        {
                            res.Add(new UserEnt
                            {
                                id_usuario = item.id_usuario,
                                cedula = item.cedula,
                                nombre = item.nombre,
                                email = item.email,
                                fecha_nacimiento = item.fecha_nacimiento,
                                nombre_rol = item.nombre_rol,
                                fecha_creacion = (DateTime)item.fecha_creacion
                            });

                        }
                        return res;

                    }
                    return new List<UserEnt>();
                }
            }
            catch (Exception ex)
            {
                var exept = ex.Message;

                return new List<UserEnt>();
            }

        }


    }
}
