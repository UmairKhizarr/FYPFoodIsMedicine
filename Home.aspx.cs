using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodIsMedicine
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void cmdRequestDeit_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["userLogin"] != null)
            {
                Response.Redirect("RequestDietPlan.aspx");
            }
            else
            {
                Response.Redirect("userLogin.aspx");
            }
        }
    }
}