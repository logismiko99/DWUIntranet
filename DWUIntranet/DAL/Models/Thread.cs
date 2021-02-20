using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Models
{
    public class Thread
    {
        public int SubCode{ get; set; }
        public string Title { get; set; }
        public string Text{ get; set; }
        public string FilePath { get; set; }

        public string Subscribed { get; set; }
        public string Comment { get; set; }
    }
}
