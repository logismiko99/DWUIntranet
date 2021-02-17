using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using DAL.Models;

namespace DWUIntranet.pgnavibarside
{
    public partial class eventForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
{


            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            List<EventContent> nEve = new List<EventContent>();
            EventContent ev = new EventContent();

            ev.EventTitle = txtTitle.ToString();
            ev.FromDate= DateTime.ParseExact(fromDate.ToString(), "dd/MM/yyyy", null);
            ev.ToDate = DateTime.ParseExact(toDate.ToString(), "dd/MM/yyyy", null);
            TimeSpan stTime = TimeSpan.Parse(startTime.ToString());
            ev.StartTime = stTime;
            TimeSpan edTime = TimeSpan.Parse(endTime.ToString());
            ev.StartTime = edTime;
            ev.Venue = venue.SelectedItem.Text.ToString();
            ev.Category = category.SelectedItem.Text.ToString();
            ev.AllowRegistration = allowReg.SelectedItem.Value.ToString();
            ev.AllowUnRegistration = allowUnReg.SelectedItem.Value.ToString();
            ev.Repetition = DropRetition.SelectedItem.Text.ToString();
            ev.Description = txtDescription.ToString();


        }
    }
}