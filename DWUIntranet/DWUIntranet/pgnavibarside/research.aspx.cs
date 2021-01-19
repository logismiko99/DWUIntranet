using DAL;
using DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace DWUIntranet.pgnavibarside
{
    public partial class research : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            (Page.Master.FindControl("activeresearch") as HtmlControl).Attributes.Add("class", "active");
            (Page.Master.FindControl("Label1") as Label).Text = "Research And Higher Degrees";
            (Page.Master.FindControl("sidedash") as HtmlAnchor).HRef = "~/pghome/home.aspx";

        }


        [System.Web.Services.WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]//Specify return format.
        public static PageContent SetContent(string pageid)
        {
            Dbutility db = new Dbutility();
            PageContent c = new PageContent();
            c = db.getpagecontent(pageid);

            return c;
        }
    }
}