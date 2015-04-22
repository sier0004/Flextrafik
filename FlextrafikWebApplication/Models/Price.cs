using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace FlextrafikWebApplication.Models
{
    public class Price
    {          
        [ScaffoldColumn(false), Required]
        public int PriceID { get; set; }

        [Required, Display(Name = "Opstartsgebyr (hverdag)")]
        public double StartupFeeWeekday { get; set; }

        [Required, Display(Name = "Timepris for køretid (hverdag)")]
        public double RunningRateWeekday { get; set; }

        [Required, Display(Name = "Timepris for ventetid (hverdag)")]
        public double WaitingRateWeekday { get; set; }

        [Required, Display(Name = "Opstartsgebyr (aften/nat)")]
        public double StartupFeeEvening { get; set; }

        [Required, Display(Name = "Timepris for køretid (aften/nat)")]
        public double RunningRateEvening { get; set; }

        [Required, Display(Name = "Timepris for ventetid (aften/nat)")]
        public double WaitingRateEvening { get; set; }

       [Required, Display(Name = "Opstartsgebyr (weekend/helligdag)")]
        public double StartupFeeWeekend { get; set; }

        [Required, Display(Name = "Timepris for køretid (weekend/helligdag)")]
        public double RunningRateWeekend { get; set; }

        [Required, Display(Name = "Timepris for ventetid (weekend/helligdag)")]
        public double WaitingRateWeekend { get; set; }

        [Display(Name = "Yderligere oplysninger")]
        public string OtherInfo { get; set; }
    }
}