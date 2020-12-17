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
            (Page.Master.FindControl("dash1") as HtmlControl).Attributes.Add("class", "tabhide");
            (Page.Master.FindControl("dash2") as HtmlControl).Attributes.Add("class", "tabhide");
            (Page.Master.FindControl("dash3") as HtmlControl).Attributes.Add("class", "tabhide");
            (Page.Master.FindControl("dash4") as HtmlControl).Attributes.Add("class", "tabhide");
            (Page.Master.FindControl("dash5") as HtmlControl).Attributes.Add("class", "tabhide");
            (Page.Master.FindControl("dash6") as HtmlControl).Attributes.Add("class", "tabhide");
            (Page.Master.FindControl("dash7") as HtmlControl).Attributes.Add("class", "tabhide");
            (Page.Master.FindControl("dash8") as HtmlControl).Attributes.Add("class", "tabhide");

            (Page.Master.FindControl("nav1") as HtmlControl).Attributes.Add("class", "tabhide");
            (Page.Master.FindControl("nav2") as HtmlControl).Attributes.Add("class", "tabhide");
            (Page.Master.FindControl("nav3") as HtmlControl).Attributes.Add("class", "tabhide");
        }
    }
}