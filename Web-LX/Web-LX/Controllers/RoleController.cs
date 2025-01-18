using Web_LX.Models;
using System.Web.Mvc;

namespace Web_LX.Controllers
{
    [Authorize]
    public class RoleController : Controller
    {
        RolModel model = new RolModel();


        //    [HttpGet]
        //    public ActionResult ListRoles()
        //    {
        //        var data = model.RequestRoles();
        //        return View(data);
        //    }


        //    [HttpPost]
        //    public ActionResult CreateRole(RoleEnt ent)
        //    {
        //        try
        //        {

        //            var resp = model.CreateRole(ent);

        //            if (resp > 0)
        //                return RedirectToAction("ListRoles", "Role");
        //            else
        //            {
        //                ViewBag.Msj = "No se ha podido registrar su información";
        //                return View("ListRoles");
        //            }
        //        }
        //        catch (Exception ex)
        //        {
        //            var exept = ex.Message;

        //            return View("Error");
        //        }
        //    }



        //    [HttpGet]
        //    public ActionResult RegisterRol()
        //    {
        //        return View();
        //    }


        //    [HttpGet]
        //    public ActionResult EditRole(long i)
        //    {
        //        var data = model.RequestRole(i);
        //        return View(data);
        //    }
        //    [HttpPost]
        //    public ActionResult EditRole(RoleEnt ent)
        //    {
        //        try
        //        {

        //            var resp = model.EditRole(ent);

        //            if (resp > 0)
        //            {
        //                return RedirectToAction("ListRoles");
        //            }

        //            else
        //            {
        //                return View("ListRoles");
        //            }
        //        }
        //        catch (Exception ex)
        //        {
        //            var exept = ex.Message;

        //            return View("Error");
        //        }
        //    }

        //    [HttpGet]
        //    public ActionResult DeleteRole(long i)
        //    {
        //        try
        //        {

        //            var resp = model.DeleteRole(i);

        //            if (resp > 0)
        //                return RedirectToAction("ListRoles", "Rol");
        //            else
        //            {
        //                ViewBag.Msj = "No se ha podido eliminar el Rol";
        //                return View("ListRoles");
        //            }
        //        }
        //        catch (Exception ex)
        //        {
        //            var exept = ex.Message;

        //            return View("Error");
        //        }
        //    }



        //    [HttpGet]
        //    public List<RoleEnt> ListRolesScrollDown()
        //    {
        //        var data = model.RequestRolesScrollDown();
        //        return data;
        //    }

        //}
    }
}
