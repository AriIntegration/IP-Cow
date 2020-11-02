using System;
using System.Net;
using System.Web;
using System.Web.Configuration;

namespace IP_Cow
{
    public partial class Default : System.Web.UI.Page
    {
        static String sHostName = String.Empty;
        static String sDevice = String.Empty;
        static String sOS = String.Empty;
        static Boolean IsMobile;

        protected void Page_Load(object sender, EventArgs e)
        {
            CheckBrowserCaps();
            HttpBrowserCapabilities bc = Request.Browser;

            try
            {
                sHostName = Dns.GetHostEntry(Request.ServerVariables["REMOTE_ADDR"]).HostName;
            }
            catch
            {
                sHostName = "NULL";
            }

            sDevice = GetComputerTypeByUserAgent(Request.UserAgent);
            sOS = GetOSByUserAgent(Request.UserAgent);

            lblUserAgent.Text = Request.UserAgent;
            lblUserIP.Text = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
            lbl1.Text = "Hostname = <b>" + sHostName + "</b>";
            lbl2.Text = "Device = <b>" + sDevice + "</b>";
            lbl3.Text = "Operating System = <b>" + sOS + "</b>";
            lbl4.Text = "Browser Name = <b>" + bc.Browser + "</b>";
            lbl5.Text = "Browser Version = <b>" + bc.Version + "</b>";
            lbl6.Text = "Is Mobile Device = <b>" + IsMobile + "</b>";
            lbl7.Text = "Is Beta = <b>" + bc.Beta + "</b>";
            lbl8.Text = "Screen Resolution = <b><scr" + "ipt>document.write(screen.width)</scr" + "ipt> x <scr" + "ipt>document.write(screen.height)</scr" + "ipt></b>";
        }
        void CheckBrowserCaps()
        {
            HttpBrowserCapabilities myBrowserCaps = Request.Browser;
            IsMobile = ((HttpCapabilitiesBase)myBrowserCaps).IsMobileDevice;
        }
        public static string GetOSByUserAgent(string userAgent)
        {
            string os;
            char[] delimiterChars = { '(', ')', ';', ':' };
            string s = userAgent;
            string[] values = s.Split(delimiterChars);

            os = values[2].Replace('_', '.').Replace("Intel ", "").Replace("CrOS ", "Chrome OS ");

            if (sDevice == "PC") os = values[1];

            return os;
        }
        public static string GetComputerTypeByUserAgent(string userAgent)
        {
            string os;
            char[] delimiterChars = { '(', ')', ';', ':' };
            string s = userAgent;
            string[] values = s.Split(delimiterChars);

            os = values[1];

            if (os.Contains("Windows") == true) os = "PC";

            return os;
        }
    }
}