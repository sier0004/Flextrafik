using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using FlextrafikWebApplication.Models;

namespace FlextrafikWebApplication
{
    public partial class CreateOffer : System.Web.UI.Page
    {
        private Context _db = new Context();
        Car newCar = new Car();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateOfferButton_Click(object sender, EventArgs e)
        {
            //Car newCar = new Car();
            try
            {
                int carIDInput;
                int.TryParse(CarID.Text, out carIDInput);
                newCar.CarID = carIDInput;
            }
            catch (Exception)
            {
                ErrorMessage.Text = "Du må kun skrive tal.";
            }
            try
            {
                int offerInput;
                int.TryParse(OfferNumber.Text, out offerInput);
                newCar.OfferNumber = offerInput;
            }
            catch (Exception)
            {
                ErrorMessage.Text = "Du må kun skrive tal.";
            }
            try
            {
                int GuaranteeInput;
                int.TryParse(GuaranteeCarNumber.Text, out GuaranteeInput);
                newCar.GuaranteeCarNumber = GuaranteeInput;
            }
            catch (Exception)
            {
                ErrorMessage.Text = "Du må kun skrive tal.";
            }

            newCar.RegistrationNumber = RegistrationNumber.Text;
            newCar.ContactTelephone = ContactTelephone.Text;

            if (CarType1.Checked == true)
            {
                newCar.CarType = 1;
            }
            else if (CarType2.Checked == true)
            {
                newCar.CarType = 2;
            }
            else if (CarType3.Checked == true)
            {
                newCar.CarType = 3;
            }
            else if (CarType4.Checked == true)
            {
                newCar.CarType = 4;
            }
            else if (CarType5.Checked == true)
            {
                newCar.CarType = 5;
            }
            else if (CarType6.Checked == true)
            {
                newCar.CarType = 6;
            }
            else
            {
                ErrorMessage.Text = "Du skal vælge en vogntype.";
            }

            _db.Cars.Add(newCar);
            _db.SaveChanges();
        }
    }
}