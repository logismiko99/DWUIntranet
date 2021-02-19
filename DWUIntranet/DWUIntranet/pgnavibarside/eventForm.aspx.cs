using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using DAL.Models;
using DAL;

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

            //cmd.Parameters.AddWithValue("@Date", Convert.ToDateTime(DateTime.Now.ToShortDateString()));
            //cmd.Parameters.AddWithValue("@Time", Convert.ToDateTime(DateTime.Now.ToString("HH:mm:ss")))

            ev.EventTitle = txtTitle.Text;
            ev.FromDate= DateTime.ParseExact(fromDate.Text, "MM/dd/yyyy", null);
            ev.ToDate = DateTime.ParseExact(toDate.Text, "MM/dd/yyyy", null);
            ev.StartTime = startTime.Text;
            ev.EndTime = endTime.Text;
            ev.Venue = venue.SelectedItem.Text.ToString();
            ev.Category = category.SelectedItem.Text.ToString();
            ev.AllowRegistration = allowReg.SelectedItem.Value.ToString();
            ev.AllowUnRegistration = allowUnReg.SelectedItem.Value.ToString();
            ev.Repetition = DropRetition.SelectedItem.Text.ToString();
            ev.ImagePath = "";
            ev.Description = txtDescription.Text;

            Dbutility db = new Dbutility();
            var isinserted = db.SaveNewEvent(ev);
            if (isinserted)
            {
                Response.Redirect("events.aspx");
            }
            else
            {
                Response.Redirect("eventForm.aspx");
            }


        }
    }
}