using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace DWUIntranet
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            (Page.Master.FindControl("activedash") as HtmlControl).Attributes.Add("class", "active");

            (Page.Master.FindControl("activehrmgt") as HtmlControl).Attributes.Add("class", "tabhide");
            (Page.Master.FindControl("activefinancedivi") as HtmlControl).Attributes.Add("class", "tabhide");
            (Page.Master.FindControl("activedsr") as HtmlControl).Attributes.Add("class", "tabhide");
            (Page.Master.FindControl("activestaffdirectory") as HtmlControl).Attributes.Add("class", "tabhide");
            (Page.Master.FindControl("activenews") as HtmlControl).Attributes.Add("class", "tabhide");
            (Page.Master.FindControl("activeevents") as HtmlControl).Attributes.Add("class", "tabhide");
            (Page.Master.FindControl("activepublicservice") as HtmlControl).Attributes.Add("class", "tabhide");
            (Page.Master.FindControl("activeboxofideas") as HtmlControl).Attributes.Add("class", "tabhide");

            (Page.Master.FindControl("nav1") as HtmlControl).Attributes.Add("class", "tabhide");
            (Page.Master.FindControl("nav2") as HtmlControl).Attributes.Add("class", "tabhide");
            (Page.Master.FindControl("nav3") as HtmlControl).Attributes.Add("class", "tabhide");

            (Page.Master.FindControl("Label1") as Label).Text = "Dashboard";

        }
    }
}