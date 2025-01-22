using Web_LX.Models;
using Web_LX.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Reflection;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using System.Windows.Media.Media3D;

namespace Web_LX.Controllers
{
    [Authorize]
    public class AdminController : Controller
    {
        RolModel modelRole = new RolModel();
        StateModel modelState = new StateModel();
        SolicitudCitas modelSoCitas = new SolicitudCitas();
        UserModel modelUser = new UserModel();



        public ActionResult Index()
        {
            try
            {
                Session["MensajePositivo"] = 0;
                Session["MensajeNegativo"] = 0;

                // Validar si la sesión de RolUsuario está establecida y no es nula
                if (Session["RolUsuario"] != null && Session["RolUsuario"].ToString() == "1")
                {
                    var preRegistrationData = modelSoCitas.RequestPreCita();
                    var TodayRegistrationData = modelSoCitas.RequestRegistrationsToday();

                    decimal total = 0;
                    foreach (var item in TodayRegistrationData)
                    {
                        total = item.Amount + total;
                    }

                    Session["CedulaCliente"] = null;
                    Session["PreRegisterPending"] = preRegistrationData.Count;
                    Session["RegisterToday"] = TodayRegistrationData.Count;
                    Session["TotalRegisterToday"] = total;
                    Session["CedulaCliente"] = "";

                    return View();
                }
                else
                {
                    // Si la sesión no es de administrador, mostrar la vista para el usuario
                    if (Session["UserId"] != null)
                    {
                        int userId = Convert.ToInt32(Session["UserId"]);
                        var data = modelUser.RequestUser(userId);
                        return View(data);
                    }
                    else
                    {
                        // Si la sesión no está establecida, redirigir al login
                        return RedirectToAction("Login", "Home");
                    }
                }
            }
            catch (Exception ex)
            {
                var exept = ex.Message;
                return RedirectToAction("ErrorHome", "Error");
            }
        }


        public ActionResult CreateRole()
        {
            try
            {
                var roles = modelRole.RequestRolesScrollDown();
                var ComboRoles = new List<SelectListItem>();
                foreach (var item in roles)
                {
                    ComboRoles.Add(new SelectListItem
                    {
                        Text = item.nombre_rol,
                        Value = item.id_rol.ToString()
                    });
                }
                ViewBag.Roles = ComboRoles;

                var state = modelState.RequestStatusScrollDown();
                var ComboState = new List<SelectListItem>();
                foreach (var item in state)
                {
                    ComboState.Add(new SelectListItem
                    {
                        Text = item.Name,
                        Value = item.StatusId.ToString()
                    });
                }
                ViewBag.state = ComboState;


                return View();
            }
            catch (Exception ex)
            {
                var exept = ex.Message;
                return RedirectToAction("ErrorAdministration", "Error");
            }
        }

        public ActionResult CreateRegister()
        {
            try
            {//Status
                var State = modelState.RequestStatusScrollDown();
                var ComboState = new List<SelectListItem>();
                foreach (var item in State)
                {
                    ComboState.Add(new SelectListItem
                    {
                        Text = item.Name,
                        Value = item.StatusId.ToString()
                    });
                }

               
 
                ViewBag.Status = ComboState;

                if (TempData.ContainsKey("RespuestaNegativaMatricula"))
                {
                    ViewBag.MsjPantalla = "No existe cliente o usuario con dicha cedula, por favor cree primero el usuario";
                    TempData.Remove("RespuestaNegativaMatricula");
                }

                if (TempData.ContainsKey("RespuestaPositivaCrearUsuario"))
                {
                    ViewBag.MsjPantallaP = "Usuario creado con exito, proceda a la matricula";
                    TempData.Remove("RespuestaPositivaCrearUsuario");
                }

                return View();
            }
            catch (Exception ex)
            {
                var exept = ex.Message;
                return RedirectToAction("ErrorAdministration", "Error");
            }

        }

        public ActionResult ConsultRegistrations()
        {
            try
            {
                if (TempData.ContainsKey("RespuestaPositivaEditarMatricula"))
                {
                    ViewBag.MsjPantallaPositivo = "Informacion de la matricula actualizada.";
                    TempData.Remove("RespuestaPositivaEditarMatricula");
                }
                if (TempData.ContainsKey("RespuestaNegativaEditarMatricula"))
                {
                    ViewBag.MsjPantallaNegativo = "No se pudo actualizar la matricula.";
                    TempData.Remove("RespuestaNegativaEditarMatricula");
                }

                var data = modelSoCitas.RequestPreCita();
                data = data.OrderByDescending(x => x.fecha_creacion).ToList();

                return View(data);
            }
            catch (Exception ex)
            {
                var exept = ex.Message;
                return RedirectToAction("ErrorAdministration", "Error");
            }

        }
         

    }
}

