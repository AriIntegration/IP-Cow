<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IPCow.Website.Default" %>

<asp:Content ID="Content" ContentPlaceHolderID="BodyPlaceholder" runat="server">
    <table class="u-full-width">
        <tbody>
            <tr>
                <td>
                    <h2><asp:Literal ID="lblUserIP" runat="server" /></h2></td>
            </tr>
            <tr>
                <td>
                    <h5><asp:Literal ID="lblUserAgent" runat="server" /></h5></td>
            </tr>
            <tr>
                <td>
                    <h6>
                        <asp:Literal ID="lblInfo" runat="server" />
                        <span id='ScreenSize'></span>
                    </h6>
                </td>
            </tr>
        </tbody>
    </table>
<script>
function getScreenSize() {
    var x = 'Screen Size &#61; <strong>' + screen.width + ' x ' + screen.height + '</strong><br />';
    var y = 'Browser Size &#61; <strong>' + window.innerWidth + ' x ' + window.innerHeight + '</strong>';
    document.getElementById("ScreenSize").innerHTML = x + y;
}
</script>
</asp:Content>
