using Core.DataAccess;
using Entities.Concrete;
using Entities.DTOs;
using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Text;

namespace DataAccess.Abstract
{
    public interface IUserCartDal : IEntityRepository<UserCart>
    {
        List<CartDetailDto> GetAllWithDetails(Expression<Func<CartDetailDto, bool>> filter = null);

    }
}
