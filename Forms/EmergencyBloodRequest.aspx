<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmergencyBloodRequest.aspx.cs" Inherits="_Default" %>

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
                <td colspan="2">Emergency Blood Request</td>
            </tr>
            <tr>
                <td>Full Name</td>
                <td>
                    <asp:TextBox ID="txtFullName" runat="server" Height="16px" Width="362px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Age</td>
                <td>
                    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Blood Group</td>
                <td>
                    <asp:DropDownList ID="ddlBloodgroup" runat="server">
                        <asp:ListItem>A+ve</asp:ListItem>
                        <asp:ListItem>A-ve</asp:ListItem>
                        <asp:ListItem>B+ve</asp:ListItem>
                        <asp:ListItem>B-ve</asp:ListItem>
                        <asp:ListItem>AB+ve</asp:ListItem>
                        <asp:ListItem>AB-ve</asp:ListItem>
                        <asp:ListItem>O+ve</asp:ListItem>
                        <asp:ListItem>O-ve</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Location</td>
                <td>
                    <asp:DropDownList ID="ddlDistrict" runat="server">
                        <asp:ListItem>Choose District</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:DropDownList ID="ddlLocation" runat="server">
                        <asp:ListItem>ChooseLocation</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Phone no.</td>
                <td>
                    <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Message</td>
                <td>
                    <asp:TextBox ID="txtMessage" runat="server" Height="107px" TextMode="MultiLine" Width="361px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
