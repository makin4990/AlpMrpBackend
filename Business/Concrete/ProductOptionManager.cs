using Business.Abstract;
using Core.Utilities.Results;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;
using DataAccess.Abstract;

namespace Business.Concrete
{
    public class ProductOptionManager : IProductOptionService
    {
        IProductOptionDal _productOptionDal;

        public ProductOptionManager(IProductOptionDal productOptionDal)
        {
            _productOptionDal = productOptionDal;
        }


        public IResult Add(ProductOption productOption)
        {
            _productOptionDal.Add(productOption);
            return new SuccessResult("Product Options Added..");
        }

        public IResult Delete(ProductOption productOption)
        {
            _productOptionDal.Delete(productOption);
            return new SuccessResult("Product Options Deleted..");
        }

        public IResult Update(ProductOption productOption)
        {
            _productOptionDal.Update(productOption);
            return new SuccessResult("Product Options Updated..");
        }
    }
}
