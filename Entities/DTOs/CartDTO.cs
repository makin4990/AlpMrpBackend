using Core.Entities;
using Entities.Concrete;
using System;
using System.Collections.Generic;

namespace Entities.DTOs
{
    public class CartDTO: IDto
    {
        public string StockCode { get; set; }
        public string SerialNumber { get; set; }
        public int Quantity { get; set; }
        public int CartId { get; set; }
        public string User{ get; set; }
        public DateTime CreatedDate { get; set; }

        public List<Option> productOptions { get; set; }



    }
}
