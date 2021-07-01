using Core.Utilities.Results;
using Entities.Concrete;
using Entities.DTOs;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Abstract
{
   public   interface IUserCartService
    {
       
        public IDataResult<List<UserCart>> GetAllByUserId(int userid);
        public IDataResult<List<UserCart>> GetAllByCartId(int cartid);
        IResult Add(UserCart userCart);
        public IDataResult<List<CartDetailDto>> GetAllWithDetails(string username);


    }
}
