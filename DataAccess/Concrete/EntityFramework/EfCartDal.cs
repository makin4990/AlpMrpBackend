using Core.DataAccess.EntityFramework;
using DataAccess.Abstract;
using Entities.Concrete;
using Entities.DTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataAccess.Concrete.EntityFramework
{
    public class EfCartDal : EfEntityRepositoryBase<Cart, AlplerVTContext>, ICartDal
    {
        public List<CartDTO> GetCartByUserId(int userid)
        {
            using (AlplerVTContext context = new AlplerVTContext())
            {
                var results = (from p in context.Products
                               join c in context.Carts on p.CartId equals c.Id
                               join u in context.Users on c.UserId equals u.Id
                               where c.UserId == userid
                               select new CartDTO
                               {
                                   CartId = c.Id,
                                   User = u.Email,
                                   CreatedDate = c.CreatedDate,
                                   StockCode = p.StockCode,
                                   SerialNumber = p.SerialNumber,
                                   Quantity = p.Quantity,


                                   productOptions = (from op in context.ProductOptions
                                                     join o in context.Options on op.OptionId equals o.Id
                                                     where op.ProductId == p.Id
                                                     select o).ToList()
                               }).ToList();
                return results;
            }
        }

           

 
        public List<CartDTO> GetAllCarts()
        {
            using (AlplerVTContext context = new AlplerVTContext())
            {
                var results = (from p in context.Products
                               join c in context.Carts on p.CartId equals c.Id
                               join u in context.Users on c.UserId equals u.Id
                               select new CartDTO
                               {
                                   CartId = c.Id,
                                   User = u.Email,
                                   CreatedDate = c.CreatedDate,
                                   StockCode = p.StockCode,
                                   SerialNumber = p.SerialNumber,
                                   Quantity = p.Quantity,


                                   productOptions = (from op in context.ProductOptions
                                                     join o in context.Options on op.OptionId equals o.Id
                                                     where op.ProductId == p.Id
                                                     select o).ToList()
                               }).ToList();
                return results;
            }
        }

        
    }
    }
