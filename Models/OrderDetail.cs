using System;
using System.Collections.Generic;

#nullable disable

namespace Q3.Models
{
    public partial class OrderDetail
    {
        public int OrderDetailsId { get; set; }
        public int OrderId { get; set; }

        public virtual Order Order { get; set; }
    }
}
