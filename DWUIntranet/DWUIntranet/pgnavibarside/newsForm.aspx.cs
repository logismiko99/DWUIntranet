using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DWUIntranet.pgnavibarside
{
    public partial class newsForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Dbutility db = new Dbutility();
            var isinserted = db.SaveNewContent(NewsTitle.Text, NewsContent.Text);
            if (isinserted)
            {
                Response.Redirect("newslist.aspx");
            }
            else
            {
                Response.Redirect("newsForm.aspx");
            }
        }
    }
}