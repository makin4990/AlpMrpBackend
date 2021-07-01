using Business.Concrete;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework;
using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;

namespace ConsoleUI
{
    //SOLID
    //Open Closed Principle
    class Program
    {
        static void Main(string[] args)
        {
            //Data Transformation Object
            //CategoryTest();
            //ParentId(9);
          //  ParentIdAndGrandParentId(9, 12);

            //IoC 
            //CategoryTest();

            //using (var context = new AlplerVTContext())
            //{
            //    var results = context.Carts.Include(c=> c.CartDetails)
            //        .ThenInclude(CartDetail => CartDetail.Products)
            //        .ThenInclude(product => product.CartDetail.Products.ProductOptions);
                  
            //    Console.WriteLine(results);


            //    foreach (var result in results)
            //    {

            //        Console.WriteLine(result);
            //        var cartDetails = result.CartDetails;

            //        foreach (var cartDetail in cartDetails)
            //        {

            //            Console.WriteLine(" CartDetailId is " + cartDetail.Id + " ProductId is " + cartDetail.Products.Id);


            //        }


            //    }

            //    Console.WriteLine("çalıştı");
               
            //}
            
            

        }


        private static void CategoryTest()
        {
            OptionManager optionManager = new OptionManager(new EfOptionDal());
            var opts =  optionManager.GetAll();
            foreach (var opt in opts.Data)
            {
                Console.WriteLine(opt.Name);
            }

        }
        private static void ParentId(int parentid)
        {
            OptionManager optionManager = new OptionManager(new EfOptionDal());
            var opts = optionManager.GetAllByParentId(parentid);
            foreach (var opt in opts.Data)
            {
                Console.WriteLine(opt.Name);
            }

        }
        private static void ParentIdAndGrandParentId(int parentid, int? grandparentid)
        {
            OptionManager optionManager = new OptionManager(new EfOptionDal());
            var opts = optionManager.GetAllByParentIdAndGrandParentId(parentid, grandparentid);
            foreach (var opt in opts.Data)
            {
                Console.WriteLine(opt.Name);
            }
            

        }



    }
}