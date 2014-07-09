<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DonorList.aspx.cs" Inherits="DonorList" %>

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
    <asp:Repeater ID="rptrDonorList" runat="server">
        <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td rowspan="7">
                    <asp:Image ID="Image1" runat="server" Height="122px" Width="148px" />
                </td>
                <td>Name</td>
                <td><%#Eval("Name") %></td>
            </tr>
            <tr>
                <td>Gender</td>
                <td><%#Eval("Gender") %></td>
            </tr>
            <tr>
                <td>Age</td>
                <td><%#Eval("Age") %></td>
            </tr>
            <tr>
                <td>Blood Group</td>
                <td><%#Eval("BloodGroup") %></td>
            </tr>
            <tr>
                <td>Location</td>
                <td><%#Eval("Location") %></td>
            </tr>
            <tr>
                <td>Last Donated Date</td>
                <td><%#Eval("LastDonationDate") %></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Send Request" />
                </td>
            </tr>
        </table>
            </ItemTemplate>
    </asp:Repeater>
    
    </div>
    </form>
</body>
</html>
