using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace FlextrafikWebApplication.Models
{
    public class Context : DbContext
    {
        public Context () : base("FlextrafikWebApplication")
        {
        }
        public DbSet<Car> Cars { get; set; }
        public DbSet<User> Users { get; set; }
        public DbSet<Location> Locations { get; set; }
        public DbSet<Price> Prices { get; set; }
    }
}