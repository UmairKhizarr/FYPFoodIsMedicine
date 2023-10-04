using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodIsMedicine
{
    public partial class addRecommendation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnAddRec_Click(object sender, EventArgs e)
        {
            string filePath = "dataset.csv";
            int record = 0;

            string path = Server.MapPath(filePath);

            //To read all the data and return the no of records in the .csv file.
            //In that way we would get meal_id 
            using (StreamReader sr = new StreamReader(path))
            {
                string line;
                while ((line = sr.ReadLine()) != null)
                {
                    record++;
                }
            }
            string meal_id = "meal_id" + record.ToString();
            record = 0;
            string dietName = txtDietName.Text.ToLower();
            string catagory = ddlCatagory.SelectedValue.ToString();
            string description = lblIngredients.Text.ToLower();
            string vegNon = lblVegNon.Text;
            string Nutrients = lblNutrients.Text.ToLower();
            string disease = lblDiseases.Text.ToLower();
            string diet = lblDietTypes.Text.ToLower();

            //string path = Server.MapPath(filePath);

            using (StreamWriter sw = new StreamWriter(path, true))
            {
                //Using comma here is a default .csv file delimiter which we sperate our fields values... 
                sw.WriteLine(meal_id + "," + dietName + "," + catagory + "," + description + "," + vegNon + "," +
                    Nutrients + "," + disease + "," + diet + "," + "300");
                //By Using upper line we insert one compelete record into the dataset.csv file.....
            }
        }
    }
}