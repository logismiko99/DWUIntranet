﻿using DAL;
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
            string domain = WebConfigurationManager.AppSettings["domain"];

            LoginModel lg = new LoginModel();
            var isValid = lg.ValidateUser(domain,txtUsername.Text,txtPassword.Text);
        }
    }
}