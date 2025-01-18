using Web_LX.Entities;
using Web_LX.Models;
using System.Web.Mvc;
using System.Collections.Generic;
using System.Linq;
using System.Web; 
using QRCoder;
using System.Drawing;
using System.Web.Security;
using System.Globalization;

namespace Web_LX.Controllers
{
    [Authorize]
    public class UserController : Controller
    {
        UserModel model = new UserModel();
        RolModel modelRole = new RolModel();
        StateModel modeState = new StateModel();


        public ActionResult Index()
        {
            return View( );
        }



        public ActionResult VerUsuarios()
        {
            var data = model.VerUsuarios();


            foreach (var item in data)
            {
                var Status = modeState.RequestStatusScrollDown();
                var rol = modelRole.RequestRolesScrollDown();
                foreach (var item2 in Status)
                {
                    if (item.StatusId == item2.StatusId)
                    {
                        item.Name = item2.Name;
                    }
                }
                foreach (var item2 in rol)
                {
                    if (item.id_rol == item2.id_rol)
                    {
                        item.nombre_rol = item2.nombre_rol;
                    }
                }
            }
            data = data.OrderByDescending(x => x.lastactivity).ToList();


            if (TempData.ContainsKey("RespuestaPositivaCrearUsuario") == true)
            {
                ViewBag.MsjPantallaPostivo = "Usuario creado con exito.";
                TempData.Remove("RespuestaPositivaCrearUsuario");
            }
            if (TempData.ContainsKey("RespuestaNegativaCrearUsuario") == true)
            {
                ViewBag.MsjPantallaNegativo = "No se pudo crear el usuario.";
                TempData.Remove("RespuestaNegativaCrearUsuario");
            }


            return View(data);
        }


    }
}    