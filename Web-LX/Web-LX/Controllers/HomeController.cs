
using Web_LX.Entities;
using Web_LX.Models;
using System;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace Web_LX.Controllers
{
    public class HomeController : Controller
    {
        UserModel model = new UserModel();



        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Servicios()
        {
            return View();
        }

        public ActionResult SolicitarCita()
        {
            return View();
        }



        [HttpGet]
        public ActionResult Login()
        {
            Session.Clear();
            FormsAuthentication.SignOut();
            Response.Cookies[FormsAuthentication.FormsCookieName].Expires = DateTime.Now.AddYears(-1);
            Response.Cookies.Remove(FormsAuthentication.FormsCookieName);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            return View();
        }


        [HttpPost]
        public ActionResult Login(UserEnt ent)
        {
            try
            {
                // Validar si cédula o contraseña son nulos o vacíos
                if (string.IsNullOrEmpty(ent.cedula) || string.IsNullOrEmpty(ent.contrasena))
                {
                    ViewBag.Msj = "La cédula y la contraseña son obligatorias.";
                    return View("Login", ent);
                }

                // Encriptar la contraseña antes de enviar la solicitud
                ent.contrasena = model.Encrypt(ent.contrasena);
                var resp = model.Login(ent);

                if (resp != null)
                {
                    // Guardar la información del usuario en sesión
                    Session["MensajePositivo"] = 0;
                    Session["cedula"] = resp.cedula?.ToString();  // Asegurarse de que cedula esté configurada
                    Session["RolUsuario"] = resp.id_rol;
                    Session["Usuario"] = resp.nombre;
                    Session["NameRole"] = resp.nombre_rol;
                    Session["TokenUser"] = resp.Token;

                    // Autenticar al usuario
                    FormsAuthentication.SetAuthCookie(resp.cedula, false);

                    return RedirectToAction("Index", "Admin");
                }
                else
                {
                    ViewBag.Msj = "Usuario o Contraseña incorrecto.";
                    return View("Login", ent);
                }
            }
            catch (Exception ex)
            {
                TempData["ErrorMessage"] = $"Error en el proceso de login: {ex.Message}";
                return View("Login", ent);
            }
        }


        [HttpGet]
        [Authorize]
        public ActionResult SingOut()
        {
            Session.Clear();
            FormsAuthentication.SignOut();
            Response.Cookies[FormsAuthentication.FormsCookieName].Expires = DateTime.Now.AddYears(-1);
            Response.Cookies.Remove(FormsAuthentication.FormsCookieName);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            return RedirectToAction("Login", "Home");
        }
 
    }
}