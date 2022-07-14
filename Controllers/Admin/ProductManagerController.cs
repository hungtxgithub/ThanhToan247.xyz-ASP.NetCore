using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Q3.Controllers.Admin
{
    public class ProductManagerController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
