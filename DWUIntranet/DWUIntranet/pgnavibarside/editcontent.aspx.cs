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
    public partial class editpresidentdesk : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [System.Web.Services.WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]//Specify return format.
        public static bool SaveContent(string title, string name, string content, string pageid)
        {
            Dbutility db = new Dbutility();

              bool output = db.SavePresidentContent(title, name, content, pageid);

            return output;
        }


        [System.Web.Services.WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]//Specify return format.
        public static PageContent GetContent(string pageid)
        {
            Dbutility db = new Dbutility();
            PageContent content = new PageContent();


            content = db.getpagecontent(pageid);

            return content;

        }
    }

    }

