using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace OnlineGroceryStore.Model
{
    public class GroceryDbContext: DbContext
    {
        string connectionString;

        public DbSet<Product> Product { get; set; }

        public GroceryDbContext()
        {
            connectionString = "server=.;database=Grocery;integrated security=true; MultipleActiveResultSets=True;trustservercertificate=true";
        }

        public GroceryDbContext(string path) : base()
        {
            connectionString = path;
        }

        protected override void OnConfiguring(DbContextOptionsBuilder
             optionsBuilder)
        {
            base.OnConfiguring(optionsBuilder);
            optionsBuilder.UseSqlServer(connectionString);
        }
    }
}

