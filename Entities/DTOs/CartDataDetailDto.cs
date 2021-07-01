using Core.Entities;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.DTOs
{
    public class CartDetailDto:IDto
    {
        public int CartId { get; set; }
        public string UserName  { get; set; }
        public List<Option> ProductOptionList { get; set; }
        public int Quantity { get; set; }

        //public int Quantity { get; set; }
         



    }
}
