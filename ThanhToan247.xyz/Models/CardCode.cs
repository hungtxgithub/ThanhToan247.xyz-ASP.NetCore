using System;
using System.Collections.Generic;

#nullable disable

namespace ThanhToan247.xyz.Models
{
    public partial class CardCode
    {
        public CardCode()
        {
            Orders = new HashSet<Order>();
        }

        public int CardCodeId { get; set; }
        public string SeriCode { get; set; }
        public string PinCode { get; set; }
        public int? CardPriceId { get; set; }
        public bool? Status { get; set; }

        public virtual CardPrice CardPrice { get; set; }
        public virtual ICollection<Order> Orders { get; set; }
    }
}
