using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodIsMedicine
{
    public partial class addAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                return;
            }
            using (FYPEntities db = new FYPEntities())
            {
                var adminID = Request.QueryString["adminID"];
                //Response.Write(adminID);
                if (adminID != null)
                {
                    var adminIDInt = Convert.ToInt32(adminID);
                    var tb = db.tblAdmins.FirstOrDefault(v => v.adminID == adminIDInt);
                    txtname.Text = tb.adminName;
                    txtemail.Text = tb.adminEmail;
                    txtPass.Attributes["value"] = tb.adminPassword;
                    txtConfirmPass.Attributes["value"] = tb.adminPassword;
                }
            }
        }
        public static string Encryption(string password)
        {
            try
            {
                byte[] encData_byte = new byte[password.Length];
                encData_byte = System.Text.Encoding.UTF8.GetBytes(password);
                string encodedData = Convert.ToBase64String(encData_byte);
                return encodedData;
            }
            catch (Exception ex)
            {
                throw new Exception("Error in base64Encode" + ex.Message);
            }
        }
        protected void btnAddDietitian_Click(object sender, EventArgs e)
        {
            //var Pass = "passs123";
            //var EncryptPass =  Encryption(Pass);
            //lblinvalidEmail.Text = EncryptPass.Length.ToString();
            using (FYPEntities db = new FYPEntities())
            {
                tblAdmin tb = null;
                if (Request.QueryString["adminID"] != null)
                {
                    var query = Convert.ToInt32(Request.QueryString["adminID"]);
                    //Response.Write(query);               
                    tb = db.tblAdmins.FirstOrDefault(v => v.adminID == query);
                    //Response.Write(tb);
                    var checkEmail = db.tblAdmins.FirstOrDefault(v => v.adminEmail == txtemail.Text && v.adminID != query);
                    if (checkEmail != null)
                    {
                        lblinvalidEmail.Text = "*Already Registered Email Address. Please Try another one...";
                    }
                }
                else
                {
                    var checkMail = db.tblAdmins.FirstOrDefault(v => v.adminEmail == txtemail.Text);
                    if (checkMail != null)
                    {
                        lblinvalidEmail.Text = "*Already Registered Email Address. Please Try another one...";
                    }
                    tb = new tblAdmin();
                }
                tb.adminEmail = txtemail.Text;
                tb.adminName = txtname.Text;
                var encryptedPass = Encryption(txtPass.Text);
                tb.adminPassword = encryptedPass;
                if (Request.QueryString["adminID"] == null)
                {
                    db.tblAdmins.Add(tb);
                }
                db.SaveChanges();
            }
            Response.Redirect("listAdmins.aspx");
        }
    }
}