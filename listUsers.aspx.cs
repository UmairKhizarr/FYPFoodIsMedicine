using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodIsMedicine
{
    public partial class listUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (FYPEntities db = new FYPEntities())
            {
                var query = db.listUsers().ToList();
                GVB.DataSource = query;
                GVB.DataBind();
            }
        }
        protected void btnBlockUser_Click1(object sender, EventArgs e)
        {
        }
        protected void btnActiveUser_Click1(object sender, EventArgs e)
        {
        }
        protected void btnBlockUser_Command(object sender, CommandEventArgs e)
        {
            int userId = Convert.ToInt32(e.CommandArgument);
            using (FYPEntities db = new FYPEntities())
            {
                db.blockUser(userId);
            }
            Response.Redirect("listUsers.aspx");
        }
        protected void btnActiveUser_Command(object sender, CommandEventArgs e)
        {
            int userId = Convert.ToInt32(e.CommandArgument);
            using (FYPEntities db = new FYPEntities())
            {
                db.activateUser(userId);
            }
            Response.Redirect("listUsers.aspx");
        }
    }
}