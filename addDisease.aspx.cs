using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodIsMedicine
{
    public partial class addDisease : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            if (Request.QueryString["DiseaseID"] != null)
            {
                using (FYPEntities db = new FYPEntities())
                {
                    int Diseaseid = Convert.ToInt32(Request.QueryString["DiseaseID"]);
                    tblDiseas a = db.tblDiseases.FirstOrDefault(v => v.DiseaseID == Diseaseid);
                    if (a != null)
                    {
                        txtname.Text = a.DiseaseName;
                    }

                }
            }
        }
        protected void btnAddDisease_Click(object sender, EventArgs e)
        {

            using (FYPEntities db = new FYPEntities())
            {
                if (Request.QueryString["DiseaseID"] != null)
                {
                    int Diseaseid = Convert.ToInt32(Request.QueryString["DiseaseID"]);
                    tblDiseas a = db.tblDiseases.FirstOrDefault(v => v.DiseaseID == Diseaseid);
                    a.DiseaseName = txtname.Text;
                    db.SaveChanges();
                    Response.Redirect("listDiseases.aspx");
                }
                else
                {
                    tblDiseas a = new tblDiseas();
                    a.DiseaseName = txtname.Text;
                    db.tblDiseases.Add(a);
                    db.SaveChanges();
                    Response.Redirect("listDiseases.aspx");
                }
            }
        }
    }
}