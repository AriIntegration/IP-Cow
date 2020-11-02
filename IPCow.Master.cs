using System;
using System.Web.UI.WebControls;

namespace IP_Cow
{
    public partial class IPCow : System.Web.UI.MasterPage
    {
        protected global::System.Web.UI.WebControls.Literal lblYear;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblYear.Text = DateTime.Now.Year.ToString();
        }
    }
}