using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodIsMedicine
{
    public partial class updatedPass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var query = Request.QueryString["userType"];
            if (query == "admin")
            {
                Response.Redirect("adminLogin.aspx");
            }
            else
            {
                Response.Redirect("userLogin.aspx");
            }
        }
    }
}