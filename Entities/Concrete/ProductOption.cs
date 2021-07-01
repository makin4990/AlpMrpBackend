using Core.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Entities.Concrete
{
    public class ProductOption:IEntity
    {
        public int Id { get; set; }
        public int ProductId { get; set; }
        public int OptionId { get; set; }
        public virtual Product Product { get; set; }
        public virtual Option Options { get; set; }



    }
}
