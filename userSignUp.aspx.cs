using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodIsMedicine
{
    public partial class userSignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            using (FYPEntities db = new FYPEntities())
            {
                var query = db.tblUsers.FirstOrDefault(v => v.userEmail == txtemail.Text);
                if (query == null)
                {
                    tblUser tb = new tblUser();
                    tb.userName = txtusername.Text;
                    tb.userEmail = txtemail.Text;
                    tb.userPassword = txtPass.Text;
                    lbl.Text = "";
                    db.tblUsers.Add(tb);
                    db.SaveChanges();
                    Response.Redirect("userLogin.aspx");
                }
                else
                {
                    lbl.Text = "Already Registered Email Address.";
                }

            }
        }
        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}