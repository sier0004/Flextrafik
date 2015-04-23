using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace FlextrafikWebApplication.Models
{
    public class User
    {
        [ScaffoldColumn(false), Required]
        public int UserID { get; set; } //get

        public List<Car> UserCars { get; set; } //get
        
        [Required, Display(Name = "Byders navn")]
        public string UserName { get; set; }

        [Required, Display(Name = "CVR-nr.")]
        public int CompanyCVR { get; set; }
                
        [Display(Name = "Evt. sekundært firma")]
        public string SecondaryName { get; set; }
    }
}