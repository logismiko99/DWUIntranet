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
    public partial class publicservice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [System.Web.Services.WebMethod]
        [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json)]//Specify return format.
        public static List<PublicService> GetEductionList()
        {
            Dbutility db = new Dbutility();
            var edulist = db.GetEductionList();
            return edulist;

        }

        [System.Web.Services.WebMethod]
        [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json)]//Specify return format.
        public static List<PublicService> GetEmergencyService()
        {
            Dbutility db = new Dbutility();
            var emergencylst = db.GetEmergencyService();
            return emergencylst;

        }

        [System.Web.Services.WebMethod]
        [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json)]//Specify return format.
        public static List<PublicService> GetEntertainment()
        {
            Dbutility db = new Dbutility();
            var entertainmentlst = db.GetEntertainment();
            return entertainmentlst;

        }

        [System.Web.Services.WebMethod]
        [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json)]//Specify return format.
        public static List<PublicService> GetHealthService()
        {
            Dbutility db = new Dbutility();
            var healthlst = db.GetHealthService();
            return healthlst;

        }
    }
}