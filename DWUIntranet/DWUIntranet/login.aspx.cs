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
            string staff = WebConfigurationManager.AppSettings["staff"];
            string student = WebConfigurationManager.AppSettings["student"];

            LoginModel lg = new LoginModel();
            
            // Validate User by Staff or Student
            if (lg.ValidateUser(staff, txtUsername.Text, txtPassword.Text))
            {
                Response.Redirect("home.aspx");
                
            }
            else if (lg.ValidateUser(student, txtUsername.Text, txtPassword.Text))
            {
                Response.Redirect("homestd.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");
            }
            
        }
    }
}