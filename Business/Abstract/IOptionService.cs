
using Core.Utilities.Results;
using Entities.Concrete;
using Entities.DTOs;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Abstract
{
    public interface IOptionService
    {
        public IDataResult<List<Option>> GetAll();
        public IDataResult<List<Option>> GetAllByParentId(int parentid);
        public IDataResult<List<Option>> GetAllByParentIdAndGrandParentId(int parentid, int? grandparentid);
        public IDataResult<List<ProductDetailDto>> GetProductDetails(int userid);

    }
}