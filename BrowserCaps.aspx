<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="BrowserCaps.aspx.cs" Inherits="IPCow.Website.BrowserCaps" %>

<asp:Content ID="Content" ContentPlaceHolderID="BodyPlaceholder" runat="server">
    <form id="frmBrowserCaps" runat="server">
        <div class="container">
            <div class="row">
                <div class="twelve column">
                    <table class="u-full-width">
                        <tr>
                            <td>
                                <h2>Web Browser Capabilities</h2>
                                <h6>This web browser has the following capabilities:</h6>
                            </td>
                        </tr>
                        <asp:Literal ID="OutputLabel" runat="server"></asp:Literal>
                        <tr>
                            <td>
                                <h6><a href="//docs.microsoft.com/en-us/dotnet/api/system.web.httpbrowsercapabilities" target="_blank">Microsoft HttpBrowserCapabilities Class Documentation</a></h6>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
