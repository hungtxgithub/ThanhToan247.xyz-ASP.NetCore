using System;
using System.Collections.Generic;

#nullable disable

namespace Q3.Models
{
    public partial class Contact
    {
        public int ContactId { get; set; }
        public string Name { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public string Subject { get; set; }
        public string Message { get; set; }
    }
}
