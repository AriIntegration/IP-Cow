using System;

namespace IPCow.Website
{
    public partial class PHPinfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Page.Title = "IP Cow [PHP:phpinfo]";
        }
    }
}