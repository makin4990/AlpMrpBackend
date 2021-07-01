using Core.DataAccess;
using Entities.Concrete;
using Entities.DTOs;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccess.Abstract
{
    public interface ICartDal: IEntityRepository<Cart>
    {
        List<CartDTO> GetAllCarts();
        List<CartDTO> GetCartByUserId(int userid);
    }
}
