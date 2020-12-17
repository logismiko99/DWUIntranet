using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DWUIntranet
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string domain1 = WebConfigurationManager.AppSettings["domain1"];
            string domain2 = WebConfigurationManager.AppSettings["domain2"];

            LoginModel lg = new LoginModel();
            
            if (lg.ValidateUser(domain1, txtUsername.Text, txtPassword.Text))
            {
                Response.Redirect("home.aspx");
                
            }
            else if (lg.ValidateUser(domain2, txtUsername.Text, txtPassword.Text))
            {
                Response.Redirect("home.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");
            }
            
        }
    }
}