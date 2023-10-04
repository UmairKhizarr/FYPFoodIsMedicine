using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodIsMedicine
{
    public partial class RequestDietPlan : System.Web.UI.Page
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
                ddldisease.DataValueField = "DiseaseID";
                ddldisease.DataBind();
                ddldisease.Items.Insert(0, new ListItem("Select Your Disease", "-1"));
            }
        }
        protected void btn_Click(object sender, EventArgs e)
        {
            if (ddldisease.SelectedValue == "-1")
            {
                lblerror.Text = "*Please select a dieases";
                lblerror.Visible = true;
            }
            else if (ddlfoodCategory.SelectedValue == "-1")
            {
                lblerror.Text = "*Please Select a Category";
                lblerror.Visible = true;

            }
            else
            {
                lblerror.Visible = false;
                string Tag = ddlfoodCategory.SelectedItem.Text + ' ' + radioBtnList.SelectedValue + ' ' + ddldisease.SelectedItem.Text;

                Response.Redirect("showDietPlan.aspx?TagStr=" + Tag);
            }
        }
    }
}