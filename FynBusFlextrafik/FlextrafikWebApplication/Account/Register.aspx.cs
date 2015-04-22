using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using FlextrafikWebApplication.Models;

namespace FlextrafikWebApplication.Account {

	public partial class Register : Page {

		protected void CreateUser_Click(object sender, EventArgs e) {

			String usrname;
			String passwd;

			User user = new User();
			
			try {

				// Registering Login Informations
				usrname = (String) Email.Text;
				passwd = (String) Password.Text;

				// Registering User Informations.
				user.UserName = CompanyName.Text;

				int CVRInput;
				int.TryParse(CVR.Text, out CVRInput);
				user.CompanyCVR = CVRInput;
			}
			catch (Exception) {
				//ErrorMessage.Text = "Du må kun skrive tal";
				Page.ClientScript.RegisterStartupScript(this.GetType(),"conversionError","alert('The try has failed.');",true);
			}

			if (SecondaryCompany.Text != null) {
				user.SecondaryName = SecondaryCompany.Text;
			}

			var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
			var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
			var account = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
			IdentityResult result = manager.Create(account, Password.Text);

			if (result.Succeeded) {
				// For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
				//string code = manager.GenerateEmailConfirmationToken(user.Id);
				//string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
				//manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

				signInManager.SignIn(account, isPersistent: false, rememberBrowser: false);
				IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
			}
			else {
				ErrorMessage.Text = result.Errors.FirstOrDefault();
			}

		}

	}

}