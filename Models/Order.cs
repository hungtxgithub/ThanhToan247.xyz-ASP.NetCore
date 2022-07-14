﻿using System;
using System.Collections.Generic;

#nullable disable

namespace Q3.Models
{
    public partial class Order
    {
        public Order()
        {
            OrderDetails = new HashSet<OrderDetail>();
        }

        public int OrderId { get; set; }
        public string OrderCode { get; set; }
        public int? PriceId { get; set; }
        public int? Quantity { get; set; }
        public double? PriceOrder { get; set; }
        public DateTime? Time { get; set; }
        public int? UserId { get; set; }

        public virtual Price Price { get; set; }
        public virtual User User { get; set; }
        public virtual ICollection<OrderDetail> OrderDetails { get; set; }
    }
}
