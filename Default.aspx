<%@ Page Title="" Language="C#" MasterPageFile="~/IPCow.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IP_Cow.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="one.column" style="margin-top: 10px">
                <table>
                    <tbody>
                        <tr>
                            <td>
                                <h3>
                                    <asp:Label ID="lblUserIP" runat="server" /></h3>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblUserAgent" runat="server" /></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbl1" runat="server" /></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbl2" runat="server" /></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbl3" runat="server" /></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbl4" runat="server" /></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbl5" runat="server" /></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbl6" runat="server" /></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbl7" runat="server" /></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbl8" runat="server" /></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
