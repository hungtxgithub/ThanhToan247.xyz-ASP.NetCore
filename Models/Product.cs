using System;
using System.Collections.Generic;

#nullable disable

namespace Q3.Models
{
    public partial class Product
    {
        public int ProductId { get; set; }
        public string SeriCode { get; set; }
        public string PinCode { get; set; }
        public int? PriceId { get; set; }
        public bool? Status { get; set; }

        public virtual Price Price { get; set; }
    }
}
