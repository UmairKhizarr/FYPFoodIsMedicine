using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodIsMedicine
{
    public partial class listAdmins : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (FYPEntities db = new FYPEntities())
            {
                var query = db.listAdmins().ToList();
                GVB.DataSource = query;
                GVB.DataBind();
            }
        }
        protected void GV_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                Response.Redirect("addAdmin.aspx?adminID=" + e.CommandArgument);
            }
            else if (e.CommandName == "delete")
            {
                using (FYPEntities db = new FYPEntities())
                {
                    db.deleteAdmin(Convert.ToInt32(e.CommandArgument));
                }
                Response.Redirect("listAdmins.aspx");
            }
        }
        protected void GV_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
        protected void GV_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
    }
}