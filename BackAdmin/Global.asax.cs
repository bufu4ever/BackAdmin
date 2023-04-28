using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using BLL;
namespace BackAdmin
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            

            List<Product> LstProd = new List<Product>();
            Product tmp;
            tmp = new Product()
            {
                Pid = 1,
                Pdesc = "לחם לבן מומלץ",
                Price = 100,
                Picname = "bread.jpg",
                Pname = "לחם לבן",
                Cid = 20
            };
            LstProd.Add(tmp);
            tmp = new Product()
            {
                Pid = 2,
                Pdesc = "גבינה צהובה מומלץ",
                Price = 200,
                Picname = "cheese.jpg",
                Pname = "גבינה לבנה",
                Cid = 20
            };
            LstProd.Add(tmp);
            tmp = new Product()
            {
                Pid = 4,
                Pdesc = "ביצי חופש מובחרות",
                Price = 1000,
                Picname = "eggs.jpg",
                Pname = "ביצי חופש",
                Cid = 30
            };
            LstProd.Add(tmp);
            tmp = new Product()
            {
                Pid = 8,
                Pdesc = "חלב עמיד בקרטון מומלץ",
                Price = 1500,
                Picname = "milk.jpg",
                Pname = "חלב עמיד",
                Cid = 50
            };
            LstProd.Add(tmp);

            Application["Products"] = LstProd;


        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}