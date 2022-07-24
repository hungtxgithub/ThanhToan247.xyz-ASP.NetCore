
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ThanhToan247.xyz.DAO;
using ThanhToan247.xyz.Models;

namespace ThanhToan247.xyz.Controllers
{
    public class LoginController : Controller
    {
        public IActionResult Index()
        {
            HttpContext.Session.Clear();
            return View();
        }

        [HttpPost]
        public IActionResult Index(string username, string password)
        {
            var dao = new UserDAO();

            bool check = dao.CheckLogin(username, password);
            var user = dao.GetUser(username);
            if (dao.CheckLogin(username, password))
            {
                HttpContext.Session.SetString("Role", user.Role.ToString());
                return RedirectToAction("Index", "Home");
            }
            else
            {
                ViewBag.error = "Tài khoản hoặc mật khẩu không đúng!";
                return View();
            }

        }
    }
}
