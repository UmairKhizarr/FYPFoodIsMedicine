using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodIsMedicine
{
    public partial class listDiseases : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillDiseases();
        }
        protected void FillDiseases()
        {
            using (FYPEntities db = new FYPEntities())
            {
                var Diseases = db.listDiseases().ToList();
                GV.DataSource = Diseases;
                GV.DataBind();
            }
        }
        protected void GV_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                Response.Redirect("addDisease.aspx?DiseaseID=" + e.CommandArgument);
            }

            else if (e.CommandName == "delete")
            {
                using (FYPEntities db = new FYPEntities())
                {

                    int DiseaseID = Convert.ToInt32(e.CommandArgument);
                    db.deleteDisease(DiseaseID);

                }
                FillDiseases();
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