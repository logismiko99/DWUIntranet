using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using DAL.Models;
using DAL;

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

    }
}