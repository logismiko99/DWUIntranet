using DAL;
using DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DWUIntranet.pgnavibarside
{
    public partial class news : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [System.Web.Services.WebMethod]
        [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json)]//Specify return format.
        public static List<NewsList> GetNewsList()
        {
            Dbutility db = new Dbutility();
            var newslst = db.GetNewsList();
            return newslst;

        }
    }
}