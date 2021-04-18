using System;
using System.Web.UI.WebControls;

namespace IPCow.Website
{
    public partial class DefaultMaster : System.Web.UI.MasterPage
    {
        protected Literal lblYear;
        public static string pageBodyKey;
        public static string pageBodyValue;

        protected void Page_Load(object sender, EventArgs e)
        {
            pageBody.Attributes.Add(pageBodyKey, pageBodyValue);
            lblYear.Text = DateTime.Now.Year.ToString();
        }
    }
}