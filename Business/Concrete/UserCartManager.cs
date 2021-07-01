using Business.Abstract;
using Business.Constants;
using Core.Utilities.Business;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using Entities.DTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Business.Concrete
{
    public class UserCartManager :IUserCartService
    {
        IUserCartDal _userCartDal;

        public UserCartManager(IUserCartDal userCartDal)
        {
            _userCartDal = userCartDal;
        }

        public IResult Add(UserCart userCart)
        {
          
            IResult result = BusinessRules.Run(CheckIfUsercarExist(userCart.Id));


            if (result != null)
            {
                return result;
            }

            _userCartDal.Add(userCart);
           

            return new SuccessResult(Messages.ProductAdded);

        }

        public IDataResult<List<UserCart>> GetAllByCartId(int cartid)
        {
            return new SuccessDataResult<List<UserCart>>(_userCartDal.GetAll(c => c.CartId == cartid));
        }

        public IDataResult<List<UserCart>> GetAllByUserId(int userid)
        {
            return new SuccessDataResult<List<UserCart>>(_userCartDal.GetAll(c => c.UserId == userid));
        }

        private IResult CheckIfUsercarExist(int cartid)
        {
            var result = _userCartDal.GetAll(c => c.CartId == cartid).Any();
            if (result)
            {
                return new ErrorResult(Messages.CartAlreadyExist);
            }
            return new SuccessResult();
        }
       public IDataResult<List<CartDetailDto>> GetAllWithDetails(string username)
        {
            return new SuccessDataResult<List<CartDetailDto>>(_userCartDal.GetAllWithDetails(u=> u.UserName==username));
        }

        
    }


   

}

