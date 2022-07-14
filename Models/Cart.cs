using System;
using System.Collections.Generic;

#nullable disable

namespace Q3.Models
{
    public partial class Cart
    {
        public int CartId { get; set; }
        public int? PriceId { get; set; }
        public int? Quantity { get; set; }
        public int? UserId { get; set; }

        public virtual Price Price { get; set; }
        public virtual User User { get; set; }
    }
}
