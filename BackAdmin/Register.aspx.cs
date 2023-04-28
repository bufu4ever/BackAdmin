using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;

namespace BackAdmin
{
    public partial class Register : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string password = TxtPass.Text;
                string confpass = TxtPassConf.Text;
                if(password == confpass)
                {
                    Session["Register"] = "ok";
                    Response.Redirect("/Manage");

                }
            }
        }

    }
}