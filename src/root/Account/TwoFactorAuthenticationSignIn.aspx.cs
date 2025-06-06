﻿using System;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

using coding_lms.Models;

using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;


namespace coding_lms.Account {
	public partial class TwoFactorAuthenticationSignIn : System.Web.UI.Page {
		private ApplicationSignInManager signinManager;
		private ApplicationUserManager manager;

		public TwoFactorAuthenticationSignIn () {
			manager = Context.GetOwinContext ().GetUserManager<ApplicationUserManager> ();
			signinManager = Context.GetOwinContext ().GetUserManager<ApplicationSignInManager> ();
		}

		protected void Page_Load ( object sender , EventArgs e ) {
			var userId = signinManager.GetVerifiedUserId<ApplicationUser, string>();
			if ( userId == null ) {
				Response.Redirect ( "/Account/Error" , true );
			}
			var userFactors = manager.GetValidTwoFactorProviders(userId);
			ddlProviders.DataSource = userFactors.Select ( x => x ).ToList ();
			ddlProviders.DataBind ();
		}

		protected void CodeSubmit_Click ( object sender , EventArgs e ) {
			bool rememberMe = false;
			//bool.TryParse(Request.QueryString["RememberMe"], out rememberMe);

			var result = signinManager.TwoFactorSignIn<ApplicationUser, string>(SelectedProvider.Value, Code.Text, isPersistent: rememberMe, rememberBrowser: false);
			//var result = signinManager.TwoFactorSignIn<ApplicationUser, string>(SelectedProvider.Value, Code.Text, isPersistent: rememberMe, rememberBrowser: RememberBrowser.Checked);
			switch ( result ) {
				case SignInStatus.Success:
					IdentityHelper.RedirectToReturnUrl ( Request.QueryString [ "ReturnUrl" ] , Response );
					break;
				case SignInStatus.LockedOut:
					Response.Redirect ( "/Account/Lockout" );
					break;
				case SignInStatus.Failure:
				default:
					FailureText.Text = "Invalid code";
					ErrorMessage.Visible = true;
					break;
			}
		}

		protected void ProviderSubmit_Click ( object sender , EventArgs e ) {
			if ( !signinManager.SendTwoFactorCode ( ddlProviders.SelectedValue ) ) {
				Response.Redirect ( "/Account/Error" );
			}

			var user = manager.FindById(signinManager.GetVerifiedUserId<ApplicationUser, string>());
			if ( user != null ) {
				var code = manager.GenerateTwoFactorToken(user.Id, ddlProviders.SelectedValue);
			}

			SelectedProvider.Value = ddlProviders.SelectedValue;
			sendcode.Visible = false;
			verifycode.Visible = true;
		}
	}
}