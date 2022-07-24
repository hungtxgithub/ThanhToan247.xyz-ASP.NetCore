﻿using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ThanhToan247.xyz.Models;

namespace ThanhToan247.xyz.Controllers
{
    public class RechargeController : Controller
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
