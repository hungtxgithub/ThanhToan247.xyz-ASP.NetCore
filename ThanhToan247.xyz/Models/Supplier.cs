using System;
using System.Collections.Generic;

#nullable disable

namespace ThanhToan247.xyz.Models
{
    public partial class Supplier
    {
        public Supplier()
        {
            CardPrices = new HashSet<CardPrice>();
        }

        public int SupplierId { get; set; }
        public string SupplierName { get; set; }
        public string CardTypeName { get; set; }
        public string Image { get; set; }

        public virtual ICollection<CardPrice> CardPrices { get; set; }
    }
}
