<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditUser.aspx.cs" Inherits="EditUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 500px;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>First Name</td>
                <td>
                    <asp:TextBox ID="txtFName" runat="server" Height="18px" Width="310px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td>
                    <asp:TextBox ID="txtLName" runat="server" Height="16px" Width="307px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Date of Birth</td>
                <td>
                    <asp:DropDownList ID="ddlYear" runat="server" ></asp:DropDownList>
                    <asp:DropDownList ID="ddlMonths" runat="server"></asp:DropDownList>
                    <asp:DropDownList ID="ddlDate" runat="server"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Gender</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Blood Group</td>
                <td class="auto-style2">
                    <asp:Label ID="lblBloodgroup" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Permanent Address</td>
                <td>
                    <asp:TextBox ID="TxtPermanentAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Current Address</td>
                <td>
                    <asp:TextBox ID="txtCurrentAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>E-Mail</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Last Donation Date</td>
                <td>
                    <asp:TextBox ID="txtLastDonationDate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Best Time To Contact</td>
                <td>
                    <asp:CheckBoxList ID="chkContactTime" runat="server">
                        <asp:ListItem>Anytime</asp:ListItem>
                        <asp:ListItem>Morning</asp:ListItem>
                        <asp:ListItem>Afternoon</asp:ListItem>
                        <asp:ListItem>Evening</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>Phone No.</td>
                <td>
                    <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Mobile No.</td>
                <td>
                    <asp:TextBox ID="txtMobilenumber" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Occupation</td>
                <td>
                    <asp:TextBox ID="txtOccupation" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Recent Medication</td>
                <td>
                    <asp:TextBox ID="txtMedication" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Heridetary Diseases</td>
                <td>
                    <asp:CheckBoxList ID="chkDisease" runat="server">
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>Weight</td>
                <td>
                    <asp:TextBox ID="txtWeight" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Habits</td>
                <td>
                    <asp:TextBox ID="txtHabits" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Best Availability</td>
                <td>&nbsp;</td>
            </tr>
           
            <tr>
                <td>Change Profile Picture</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="22px" Width="312px" />
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="122px" Width="127px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="BtnSave" runat="server" Text="Save" />
                    <asp:Button ID="BtnRestore" runat="server" Text="Restore" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
