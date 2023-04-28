using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BackAdmin.Manage
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["Login"]  == null || Session["Login"] != "ok")
            //{
            //    Response.Redirect("/Login.aspx");
            //}
        }
    }
}