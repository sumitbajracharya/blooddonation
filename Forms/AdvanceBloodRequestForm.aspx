<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdvanceBloodRequestForm.aspx.cs" Inherits="AdvanceBloodRequestForm" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

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
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="2">Advance Blood Request Form</td>
            </tr>
            <tr>
                <td>Full Name</td>
                <td>
                    <asp:TextBox ID="txtFullname" runat="server" Height="16px" Width="385px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Age</td>
                <td>
                    <asp:TextBox ID="txtAge" runat="server" Height="16px" Width="40px"></asp:TextBox>
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
                <td>Quantity</td>
                <td>
                    <asp:TextBox ID="txtQuantity" runat="server" Height="16px" Width="83px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Location</td>
                <td>
                    
                    <asp:DropDownList ID="ddlDistrict" runat="server"
                        <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server"></cc1:TextBoxWatermarkExtender>
                        >
                        
                        <asp:ListItem>Kathmandu</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:DropDownList ID="ddlLocation" runat="server">
                        <asp:ListItem>New Road</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Date</td>
                <td>
                    
                    <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                     <cc1:CalendarExtender ID="txtDate_CalendarExtender" runat="server" TargetControlID="txtDate">
                    </cc1:CalendarExtender>
                   
                </td>
            </tr>
            <tr>
                <td>Time</td>
                <td>
                    <asp:TextBox ID="txtTimeNumber" runat="server" Height="16px" Width="32px"></asp:TextBox>
                    <asp:DropDownList ID="ddlTimeAmPm" runat="server">
                        <asp:ListItem>am</asp:ListItem>
                        <asp:ListItem>pm</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Phone no.</td>
                <td>
                    <asp:TextBox ID="txtPhonenumber" runat="server" Height="16px" Width="168px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Purpose</td>
                <td>
                    <asp:TextBox ID="txtPurpose" runat="server" Height="16px" Width="276px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Hospital Paper</td>
                <td>
                    <asp:FileUpload ID="fupImage" runat="server" style="margin-bottom: 1px" />
                    <br />
                    <asp:Image ID="imgHospitalpaprer" runat="server" Height="223px" Width="281px" />
                </td>
            </tr>
            <tr>
                <td>Message</td>
                <td>
                    <asp:TextBox ID="txtMessage" runat="server" Height="191px" TextMode="MultiLine" Width="281px"></asp:TextBox>
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
