<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="PHPinfo.aspx.cs" Inherits="IPCow.Website.PHPinfo" %>

<asp:Content ID="Content" ContentPlaceHolderID="BodyPlaceholder" runat="server">
    <form id="frmPHPinfo" runat="server">
        <div class="container">
            <div class="row">
                <div class="twelve column">
                    <table class="u-full-width">
                        <tr>
                            <td>
                                <h2>PHP:phpinfo</h2>
                                <h6>This outputs information about PHP's configuration.</h6>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <iframe id="phpinfo" src="//wordpress1.ari-integration.com/info.php" width="100%" scrolling="no"></iframe>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h6><a href="https://www.php.net/manual/en/function.phpinfo.php" target="_blank">PHP:phpinfo Documentation</a></h6>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </form>
<script>
    iFrameResize({ log: false }, '#phpinfo')
</script>
</asp:Content>
