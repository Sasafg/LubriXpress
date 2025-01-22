using Web_LX.Models;
using System;
using System.Web.Mvc;

namespace Web_LX.Controllers
{
    public class CarrosController : Controller
    {
        CarrosModel carrosModel = new CarrosModel();


        // GET: Carros
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult VerCarros()
        {
            try
            {
                var resp = carrosModel.VerCarros();
                return View(resp);
            }
            catch (Exception ex)
            {
                var exept = ex.Message;
                return RedirectToAction("ErrorAdministration", "Error");
            }


        }





    }
}