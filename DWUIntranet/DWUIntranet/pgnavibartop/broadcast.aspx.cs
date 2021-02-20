using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using DAL.Models;
using DAL;
using System.Web.Script.Services;

namespace DWUIntranet.pgnavibartop
{
    public partial class broadcast : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            populatecategory();
        }

        public void populatecategory()
        {
            Dbutility Db = new Dbutility();
            Db.FillDataTable(title);
        }

        [System.Web.Services.WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]//Specify return format.
        public static bool SaveThreads(string subcode,string title, string txt, string filepath, string subscribed, string comment)
        {
            Dbutility db = new Dbutility();
            var isinsert = db.SaveThread(subcode, title,, txt, filepath, subscribed, comment);
            return isinsert;

        }




    }
}