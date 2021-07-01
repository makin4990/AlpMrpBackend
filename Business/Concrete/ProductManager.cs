using Business.Abstract;
using Core.Utilities.Results;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;
using DataAccess.Abstract;

namespace Business.Concrete
{
    public class ProductManager : IProductService
    {
        IProductDal _productDal;

        public ProductManager(IProductDal productDal)
        {
            _productDal = productDal;
        }


        public IResult Add(Product product)
        {
            _productDal.Add(product);
            return new SuccessResult("Ürün olarak eklendi");
        }

        public IResult Delete(Product product)
        {
            _productDal.Delete(product);
            return new SuccessResult("Ürün silindi");
        }

        public IResult Update(Product product)
        {
            _productDal.Update(product);
            return new SuccessResult("Ürün Güncellendi");
        }
    }
}
