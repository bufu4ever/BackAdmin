using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace BackAdmin.Manage
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string Html = "";
                List<Product> LstProd = (List<Product>)Application["Products"];
                RptProds.DataSource = LstProd;
                RptProds.DataBind();

                for (int i = 0; i < LstProd.Count; i++)
                {
                    Html += $@"<tr class=""gradeA odd"" role=""row"">
                                                    <td class=""sorting_1"">{LstProd[i].Pid}</td>
                                                    <td>{LstProd[i].Pname}</td>
                                                    <td>{LstProd[i].Price}</td>
                                                    <td class=""center"">{LstProd[i].Picname}</td>
                                                    <td class=""center"">{LstProd[i].Cid}</td>
                                                </tr>";
                }
                

            }
        }
    }
}