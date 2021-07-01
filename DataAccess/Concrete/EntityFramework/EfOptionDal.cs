using Core.DataAccess.EntityFramework;
using DataAccess.Abstract;
using Entities.Concrete;
using Entities.DTOs;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;

namespace DataAccess.Concrete.EntityFramework
{

    public class EfOptionDal : EfEntityRepositoryBase<Option, AlplerVTContext>, IOptionDal
    {
      

        public List<ProductDetailDto> GetProductDetails(int userid)
        {
            using (AlplerVTContext context = new AlplerVTContext())
            {

                var result = from o in context.Options
                             join uc in context.UserCarts
                             on o.Id equals uc.OptionId
                             where uc.UserId == userid
                             select new ProductDetailDto
                             {
                                 ProductName = o.Name
                             };
                return result.ToList();
            }
        }


    }
}