<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PaswordChange.aspx.cs" Inherits="PaswordChange" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
     <tr>
                <td>User Name</td>
                <td>
                    <asp:Label runat="server" ID="lblUsername"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Old Password</td>
                <td>
                    <asp:TextBox ID="TxtOldPassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>New Password</td>
                <td>
                    <asp:TextBox ID="txtNewPassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Conform Password</td>
                <td>
                    <asp:TextBox ID="txtConformPassword" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
            <td colspan='2'> <center><asp:Button runat="server" ID="btnChange" Text="Change" /> </center></td>
            </tr>
    </table>
    
    </div>
    </form>
</body>
</html>
