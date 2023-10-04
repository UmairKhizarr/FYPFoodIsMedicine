using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodIsMedicine
{
    public partial class adminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            using (FYPEntities db = new FYPEntities())
            {
                var query = db.adminLogin(txtusername.Text, txtPass.Text).ToList();
                if (query.Count > 0)
                {
                    //Response.Cookies["AdminLogin"]["adminName"] = txtusername.Text;
                    Response.Redirect("AdminDashboard.aspx?userType" + "admin");
                }
                else
                {
                    lbl.Text = "Invalid Username or Password!!";
                }


            }
        }
        protected void forPass_Click(object sender, EventArgs e)
        {
            Response.Redirect("forgotPass.aspx?userType=" + "admin");
        }
    }
}