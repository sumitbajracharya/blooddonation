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
                    <asp:DropDownList ID="ddlYear" ></asp:DropDownList><asp:DropDownList ID="ddlMonths" ></asp:DropDownList><asp:DropDownList ID="ddlDate" ></asp:DropDownList>
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
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Permanent Address</td>
                <td>
                    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Current Address</td>
                <td>
                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>E-Mail</td>
                <td>
                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Last Donation Date</td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Best Time To Contact</td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
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
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Mobile No.</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Occupation</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Recent Medication</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Heridetary Diseases</td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList2" runat="server">
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>Weight</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Habits</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Best Availability</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>User Name</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Old Password</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>New Password</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Conform Password</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
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
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                    <asp:Button ID="Button2" runat="server" Text="Button" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
