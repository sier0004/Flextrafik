using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace FlextrafikWebApplication.Models
{
    public class Location
    {
        [ScaffoldColumn(false), Required]
        public int LocationID { get; set; }

        public List<Car> CarsOnLocation { get; set; } //get
                
        [Required, Display(Name = "Vejenavn")]
        public string StreetName { get; set; }
                
        [Required, Display(Name = "Vejenummer")]
        public int StreetNumber { get; set; }
                
        [Required, Display(Name = "Postnummer")]
        public int PostalCode { get; set; }
             
        [Required, Display(Name = "By")]
        public string City { get; set; }
              
        [Required, Display(Name = "Kommune")]
        public string Municipality { get; set; }
    }
}