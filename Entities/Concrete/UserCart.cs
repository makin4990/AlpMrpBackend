using Core.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Concrete
{
   public class UserCart:IEntity
    {
        public int Id { get; set; }
        public int CartId { get; set; }
        public int UserId { get; set; }
        public int CustomizationId { get; set; }
        public int OptionId { get; set; }
        public int Quantity { get; set; }

        

    }
}
