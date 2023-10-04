using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodIsMedicine
{
    public partial class forgotPass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public class Email
        {
            public static bool SendEmail(string toadd, string subject, string msg, string cc = "", string bcc = "")
            {
                MailMessage message = new MailMessage();
                SmtpClient client = new SmtpClient();
                try
                {
                    string SendingEmail = "", MailServer = "", SendingPassword = "";
                    SendingEmail = "gymaccessories64@gmail.com";
                    MailServer = "smtp.gmail.com";
                    SendingPassword = "rxbxftqjahswgnto";
                    int ServerPort = 587;
                    message.IsBodyHtml = true;

                    message.From = new MailAddress(SendingEmail, "Noreply");

                    if (toadd.Contains(","))
                    {
                        string[] arrto = toadd.Split(',');
                        for (int i = 0; i <= arrto.Length - 1; i++)
                        {
                            if (!string.IsNullOrEmpty(arrto[i].Trim()))
                            {
                                message.To.Add(new MailAddress(arrto[i].Trim()));
                            }
                        }
                    }
                    else
                    {
                        message.To.Add(new MailAddress(toadd.ToString()));
                    }

                    if (!string.IsNullOrEmpty(cc))
                    {
                        message.CC.Add(new MailAddress(cc.ToString()));
                    }

                    if (!string.IsNullOrEmpty(bcc))
                    {
                        message.Bcc.Add(new MailAddress(bcc.ToString()));
                    }
                    message.Body = msg;
                    message.Subject = subject;

                    client.Host = MailServer;
                    client.Port = ServerPort;
                    client.EnableSsl = true;
                    client.UseDefaultCredentials = true;
                    client.Credentials = new System.Net.NetworkCredential(SendingEmail, SendingPassword);

                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    client.Send(message);
                    return true;
                }
                catch (Exception ex)
                {
                    return false;
                }
                finally
                {
                    message = null;
                    client = null;
                }
            }
        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            using (FYPEntities db = new FYPEntities())
            {
                var userType = Request.QueryString["userType"];
                var query = db.emailchecker(txtemail.Text, userType).ToList();

                if (query.Count > 0)
                {
                    var otpPass = DateTime.Now.ToString("hhmmss");
                    Response.Cookies["adminInfo"]["otpPass"] = otpPass;
                    Response.Cookies["adminInfo"]["adminEmail"] = txtemail.Text;
                    Email.SendEmail(txtemail.Text, "OTP", "Your One time Password is \n " + otpPass + "\n Use this security key to set Your new Password.", "", "");
                    Response.Redirect("CodeVarification.aspx?userType=" + userType);
                }
                else
                {
                    lbltxt.Text = "Invalid. Enter Registered Email Address";
                }
            }
        }
        protected void btncancel_Click(object sender, EventArgs e)
        {
            var result = Request.QueryString["userType"];
            if (result == "admin")
            {
                Response.Redirect("adminLogin.aspx");
            }
            else
            {
                Response.Redirect("userLogin.aspx");
            }
        }
    }
}