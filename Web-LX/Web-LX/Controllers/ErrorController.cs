using System.Web.Mvc;

namespace Web_LX.Controllers
{
    public class ErrorController : Controller
    {
        [HttpGet]
        public ActionResult ErrorHome()
        {
            return View();
        }

        [HttpGet]
        public ActionResult ErrorAdministration()
        {
            return View();
        }
    }
}