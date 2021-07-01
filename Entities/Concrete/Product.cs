using Core.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Entities.Concrete
{
    public class Product:IEntity
    {
        public int Id { get; set; }
       
        public string SerialNumber { get; set; }
        public string StockCode { get; set; }

       
        public int CartId { get; set; }
        public int Quantity { get; set; }
        public virtual ICollection<ProductOption> ProductOptions { get; set; } 
        public virtual Cart? Cart { get; set; }




    }
}
