using System;
using System.Collections.Generic;

#nullable disable

namespace ThanhToan247.xyz.Models
{
    public partial class CardPrice
    {
        public CardPrice()
        {
            CardCodes = new HashSet<CardCode>();
        }

        public int CardPriceId { get; set; }
        public double? Price { get; set; }
        public int? SupplierId { get; set; }
        public double? Discount { get; set; }

        public virtual Supplier Supplier { get; set; }
        public virtual ICollection<CardCode> CardCodes { get; set; }
    }
}
