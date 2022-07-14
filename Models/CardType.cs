using System;
using System.Collections.Generic;

#nullable disable

namespace Q3.Models
{
    public partial class CardType
    {
        public CardType()
        {
            Suppliers = new HashSet<Supplier>();
        }

        public int CardTypeId { get; set; }
        public string CardTypeName { get; set; }

        public virtual ICollection<Supplier> Suppliers { get; set; }
    }
}
