using System;
using System.Net;
using System.Net.Sockets;
using System.Web;
using UAParser;
using DnsClient;

namespace IPCow.Website
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BuildPage();
        }

        private void BuildPage()
        {
            string uaString = Request.UserAgent;

            string sIPAddress = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"].ToString();
            HttpBrowserCapabilities bc = Request.Browser;

            var uaParser = Parser.GetDefault();
            ClientInfo c = uaParser.Parse(uaString);

            var client = new LookupClient(NameServer.GooglePublicDns, NameServer.GooglePublicDnsIPv6);
            string sHostName;
            try
            {
                sHostName = client.GetHostName(IPAddress.Parse(sIPAddress));
            }
            catch (DnsClient.DnsResponseException ex)
            {
                sHostName = ex.Message;
            }

            lblUserIP.Text = sIPAddress;
            lblUserAgent.Text = uaString;
            lblInfo.Text += "Hostname &#61; <strong>" + sHostName + "</strong><br />";
            lblInfo.Text += "Device &#61; <strong>" + c.Device.ToString() + "</strong><br />";
            lblInfo.Text += "Operating System &#61; <strong>" + c.OS.ToString() + "</strong><br />";
            lblInfo.Text += "Browser &#61; <strong>" + c.UA.ToString() + "</strong><br />";
            lblInfo.Text += "ECMAScript &#61; <strong>" + bc.EcmaScriptVersion + "</strong><br />";
            lblInfo.Text += "Cookies &#61; <strong>" + bc.Cookies + "</strong><br />";
            lblInfo.Text += "Is Mobile Device &#61; <strong>" + bc.IsMobileDevice + "</strong><br />";
            if (bc.IsMobileDevice)
                lblInfo.Text += "Mobile Device &#61; <strong>" + bc.MobileDeviceManufacturer + " " + bc.MobileDeviceModel + "</strong><br />";
            lblInfo.Text += "Is Beta &#61; <strong>" + bc.Beta + "</strong><br />";
            lblInfo.Text += "Is Spider &#61; <strong>" + c.Device.IsSpider + "</strong><br />";

            DefaultMaster.pageBodyKey = "onload";
            DefaultMaster.pageBodyValue = "getScreenSize()";
        }
    }
}