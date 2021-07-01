﻿using Entities.Concrete;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.ValidationRules.FluentValidation
{
    public class OptionValidator : AbstractValidator<Option>
    {
        public OptionValidator()
        {
            RuleFor(p => p.Id).NotEmpty();
            RuleFor(p => p.Name).MinimumLength(2);
            //RuleFor(p => p.Name).Must(StartWithA).WithMessage("Ürünler A harfi ile başlamalı");

        }

        private bool StartWithA(string arg)
        {
            return arg.StartsWith("A");
        }
    }
}
