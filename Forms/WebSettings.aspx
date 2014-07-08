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
                <td colspan="4">WEB SETTINGS</td>
            </tr>
            <tr>
                <td>Add Location</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnAddLocation" runat="server" Text="ADD" />
                    <asp:Button ID="btnEditLocation" runat="server" Text="EDIT" />
                </td>
            </tr>
            <tr>
                <td>Add Blood Center</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnAdd" runat="server" Text="ADD" />
                    <asp:Button ID="btnEditBloodCenter" runat="server" Text="EDIT" />
                </td>
            </tr>
            <tr>
                <td>Add Blood Group</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnAddLocation1" runat="server" Text="ADD" />
                    <asp:Button ID="btnEditBloodGroup" runat="server" Text="EDIT" />
                </td>
            </tr>
            <tr>
                <td>Add Image To The Slider</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnAddLocation2" runat="server" Text="ADD" />
                    <asp:Button ID="btnEditImageToTheSlider" runat="server" Text="EDIT" />
                </td>
            </tr>
            <tr>
                <td>Add News Artical</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnAddLocation3" runat="server" Text="ADD" />
                    <asp:Button ID="btnEditNewsArtical" runat="server" Text="EDIT" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
