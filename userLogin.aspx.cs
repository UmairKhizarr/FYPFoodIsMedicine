using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodIsMedicine
{
    public partial class userLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            using (FYPEntities db = new FYPEntities())
            {
                var query = db.userLoginPro(txtusername.Text, txtPass.Text).ToList();
                if (query.Count > 0)
                {
                    Response.Cookies["userLogin"]["userName"] = txtusername.Text;
                    Response.Cookies["userLogin"].Expires = DateTime.Now.AddDays(1);
                    Response.Redirect("Home.aspx?userType=" + "user");
                }
                else
                {
                    lblMsg.Text = "Invalid UserName or Password!!!";
                }
            }
        }
        protected void forPass_Click(object sender, EventArgs e)
        {
            Response.Redirect("forgotPass.aspx?userType=" + "user");
        }
    }
}