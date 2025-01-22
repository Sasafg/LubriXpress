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
                if (ent == null || string.IsNullOrEmpty(ent.cedula) || string.IsNullOrEmpty(ent.contrasena))
                {
                    throw new ArgumentException("Datos de entrada no válidos.");
                }

                using (var bd = new LubriXpressEntities())
                {
                    // Desencriptar la contraseña
                    var result = util.Decrypt(ent.contrasena);
                    if (string.IsNullOrEmpty(result))
                    {
                        throw new Exception("Error al desencriptar la contraseña.");
                    }

                    // Llamada al procedimiento almacenado de login
                    var data = bd.Login(ent.cedula, result).FirstOrDefault();
                    if (data == null)
                    {
                        return null;  // Usuario no encontrado
                    }

                    if (data.StatusId != 1)
                    {
                        return null;  // Usuario no activo
                    }

                    // Construir el objeto de respuesta
                    var res = new UserEnt
                    {
                        id_usuario = data.id_usuario,
                        nombre = data.nombre,
                        StatusId = data.StatusId ?? 0,
                        id_rol = data.id_rol,
                        nombre_rol = data.nombre_rol ?? string.Empty,
                        Token = tokGenerator.GenerateTokenJwt(data.id_usuario)
                    };

                    return res;
                }
            }
            catch (Exception ex)
            {
                // Manejo de excepciones
                Console.WriteLine($"Error en Login: {ex.Message}");
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
