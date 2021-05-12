<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="IISServerVariables.aspx.cs" Inherits="IPCow.Website.IISServerVariables" %>

<asp:Content ID="Content" ContentPlaceHolderID="BodyPlaceholder" runat="server">
    <form id="frmIISServerVariables" runat="server">
        <div class="container">
            <div class="row">
                <div class="twelve column">
                    <table class="u-full-width">
                        <tr>
                            <td colspan="2">
                                <h2>IIS Server Variables</h2>
                                <h6>IIS Server Variables provide information about the server, the connection with the client, and the current request on the connection. Additionally, inbound URL rewrite rules can be used to set custom server variables.</h6>
                            </td>
                        </tr>
                        <asp:Literal ID="OutputLabel" runat="server"></asp:Literal>
                        <tr>
                            <td colspan="2">
                                <h6><a href="//docs.microsoft.com/en-us/iis/web-dev-reference/server-variables" target="_blank">Microsoft IIS Server Variables Documentation</a></h6>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
