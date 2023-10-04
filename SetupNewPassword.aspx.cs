using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodIsMedicine
{
    public partial class SetupNewPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void cmdSubmit_Click(object sender, EventArgs e)
        {
            using (FYPEntities db = new FYPEntities())
            {
                if (Request.QueryString["userType"] == "admin")
                {
                    var adminID = Convert.ToInt32(Request.QueryString["adminId"]);
                    var query = db.tblAdmins.FirstOrDefault(v => v.adminID == adminID);
                    query.adminPassword = txtPassword.Text;
                    db.SaveChanges();
                }
                else
                {
                    var userId = Convert.ToInt32(Request.QueryString["userId"]);
                    var query = db.tblUsers.FirstOrDefault(v => v.userId == userId);
                    query.userPassword = txtPassword.Text;
                    db.SaveChanges();
                }
            }
            Response.Redirect("updatedPass.aspx?userType=" + Request.QueryString["userType"]);
        }
    }
}