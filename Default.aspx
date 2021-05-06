<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IPCow.Website.Default" %>

<asp:Content ID="Content" ContentPlaceHolderID="BodyPlaceholder" runat="server">
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
                        <span id='ScreenSize'></span>
                    </h6>
                </td>
            </tr>
<%--            <tr>
                <td>
                    <a href="#popupVideo" data-rel="popup" data-position-to="window">Perform Speedtest</a>
<div data-role="popup" id="popupVideo" data-overlay-theme="b" data-theme="a" data-tolerance="15,15" class="ui-content">
    <iframe src="https://ipcow.dualstack.speedtestcustom.com/" width="497" height="298" seamless=""></iframe>
</div>
                </td>
            </tr>--%>
        </tbody>
    </table>
</asp:Content>
