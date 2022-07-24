using System;
using System.Collections.Generic;

#nullable disable

namespace ThanhToan247.xyz.Models
{
    public partial class User
    {
        public User()
        {
            HistoryRecharges = new HashSet<HistoryRecharge>();
            Orders = new HashSet<Order>();
        }

        public int UserId { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public double RemainingMoney { get; set; }
        public double TotalMoneyLoaded { get; set; }
        public double? Discount { get; set; }
        public string Avatar { get; set; }
        public bool? Role { get; set; }
        public bool Status { get; set; }
        public DateTime TimeCreated { get; set; }

        public virtual ICollection<HistoryRecharge> HistoryRecharges { get; set; }
        public virtual ICollection<Order> Orders { get; set; }
    }
}
