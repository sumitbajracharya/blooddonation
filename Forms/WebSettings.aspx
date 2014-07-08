<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebSettings.aspx.cs" Inherits="WebSettings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 500px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="2">WEB SETTINGS</td>
            </tr>
            <tr>
                <td>Location</td>
                <td>
                    <asp:Button ID="btnEditLocation" runat="server" Text="EDIT" />
                </td>
            </tr>
            <tr>
                <td>Blood Center</td>
                <td>
                    <asp:Button ID="btnEditBloodCenter" runat="server" Text="EDIT" />
                </td>
            </tr>
            <tr>
                <td>Blood Group</td>
                <td>
                    <asp:Button ID="btnEditBloodGroup" runat="server" Text="EDIT" />
                </td>
            </tr>
            <tr>
                <td>Slider Image </td>
                <td>
                    <asp:Button ID="btnEditImageToTheSlider" runat="server" Text="EDIT" />
                </td>
            </tr>
            <tr>
                <td>News Artical</td>
                <td>
                    <asp:Button ID="btnEditNewsArtical" runat="server" Text="EDIT" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
