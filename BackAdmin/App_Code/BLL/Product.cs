using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BLL
{
    public class Product
    {
        public int Pid { get; set; }
        public string Pname { get; set; }
        public int Price { get; set; }
        public string Picname { get; set; }
        public int Cid { get; set; }
        public string Pdesc { get; set; }
    }
}