using Core.Utilities.Results;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Abstract
{
   public   interface IProductOptionService
    {
        IResult Add(ProductOption productOption);
        IResult Delete(ProductOption productOption);
        IResult Update(ProductOption productOption);

    }
}
