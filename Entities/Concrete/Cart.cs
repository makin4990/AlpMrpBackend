using Core.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Concrete
{
    public class Cart:IEntity
    {
        public int Id   { get; set; }
        public int UserId { get; set; }
        public DateTime CreatedDate { get; set; }
        public virtual ICollection<Product>? Products { get; set; }
    }
}
