<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration_2.aspx.cs" Inherits="Registration_2" %>

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
    <form id="form1" runat="server" enctype="multipart/form-data">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>Profile Picture</td>
                <td>
                    <asp:FileUpload ID="fuProfilePicture" runat="server" />
                </td>
            </tr>
            <tr>
                <td>Date of Birth</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Gender</td>
                <td>
                    <asp:RadioButtonList ID="rdbGender" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>Permanent Address</td>
                <td>
                    <asp:TextBox ID="txtPermanentAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Current Address</td>
                <td>
                    <asp:TextBox ID="txtCurrentAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Last Donation Date</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Best Time To Contact</td>
                <td>
                    <asp:DropDownList ID="ddlBestTimeToContact" runat="server">
                        <asp:ListItem Selected="True">AnyTime</asp:ListItem>
                        <asp:ListItem>Morning</asp:ListItem>
                        <asp:ListItem>Afternoon</asp:ListItem>
                        <asp:ListItem>Evening</asp:ListItem>
                        <asp:ListItem>Night</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Blood Group Card</td>
                <td>
                    <asp:FileUpload ID="fuBloodGroupCard" runat="server" />
                </td>
            </tr>
            <tr>
                <td>Phone Number</td>
                <td>
                    <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
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
