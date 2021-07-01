using Business.Abstract;
using Entities.Concrete;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class test : ControllerBase
    {
        IUserCartService _userCartService;

        public test(IUserCartService userCartService)
        {
            _userCartService = userCartService;
        }

        [HttpGet("getallbycartid")]
        public IActionResult GetAllByCartId(int cartid)
        {
            var result = _userCartService.GetAllByCartId(cartid);
            if (result.Success)
            {
                return Ok(result);
            }

            return BadRequest(result);
        }

        [HttpGet("getallbyuserid")]
        public IActionResult GetAllByUserId(int userid)
        {
            var result = _userCartService.GetAllByUserId(userid);
            if (result.Success)
            {
                return Ok(result);
            }

            return BadRequest(result);
        }

        [HttpPost("addtocart")]
        public IActionResult Add(UserCart userCart)
        {
            var result = _userCartService.Add(userCart);

            if (result.Success)
            {
                return Ok(result);
            }
            return BadRequest(result);

        }



    }
}
