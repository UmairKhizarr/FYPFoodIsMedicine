using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Python.Runtime;

namespace FoodIsMedicine
{
    public partial class showDietPlan : Page
    {
        private static bool pythonInitialized = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            PythonPathSetter.SetPythonPath();
            Environment.CurrentDirectory = @"D:\FYPProject\FoodIsMedicine\FoodIsMedicine";
            var tag = Request.QueryString["TagStr"];

            if (tag == null)
            {
                Response.Redirect("RequestDietPlan.aspx");
            }
            else
            {
                using (Py.GIL())
                {
                    //Importing Python model file model.py
                    dynamic module = Py.Import("model");

                    //Importing Function named find_func from it 
                    dynamic func = module.find_func;

                    //Passing input String Tag to the function and get our desried result...
                    dynamic result = func(tag);

                    //Converting Python Dictnoary to Asp.net Dictnoary

                    Dictionary<string, string> dict = new Dictionary<string, string>();

                    //For Accessing Direct Values intsead of index...
                    foreach (dynamic item in result.items())
                    {
                        string key = item[0];
                        string value = item[1];

                        dict.Add(key, value);
                    }

                    lblName.Text = dict["Name"];
                    lblDietType.Text = dict["diets"];
                    lblDiseases.Text = dict["diseases"];
                    lblNutrients.Text = dict["nutrient"];
                    lblIngredients.Text = dict["Ingredients"];
                }
            }
        }
        public class PythonPathSetter
        {
            public static void SetPythonPath()
            {
                string pythonPath = @"C:\Users\SOFTAGE\AppData\Roaming\Python\Python37\site-packages;C:\Program Files\Python37\Lib\site-packages;D:\FYPProject\FoodIsMedicine\FoodIsMedicine";
                Environment.SetEnvironmentVariable("PYTHONPATH", pythonPath);
            }
        }
    }
}
