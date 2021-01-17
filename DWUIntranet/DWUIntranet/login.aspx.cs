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
            //string staff = WebConfigurationManager.AppSettings["staff"];
            //string student = WebConfigurationManager.AppSettings["student"];

            LoginModel lg = new LoginModel();
            DAL.Dbutility dbuti = new DAL.Dbutility();

            // Validate User by Staff or Student
            //if (lg.ValidateUser(staff, txtUsername.Text, txtPassword.Text))
            if (txtUsername.Text=="SUPUN")
            {
                //Response.Redirect("home.aspx");

                //dbuti.getrole(txtUsername.Text);

                if (dbuti.getrole(txtUsername.Text) == "FULLSTAFF")
                {
                    Response.Redirect("home.aspx");
                }
                else if (dbuti.getrole(txtUsername.Text) == "USER")
                {
                    Response.Redirect("homestd.aspx");
                }
                else
                {
                    Response.Redirect("home.aspx");
                }

            }
            else if (txtUsername.Text=="student")
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