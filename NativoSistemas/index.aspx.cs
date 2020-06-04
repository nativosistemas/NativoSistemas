using NativoSistemas.code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NativoSistemas
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            //NativoSistemas.code.Helper.SendMail("Pablo6", "llll@mail.com", "213123", "hola mndo");
            //if (!IsPostBack)
            //{
            //try
            //{
            //    string EncodedResponse = Request.Form["g-recaptcha-response"];//g-Recaptcha-Response
            //                                                                  //TextBox1.Text = ReCaptchaClass.ValidateTest(EncodedResponse);
            //                                                                  //EncodedResponse = Request.QueryString["g-recaptcha-response"];
            //                                                                  // bool IsCaptchaValid = (ReCaptchaClass.Validate(EncodedResponse).ToLower() == "True".ToLower() ? true : false);

            //    // if (IsCaptchaValid)
            //    if (ReCaptchaClass.ValidateTest(EncodedResponse))
            //    {
            //        //Valid Request
            //        Response.Redirect("index_00.html");
            //    }
            //}
            //catch (Exception)
            //{
            //    //
            //    Response.Redirect("index_01.html");
            //}

            //g-recaptcha
            // ReCaptchaClass.Validate();
            //}

        }
        [WebMethod(EnableSession = true)]
        public static string SendMail(string name, string email, string phone, string message, string g_recaptcha_response)
        {
            string result = "0";
            if (ReCaptchaClass.ValidateTest(g_recaptcha_response))
            {//
                result = "1";
                //result = NativoSistemas.code.Helper.SendMail(name, email, phone, message);
                if (NativoSistemas.code.Helper.SendMail(name, email, phone, message) == "OK")//
                {
                    System.Web.HttpContext.Current.Session["envioMail"] = "OK";
                    result = "2";
                }
            }
            return result;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("index_00.html");
        }
    }
}