using System;
using System.Collections.Generic;

#nullable disable

namespace Q3.Models
{
    public partial class Price
    {
        public Price()
        {
            Carts = new HashSet<Cart>();
            Orders = new HashSet<Order>();
            Products = new HashSet<Product>();
        }

        public int PriceId { get; set; }
        public double? Price1 { get; set; }
        public int? SupplierId { get; set; }
        public double? Discount { get; set; }

        public virtual Supplier Supplier { get; set; }
        public virtual ICollection<Cart> Carts { get; set; }
        public virtual ICollection<Order> Orders { get; set; }
        public virtual ICollection<Product> Products { get; set; }
    }
}
