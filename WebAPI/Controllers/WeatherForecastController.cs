using DataAccess.Concrete.EntityFramework;
using Entities.DTOs;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Entities.Concrete;

namespace WebAPI.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class WeatherForecastController : ControllerBase
    {
        private static readonly string[] Summaries = new[]
        {
            "Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
        };

        private readonly ILogger<WeatherForecastController> _logger;

        public WeatherForecastController(ILogger<WeatherForecastController> logger)
        {
            _logger = logger;
        }

        [HttpGet]
        public IActionResult Get()
        {


            using (var context = new AlplerVTContext())
            {
                //var results = context.Carts.Include(cart => cart.Products)
                //    .ThenInclude(product => product.ProductOptions)
                //    .ThenInclude(option => option.Options).ToArray();
                //return Ok(results);

                var getAll = (from p in context.Products
                              join c in context.Carts on p.CartId equals c.Id
                              join u in context.Users on c.UserId equals u.Id
                              where c.UserId==2
                              select new CartDTO
                              {
                                  CartId = c.Id,
                                  User = u.Email,
                                  CreatedDate = c.CreatedDate,
                                  StockCode = p.StockCode,
                                  SerialNumber=p.SerialNumber,
                                  Quantity = p.Quantity,


                                  productOptions = (from op in context.ProductOptions
                                                    join o in context.Options on op.OptionId equals o.Id
                                                    where op.ProductId == p.Id
                                                    select o).ToList()
                              }).ToList();
                var cartt =context.Carts
                    .Include(p => p.Products)
                    .ThenInclude(p => p.ProductOptions).ToList();


                return Ok(cartt);

                
            }
        }
    }
}
