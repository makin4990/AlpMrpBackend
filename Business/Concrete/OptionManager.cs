using Business.Abstract;
using Business.BusinessAspects.Autofac;
using Business.ValidationRules.FluentValidation;
using Core.Aspects.Autofac.Validation;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using Entities.DTOs;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Concrete
{
    public class OptionManager : IOptionService
    {
        IOptionDal _optionDal;

        public OptionManager(IOptionDal optionDal)
        {
            _optionDal = optionDal;
        }

        public IDataResult<List<Option>> GetAll()
        {
           return new SuccessDataResult<List<Option>>(_optionDal.GetAll());
        }

        public IDataResult<List<Option>> GetAllByParentId(int parentid)
        {
            return new SuccessDataResult<List<Option>>(_optionDal.GetAll(o => o.ParentId == parentid));
        }

        [SecuredOperation("product.add,admin")]
        [ValidationAspect(typeof(OptionValidator))]
        public IDataResult<List<Option>> GetAllByParentIdAndGrandParentId(int parentid, int? grandparentid)
        {


            return new SuccessDataResult<List<Option>>(_optionDal.GetAll(o => o.ParentId == parentid && o.GrandParentId == grandparentid));
        }

        public IDataResult<List<ProductDetailDto>> GetProductDetails(int userid)
        {
            return new SuccessDataResult<List<ProductDetailDto>>(_optionDal.GetProductDetails(userid));
        }
    }
}
