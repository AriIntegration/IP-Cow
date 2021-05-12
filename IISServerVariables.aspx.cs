using System;
using System.Text;

namespace IPCow.Website
{
    public partial class IISServerVariables : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Page.Title = "IP Cow [IIS Server Variables]";
            OutputLabel.Text = IISvars();
        }

        String IISvars()
        {
            StringBuilder sb = new StringBuilder();

            foreach (string var in Request.ServerVariables)
            {
                sb.AppendLine("<tr><td>" + var + "</td><td>" + Request[var] + "</td></tr>");
            }

            return sb.ToString();
        }
    }
}