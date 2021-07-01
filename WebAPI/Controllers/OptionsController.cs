using Business.Abstract;
using Business.Concrete;
using DataAccess.Concrete.EntityFramework;
using Entities.Concrete;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace WebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OptionsController : ControllerBase
    {
        
        IOptionService _optionService;

        public OptionsController(IOptionService optionService)
        {
            _optionService = optionService;
        }

       [HttpGet("getbyparentid")]
        public IActionResult GetAllByParentId(int id)
        {
            var result = _optionService.GetAllByParentId(id);
            if (result.Success)
            {
                return Ok(result);
            }

            return BadRequest(result);
        }


        [HttpGet("getall")]
        public IActionResult GetAll()
        {
            var result = _optionService.GetAll();
            if (result.Success)
            {
                return Ok(result);
            }

            return BadRequest(result);
        }

        [HttpGet("getbyparentidandgrandparentid")]
        public IActionResult ParentIdAndGrandParentId(int parentid, int grandparentid)
        {
            var result = _optionService.GetAllByParentIdAndGrandParentId(parentid , grandparentid);
            if (result.Success)
            {
                return Ok(result);
            }

            return BadRequest(result);
        }

        [HttpGet("getproductdetail")]
        public IActionResult GetProductDetail(int userid)
        {
            var result = _optionService.GetProductDetails(userid);
            if (result.Success)
            {
                return Ok(result);

            }
            return BadRequest(result);
        }

        //[HttpPost("add")]
        //public IActionResult Add(Option option)
        //{
        //    var result = _optionService.Add(option);
        //    if (result.Success)
        //    {
        //        return Ok(result);
        //    }
        //    return BadRequest(result);
        //}


    }
}


