using Core.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Concrete
{
   public  class Option : IEntity
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int  Quantity { get; set; }
        public int? ParentId { get; set; }
        public int? GrandParentId { get; set; }
        
    }
}
