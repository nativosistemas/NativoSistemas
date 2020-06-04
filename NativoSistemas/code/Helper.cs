using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Runtime.Serialization.Json;
using System.IO;
using System.Text;

namespace NativoSistemas.code
{
    public class Helper
    {
        public static string SendMail(string name, string email, string phone, string message)
        {
            try
            {

                String contacto_mail_to = System.Configuration.ConfigurationManager.AppSettings["contacto_mail_to"].ToString();
                String mail_From = System.Configuration.ConfigurationManager.AppSettings["smtp_mailFrom"].ToString(); 
                String smtp_mail = System.Configuration.ConfigurationManager.AppSettings["smtp_mail"].ToString();
                String smtp_pass = System.Configuration.ConfigurationManager.AppSettings["smtp_pass"].ToString();
                String smtp_host = System.Configuration.ConfigurationManager.AppSettings["smtp_host"].ToString();
                int smtp_port = Convert.ToInt32(System.Configuration.ConfigurationManager.AppSettings["smtp_port"]);

                DateTime? fec = DateTime.Now;
                string body = string.Empty;
                body += "<b>Name: </b>" + name + "<br/>";
                body += "<b>Email: </b>" + email + "<br/>";
                body += "<b>Phone: </b>" + phone + "<br/>";
                body += "<b>Datetime: </b>" + DateTime.Now.ToString() + "<br/>";
                body += "<b>Message: </b><br/>" + Environment.NewLine + message;
                MailMessage correo = new System.Net.Mail.MailMessage();
                string asunto = "NativoSistemas - Contacto";
                correo.From = new MailAddress(smtp_mail);
                //correo.From = new MailAddress(mail_From); 
                correo.To.Add(contacto_mail_to);
                correo.Subject = asunto;
                correo.Body = body;
                correo.IsBodyHtml = true;
                correo.Priority = MailPriority.Normal;
                SmtpClient smtp = new System.Net.Mail.SmtpClient(smtp_host);
                //smtp.UseDefaultCredentials = false;
                //smtp.UseDefaultCredentials = true;
                smtp.Credentials = new System.Net.NetworkCredential(smtp_mail, smtp_pass);
                //smtp.Port = 587;// puerto dsd mi local
                //smtp.Port = 465;// puerto dsd donweb
                smtp.Port = smtp_port;
                //smtp.EnableSsl = true;

                smtp.Send(correo);
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            return "OK";
        }
    }
    public class ReCaptchaClass
    {
        public static string Validate(string EncodedResponse)
        {
            var client = new System.Net.WebClient();

            string PrivateKey = "6LdGPiAUAAAAAK9_uBW4WD7AxTuOQxv1IbfPTUPN";

            var GoogleReply = client.DownloadString(string.Format("https://www.google.com/recaptcha/api/siteverify?secret={0}&response={1}", PrivateKey, EncodedResponse));

            var captchaResponse = Serializador.DeserializarJson<ReCaptchaClass>(GoogleReply);

            return captchaResponse.success;
        }
        public static bool ValidateTest(string EncodedResponse)
        {
            string result = "false";
            var client = new System.Net.WebClient();

            string PrivateKey = "6LdGPiAUAAAAAK9_uBW4WD7AxTuOQxv1IbfPTUPN";

            string GoogleReply = client.DownloadString(string.Format("https://www.google.com/recaptcha/api/siteverify?secret={0}&response={1}", PrivateKey, EncodedResponse));

            if (!string.IsNullOrEmpty(GoogleReply) && GoogleReply.ToLower().Contains("true"))
                result = "true";

            return result == "true" ? true : false;
            //{  "success": true,  "challenge_ts": "2017-05-26T00:22:43Z",  "hostname": "nativosistemas.com"}
        }
        //[JsonProperty("success")]
        public string success
        {
            get { return m_Success; }
            set { m_Success = value; }
        }

        private string m_Success;
        //[JsonProperty("error-codes")]
        //public List<string> error-codes
        //{
        //    get { return m_ErrorCodes; }
        //    set { m_ErrorCodes = value; }
        //}


        private List<string> m_ErrorCodes;
    }
    public static class Serializador
    {

        /// <summary> 
        /// Método extensor para serializar JSON cualquier objeto 
        /// </summary> 
        public static string SerializarAJson(this object objeto)
        {
            string jsonResultado = string.Empty;
            try
            {
                DataContractJsonSerializer jsonSerializar = new DataContractJsonSerializer(objeto.GetType());
                MemoryStream ms = new MemoryStream();
                jsonSerializar.WriteObject(ms, objeto);
                jsonResultado = Encoding.UTF8.GetString(ms.ToArray());
            }
            catch { throw; }
            return jsonResultado;
        }
        public static T DeserializarJson<T>(this string jsonSerializado)
        {
            try
            {
                T obj = Activator.CreateInstance<T>();
                MemoryStream ms = new MemoryStream(Encoding.UTF8.GetBytes(jsonSerializado));
                DataContractJsonSerializer serializer = new DataContractJsonSerializer(obj.GetType());
                obj = (T)serializer.ReadObject(ms);
                ms.Close();
                ms.Dispose();
                return obj;
            }
            catch { return default(T); }
        }
    }
}