using System;
using System.Net;
using System.Web;
using UAParser;

namespace IPCow.Website
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BuildPage();
        }

        private void BuildPage()
        {
            string sIPAddress = IPnetworking.GetIP4Address();
            string uaString = Request.UserAgent;
            HttpBrowserCapabilities bc = Request.Browser;

            string sHostName;
            try
            {
                sHostName = Dns.GetHostEntry(IPAddress.Parse(sIPAddress)).HostName.ToString();
            }
            catch (Exception ex)
            {
                sHostName = ex.Message;
            }

            lblUserIP.Text = sIPAddress;
            lblUserAgent.Text = uaString;
            lblInfo.Text += "Hostname &#61; <strong>" + sHostName + "</strong><br />";

            try
            {
                var uaParser = Parser.GetDefault();
                ClientInfo c = uaParser.Parse(uaString);

                lblInfo.Text += "Device &#61; <strong>" + c.Device.ToString() + "</strong><br />";
                lblInfo.Text += "Operating System &#61; <strong>" + c.OS.ToString() + "</strong><br />";
                lblInfo.Text += "Web Browser &#61; <strong>" + c.UA.ToString() + "</strong><br />";
                lblInfo.Text += "Is this a robot or spider &#61; <strong>" + c.Device.IsSpider + "</strong><br />";
            }
            catch (Exception ex)
            {
                lblInfo.Text += ex.Message;
            }

            lblInfo.Text += "Is this a mobile device &#61; <strong>" + bc.IsMobileDevice + "</strong><br />";
            if (bc.IsMobileDevice)
                lblInfo.Text += "Mobile device information &#61; <strong>" + bc.MobileDeviceManufacturer + " " + bc.MobileDeviceModel + "</strong><br />";
            lblInfo.Text += "Is this web browser a beta version &#61; <strong>" + bc.Beta + "</strong><br />";
            lblInfo.Text += "Cookies are enabled &#61; <strong>" + bc.Cookies + "</strong><br />";
        }
    }
}