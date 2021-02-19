using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Models
{
    public class EventContent
    {
        public string EventTitle { get; set; }
        public string Venue { get; set; }

        public string  Category { get; set; }

        public DateTime FromDate { get; set; }

        public DateTime ToDate { get; set; }

        public TimeSpan StartTime { get; set; }

        public TimeSpan EndTime { get; set; }


        public string AllowRegistration { get; set; }
        public string AllowUnRegistration { get; set; }
        public string Repetition { get; set; }
        public string ImagePath { get; set; }
        public string Description { get; set; }
    }
}
