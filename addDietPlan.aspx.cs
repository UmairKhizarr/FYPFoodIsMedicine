using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodIsMedicine
{
    public partial class addDietPlan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                return;
            }
            using (FYPEntities db = new FYPEntities())
            {
                var query = db.getDiseases();
                ddldisease.DataSource = query;
                ddldisease.DataTextField = "DiseaseName";
                ddldisease.DataValueField = "DiseaseName";
                ddldisease.DataBind();
                ddldisease.Items.Insert(0, new ListItem("Select Disease", ""));
            }
        }
        protected void btnGetData_Click(object sender, EventArgs e)
        {
            if (ddldisease.SelectedValue == "")
            {
                lblerror.Style["margin-left"] = "20px";
                lblerror.Text = "*Please Select a Disease";
            }
            else if (ddlfoodCategory.SelectedValue == "")
            {
                lblerror.Style["margin-left"] = "20px";
                lblerror.Text = "*Please Select a Food Category";
            }
            else
            {
                string tag = ddlfoodCategory.SelectedValue + ' ' + radioBtnList.SelectedValue + ' ' + ddldisease.SelectedValue;
                Response.Write(tag);


            }
        }
    }
}