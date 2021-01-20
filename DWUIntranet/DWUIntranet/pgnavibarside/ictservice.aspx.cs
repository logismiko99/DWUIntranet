﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace DWUIntranet.pgnavibarside
{
    public partial class ictservice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            (Page.Master.FindControl("activeict") as HtmlControl).Attributes.Add("class", "active");
            (Page.Master.FindControl("Label1") as Label).Text = "ICT Services";
            (Page.Master.FindControl("sidedash") as HtmlAnchor).HRef = "~/pghome/home.aspx";
        }
    }
}