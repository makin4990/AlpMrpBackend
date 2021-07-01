using Core.Entities.Concrete;
using Entities.Concrete;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccess.Concrete.EntityFramework
{
    //Context : Db tabloları ile proje classlarını bağlamak
    public class AlplerVTContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=BILGISLEM;Database=AlplerVT;Trusted_Connection=true");
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Cart>().HasMany(x => x.Products).WithOne(x => x.Cart).HasForeignKey(x => x.CartId);
            modelBuilder.Entity<Product>().HasMany(x => x.ProductOptions).WithOne(x => x.Product).HasForeignKey(x => x.ProductId);
            
        }

        public DbSet<Option> Options { get; set; }
        public DbSet<User> Users { get; set; }
        public DbSet<OperationClaim> OperationClaims { get; set; }
        public DbSet<UserOperationClaim> UserOperationClaims { get; set; }
        public DbSet<UserCart> UserCarts { get; set; }
        public DbSet<Order> Orders { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<ProductOption> ProductOptions { get; set; }
        public DbSet<Cart> Carts { get; set; }
       // public DbSet<CartDetail> CartDetails { get; set; }


    }
}