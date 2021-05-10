<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    System.Web.HttpBrowserCapabilities bCaps;

    void Page_Load(Object Sender, EventArgs e)
    {
        bCaps = Request.Browser;
        OutputLabel.Text = IISvars();
    }

    String IISvars()
    {
        StringBuilder sb = new StringBuilder();

        foreach (string var in Request.ServerVariables)
        {
            sb.AppendLine(var + Request[var]);
        }

        return sb.ToString().Replace(Environment.NewLine, "<br />");
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>IP Cow [IIS Server Variables]</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="OutputLabel" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
