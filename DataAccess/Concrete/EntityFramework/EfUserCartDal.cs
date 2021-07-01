using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using Core.DataAccess.EntityFramework;
using DataAccess.Abstract;
using Entities;
using Entities.Concrete;
using Entities.DTOs;
namespace DataAccess.Concrete.EntityFramework
{
    public class EfUserCartDal : EfEntityRepositoryBase<UserCart, AlplerVTContext>, IUserCartDal
    {
       public List<CartDetailDto> GetAllWithDetails(Expression<Func<CartDetailDto, bool>> filter = null)
        {
            using (var context = new AlplerVTContext())
            {
                var result = from usercart in context.UserCarts
                             join user in context.Users
                             on usercart.UserId equals user.Id
                             join product in context.Options
                             on usercart.OptionId equals product.Id
                            
                             select new CartDetailDto()
                             {
                               UserName = user.FirstName,
                               //Product= product

                             };
                if (filter != null)
                {
                    return result.Where(filter).ToList();
                }
                return result.ToList();
            }
            
        }

        
    }
}
