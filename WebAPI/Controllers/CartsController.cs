using Business.Abstract;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Entities.Concrete;

namespace WebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CartsController : ControllerBase
    {
        ICartService _cartService;
        IProductService _productService;

        
        public CartsController(ICartService cartService, IProductService productService)
        {
            _cartService = cartService;
            _productService = productService;

        }

       

        [HttpGet("getallcart")]
        public IActionResult GetAllCarts()
        {
            var results = _cartService.GetAllCarts();
            if (results.Success)
            {
                return Ok(results);

            }
            return BadRequest(results);
        }

        [HttpGet("getusercart")]
        public IActionResult GetCartByUser(int userid)
        {
            var result = _cartService.GetCartByUserId(userid);
            if (result.Success)
            {
                return Ok(result);

            }
            return BadRequest(result);
        }

        //[HttpPost("addtocart")]
        //public IActionResult AddToCart(AddToCart addToCart)
        //{
        //    addToCart.Cart.Products.Add(addToCart.Product);
        //    var result = _cartService.Add(addToCart.Cart);
        //    return Ok(result);
        //}
        [HttpPost("addtocart")]
        public IActionResult AddToCart(Cart cart)
        {
            
            var result = _cartService.Add(cart);
            return Ok(result);
        }

        [HttpPost("addproduct")]
        public IActionResult AddProduct(Product product)
        {
            var result = _productService.Add(product);
            return Ok(result);
        }

        [HttpPost("update")]
        public IActionResult UpdateProduct(Product product)
        {
            var result = _productService.Update(product);
            return Ok(result);
        }


    }
}
