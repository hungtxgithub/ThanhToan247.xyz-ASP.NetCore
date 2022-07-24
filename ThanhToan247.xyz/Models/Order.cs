using System;
using System.Collections.Generic;

#nullable disable

namespace ThanhToan247.xyz.Models
{
    public partial class Order
    {
        public int OrderId { get; set; }
        public string OrderCode { get; set; }
        public int? Quantity { get; set; }
        public double? PriceOrder { get; set; }
        public DateTime? Time { get; set; }
        public int UserId { get; set; }
        public int? CardCodeId { get; set; }

        public virtual CardCode CardCode { get; set; }
        public virtual User User { get; set; }
    }
}
