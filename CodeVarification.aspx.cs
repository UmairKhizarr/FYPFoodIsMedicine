using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodIsMedicine
{
    public partial class CodeVarification : System.Web.UI.Page
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
        protected void cmdSubmit_Click(object sender, EventArgs e)
        {
            var inputOTP = digit1.Value + digit2.Value + digit3.Value + digit4.Value + digit5.Value + digit6.Value;
            var result = Convert.ToInt32(inputOTP);

            //Response.Write(Request.Cookies["adminInfo"]["otpPass"]);
            var query = Request.Cookies["adminInfo"]["otpPass"];
            var serverOTP = Convert.ToInt32(query);

            if (result == serverOTP)
            {
                //Response.Redirect("Response.redirect")
                var queryres = Request.Cookies["adminInfo"]["adminEmail"];
                var userType = Request.QueryString["userType"];

                using (FYPEntities db = new FYPEntities())
                {
                    if (userType == "admin")
                    {
                        var resultquery = db.tblAdmins.FirstOrDefault(v => v.adminEmail == queryres);
                        var adminId = resultquery.adminID;
                        Request.Cookies["adminInfo"].Expires = DateTime.Now.AddDays(-1);
                        Response.Redirect("SetupNewPassword.aspx?adminId=" + adminId + "&userType=" + "admin");
                    }
                    else
                    {
                        var queryresult = db.tblUsers.FirstOrDefault(v => v.userEmail == queryres);
                        var userId = queryresult.userId;
                        Request.Cookies["adminInfo"].Expires = DateTime.Now.AddDays(-1);
                        Response.Redirect("SetupNewPassword.aspx?userId=" + userId + "&userType=" + "user");
                    }
                }
            }
            else
            {
                //Response.Write("Wrong OTP");
                lblmsg.Text = "OPT mismatch. Plz enter correct OTP";
            }

            //if(query)
            //lbltxt.Text = inputOTP;
        }
        protected void btnResend_Click(object sender, EventArgs e)
        {
            Response.Write(Request.Cookies["adminInfo"]["adminEmail"]);
            var message = DateTime.Now.ToString("hhmmss");
            Response.Cookies["adminInfo"]["adminEmail"] = Request.Cookies["adminInfo"]["adminEmail"];
            Response.Cookies["adminInfo"]["otpPass"] = message;
            var senderEmail = Request.Cookies["adminInfo"]["adminEmail"];
            Email.SendEmail(senderEmail, "OTP", message, "", "");
        }
    }
}