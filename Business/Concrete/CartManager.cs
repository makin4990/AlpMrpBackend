using Business.Abstract;
using Business.Constants;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using Entities.DTOs;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Concrete
{
    public class CartManager : ICartService
    {
        ICartDal _cartDal;

        public CartManager(ICartDal cartDal)
        {
            _cartDal = cartDal;
        }

        public IResult Add(Cart cart)
        {
            // cart.Date = DateTime.Now;
            _cartDal.Add(cart);
            return new SuccessResult(Messages.ProductAdded);
        }

        public IResult Delete(Cart cart)
        {
            _cartDal.Delete(cart);
            return new SuccessResult("Cart silindi");
        }

        public IDataResult<List<CartDTO>> GetAllCarts()
        {
            return new SuccessDataResult<List<CartDTO>>(_cartDal.GetAllCarts());
        }

        public IDataResult<List<CartDTO>> GetCartByUserId(int userid)
        {
            return new SuccessDataResult<List<CartDTO>>(_cartDal.GetCartByUserId(userid));
        }

        
    }
}
