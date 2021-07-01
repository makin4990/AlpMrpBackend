using Core.Utilities.Results;
using Entities.Concrete;
using Entities.DTOs;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Abstract
{
    public interface ICartService
    {
        IResult Add(Cart cart);

        IResult Delete(Cart cart);

        public IDataResult<List<CartDTO>> GetCartByUserId(int userid);
        public IDataResult<List<CartDTO>> GetAllCarts();
    }
}
