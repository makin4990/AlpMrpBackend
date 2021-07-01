using System;
using System.Collections.Generic;
using System.Text;
using Core.Entities;

namespace Entities.Concrete
{
    public class AddToCart :IEntity
    {
       
            public Cart Cart { get; set; }
            public Product Product { get; set; }
            public ProductOption ProductOption { get; set; }
        
    }
}
