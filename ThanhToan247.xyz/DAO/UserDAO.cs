using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ThanhToan247.xyz.Models;

namespace ThanhToan247.xyz.DAO
{
    public class UserDAO
    {
        public bool CheckLogin(string username, string password)
        {
            using (var db = new ThanhToan247Context())
            {
                var check = db.Users.Count(x => x.Username == username && x.Password == password);
                if (check > 0)
                {
                    return true;
                }
            }
            return false;
        }

        public User GetUser(string username)
        {
            using (var db = new ThanhToan247Context())
            {
                return db.Users.SingleOrDefault(x => x.Username == username);
            }
        }


    }
}
