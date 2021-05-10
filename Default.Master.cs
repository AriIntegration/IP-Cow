using System;
using System.Web.UI.WebControls;

namespace IPCow.Website
{
    public partial class DefaultMaster : System.Web.UI.MasterPage
    {
        protected Literal lblYear;

        protected void Page_Load(object sender, EventArgs e)
        {
            lblYear.Text = DateTime.Now.Year.ToString();
        }
    }
}