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
                                <iframe width="100%" height="650" src="//ipcow.dualstack.speedtestcustom.com"></iframe>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h6>For more information about your DNS records, email server configuration, domain whois records and more; below is a list of good network tools and resources.<br />
                                    <br />
                                    <a href="//toolbox.googleapps.com/apps/checkmx/" target="_blank">Google Admin Toolbox | Check MX</a>
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
