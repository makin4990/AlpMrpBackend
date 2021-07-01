using Business.Abstract;
using Core.Utilities.Results;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Concrete
{
    public class CartDetailManager : ICartDetailService
    {
        ICartDetailService _cartDetailService;

        public CartDetailManager(ICartDetailService cartDetailService)
        {
            _cartDetailService = cartDetailService;
        }

        //public IResult Add(CartDetail cartDetail)
        //{
        //    _cartDetailService.Add(cartDetail);
        //    return new SuccessResult("CartDetayı Eklendi");
        //}
    }
}
