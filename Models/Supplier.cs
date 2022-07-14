using System;
using System.Collections.Generic;

#nullable disable

namespace Q3.Models
{
    public partial class Supplier
    {
        public Supplier()
        {
            Prices = new HashSet<Price>();
        }

        public int SupplierId { get; set; }
        public string SupplierName { get; set; }
        public int? CardTypeId { get; set; }
        public string Image { get; set; }

        public virtual CardType CardType { get; set; }
        public virtual ICollection<Price> Prices { get; set; }
    }
}
