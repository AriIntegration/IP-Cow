<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IPCow.Website.Default" %>

<asp:Content ID="Content" ContentPlaceHolderID="BodyPlaceholder" runat="server">
    <div class="container">
        <div class="row">
            <div class="twelve column">
                <table class="u-full-width">
                    <tbody>
                        <tr>
                            <td>
                                <h2>
                                    <asp:Literal ID="lblUserIP" runat="server" /></h2>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h5>
                                    <asp:Literal ID="lblUserAgent" runat="server" /></h5>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h6>
                                    <asp:Literal ID="lblInfo" runat="server" />
                                    <span id="ScreenSize"></span>
                                </h6>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <iframe id="SpeedTest" src="//ipcow.dualstack.speedtestcustom.com" width="100%" height="650" scrolling="no"></iframe>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h6>For more information about your DNS records, email server configuration, domain whois records and more; below is a list of good network tools and resources.<br />
                                    <br />
                                    <a href="//toolbox.googleapps.com/apps/main/" target="_blank">Google Admin Toolbox</a>
                                    <br />
                                    <a href="//developers.google.com/speed/public-dns/" target="_blank">Google DNS</a>
                                    <br />
                                    <a href="//testconnectivity.microsoft.com/tests/o365" target="_blank">Microsoft Remote Connectivity Analyzer</a>
                                    <br />
                                    <a href="//mxtoolbox.com/SuperTool.aspx" target="_blank">MxToolbox SuperTool</a>
                                    <br />
                                    <a href="//www.netwrix.com/freeware_tools.html" target="_blank">Netwrix</a>
                                    <br />
                                    <a href="//www.solarwinds.com/downloads" target="_blank">SolarWinds</a>
                                </h6>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h6>For server or language specific information on web programming, Microsoft IIS or PHP, see the list below.<br />
                                    <br />
                                    <a href="iisservervariables.aspx">Microsoft IIS Server Variables</a>
                                    <br />
                                    <a href="phpinfo.aspx">PHP Information</a>
                                    <br />
                                    <a href="browsercaps.aspx">Web Browser Capabilities</a>
                                    <br />
                                    <a href="//www.w3schools.com/" target="_blank">W3Schools</a>
                                </h6>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h6>For more information about your web browser you can type the approriate url below in the address bar:<br />
                                    <br />
                                    Google Chrome - chrome://version/
                                    <br />
                                    Microsoft Edge - edge://version/
                                    <br />
                                    Mozilla Firefox - about:support
                                    <br />
                                    Opera - about
                                </h6>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
