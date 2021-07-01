using Core.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Concrete
{
    public class Order:IEntity
    {
        public int Id { get; set; }
        public string ProductName { get; set; }
        public int CartId { get; set; }
        public int UserId { get; set; }
        public int CustomizationId { get; set; }
       

    }
}
