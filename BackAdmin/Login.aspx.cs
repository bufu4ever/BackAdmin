using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BackAdmin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnReg_Click(object sender, EventArgs e)
        {
            if(TxtUser.Text=="abc@abc.co.il" && TxtPass.Text=="123")
            {
                Session["Login"] = "ok";// יצירת משתנה מסוג סשן ושמירת המחרוזת בתוכו
                Response.Redirect("/manage/");// העברת המשתמש לעמוד הבית של ממשק הניהול
            }
        }

        
    }
}