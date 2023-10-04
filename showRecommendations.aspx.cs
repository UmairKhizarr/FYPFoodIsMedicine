using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CsvHelper;

namespace FoodIsMedicine
{
    public partial class showRecommendations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string path = Server.MapPath("dataset.csv");
                DataTable dt = ReadCsvFile(path);
                BindDataToGridView(dt);
            }
        }
        private DataTable ReadCsvFile(string filePath)
        {
            DataTable dt = new DataTable();

            using (StreamReader sr = new StreamReader(filePath))
            using (CsvReader csvReader = new CsvReader(sr, System.Globalization.CultureInfo.InvariantCulture))
            {
                string[] headers = { "Meal_Id", "Name", "catagory", "description", "Veg_Non", "Nutrient", "Disease", "Diet", "Price" };
                foreach (string header in headers)
                {
                    dt.Columns.Add(header);
                }

                // Read the data rows
                while (csvReader.Read())
                {
                    DataRow dr = dt.NewRow();
                    for (int i = 0; i < headers.Length; i++)
                    {
                        dr[i] = csvReader.GetField(i);
                    }
                    dt.Rows.Add(dr);
                }
            }

            return dt;
        }

        private void BindDataToGridView(DataTable dt)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

    }
}