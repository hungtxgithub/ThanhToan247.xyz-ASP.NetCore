using System;
using System.Collections.Generic;

#nullable disable

namespace ThanhToan247.xyz.Models
{
    public partial class HistoryRecharge
    {
        public int RechargeId { get; set; }
        public string TransactionId { get; set; }
        public double? Money { get; set; }
        public DateTime? Time { get; set; }
        public int? UserId { get; set; }

        public virtual User User { get; set; }
    }
}
