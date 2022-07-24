using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ThanhToan247.xyz.Controllers
{
    public class OrderDetailsController : Controller
    {
        public IActionResult Index()
        {
            if (HttpContext.Session.GetString("Role") == null)
            {
                return RedirectToAction("Index", "Login");
            }
            return View();
        }
    }
}
