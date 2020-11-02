using System;
using System.Web.UI.WebControls;

namespace IP_Cow
{
    public partial class IPCow : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (Label lblCopyrightYear = new Label())
            {
                lblCopyrightYear.Text = DateTime.Now.Year.ToString();
            }
        }
    }
}