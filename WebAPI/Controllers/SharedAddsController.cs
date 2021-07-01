using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Threading.Tasks;
using Business.Abstract;
using Entities.Concrete;

namespace WebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SharedAddsController : ControllerBase
    {
        private readonly ICartService _cartService;
        private readonly IProductService _productService;
        private readonly IProductOptionService _productOptionService;

        public SharedAddsController(ICartService cartService, IProductService productService, IProductOptionService productOptionService)
        {
            _cartService = cartService;
            _productService = productService;
            _productOptionService = productOptionService;
        }


        [HttpPost("addtocart")]
        public IActionResult AddToCart([FromBody] AddToCart addToCart)
        {
            _cartService.Add(addToCart.Cart);
            addToCart.Product.CartId = addToCart.Cart.Id;
            _productService.Add(addToCart.Product);
            addToCart.ProductOption.ProductId = addToCart.Product.Id;
            _productOptionService.Add(addToCart.ProductOption);

            return Ok("Eklendi");
        }


        [HttpGet("getit")]
        public IActionResult getit(int id)
        {
            return Ok("oldu");
        }
    }
}
