using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace FlextrafikWebApplication.Models
{
    public class Car
    {
        [ScaffoldColumn(false), Required, Display(Name = "Vogn-ID")]
        public int CarID { get; set; }

        // Hvor skal det her ellers være?
        [Required, Display(Name = "Tilbudsnummer")]
        public int OfferNumber { get; set; }

        [Required, Display(Name = "Garantivogn nummer")]
        public int GuaranteeCarNumber { get; set; }

        [Required, Display(Name = "Registreringsnr.")]
        public string RegistrationNumber { get; set; }

        [Required, Display(Name = "Telefonnummer")]
        public string ContactTelephone { get; set; }

        [Required, Display(Name = "Vogntype")]
        public int CarType { get; set; }

        [Display(Name = "Hjemsted")]
        public Location CarLocation { get; set; }
        
        [Display(Name = "Pris")]
        public Price CarPrice { get; set; }
        
        [Display(Name = "Ejer")]
        public User CarOwner { get; set; }
        
        [Display(Name = "Trappemaskine")]
        public int MaxWeightStairs { get; set; }
        
        [Display(Name = "Barnestole")]
        public string ChildSeatType { get; set; }
    }
}