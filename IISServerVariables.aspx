<%@ Page Language="C#" %>

<script runat="server">
    void Page_Load(Object Sender, EventArgs e)
    {
        OutputLabel.Text = IISvars();
    }

    String IISvars()
    {
        StringBuilder sb = new StringBuilder();

        sb.AppendLine("<table width='80%' align='center'>");

        foreach (string var in Request.ServerVariables)
        {
            sb.AppendLine("<tr><td>" + var + "</td><td>" + Request[var] + "</td></tr>");
        }

        sb.AppendLine("</table>");

        return sb.ToString();
    }
</script>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <script src="https://consent.cookiebot.com/uc.js" id="Cookiebot" data-cbid="2971dafb-b4e9-47af-ac6f-8be9d01c86c7" data-blockingmode="auto"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js" data-blockingmode="auto"></script>
    <script src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js" data-ad-client="ca-pub-2167883673580425" data-blockingmode="auto" data-cookieconsent="marketing"></script>
    <script src="https://www.googletagmanager.com/gtag/js?id=G-4TRHWXMJEF" data-blockingmode="auto" data-cookieconsent="statistics"></script>
    <script data-blockingmode="auto" data-cookieconsent="statistics">
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());
        gtag('config', 'G-4TRHWXMJEF');
    </script>
    <script src="js/ipcow.js" data-blockingmode="auto"></script>
    <link rel="shortcut icon" media='all' type="image/x-icon" href="images/favicon.ico" />
    <title>IP Cow [IIS Server Variables]</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <meta name="description" content="Here you can see the internet IP address your device is using along with information about your computer and web browser. IP Cow also offers an Ookla Speedtest and other network resources and tools.">
    <meta name="keywords" content="ip, IP, ipv4, ipv6, address, ipaddress, ip address, speed test, dns, web browser information, what is my ip, find your ip address, ipconfig, whois">
    <meta name="author" content="Michal Ferber">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" media='all' href="css/normalize.css">
    <link rel="stylesheet" media='all' href="css/skeleton.css">
    <link rel="stylesheet" media='all' href="css/custom.css">
    <link rel="stylesheet" media='all' href='//fonts.googleapis.com/css?family=Raleway&display=swap'>
</head>
<body>
    <div class="header">
        <h1><a href="/">
            <img alt="IP Cow" src="images/background.jpg" srcset="images/background.jpg 1920w, images/background-small.jpg 602w" height="202" width="1920" /></a></h1>
    </div>
    <div style="padding: 10px; margin-top: 50px; text-align: center;">
        <h2>IIS Server Variables</h2>
        <form id="frmIISServerVariables" runat="server">
            <asp:Literal ID="OutputLabel" runat="server"></asp:Literal>
        </form>
    </div>
    <div class="container">
        <div class="row">
            <div class="twelve column" style="margin-top: 10px; text-align: center;">
                <p>
                    &copy;2005-2021
                    All Rights Reserved<br />
                    <a href="cookies.aspx">Cookies</a> | <a href="privacy.aspx">Privacy Policy</a> | <a href="terms.aspx">Terms of Use</a><br />
                    This is a free service provided by:<br />
                    <a href="https://ari-integration.com/">Ari Integration LLC</a>
                </p>
            </div>
        </div>
    </div>
</body>
</html>
