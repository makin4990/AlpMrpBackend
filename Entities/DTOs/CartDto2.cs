using System;
using System.Collections.Generic;
using System.Text;
using Entities.Concrete;

namespace Entities.DTOs
{
    class CartDto2
    {
        public int CartId { get; set; }
        public string User { get; set; }
        public DateTime CreatedDate { get; set; }
        public List<Product> Products { get; set; }

    }
}
