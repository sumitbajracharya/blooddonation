<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PostEventForm.aspx.cs" Inherits="PostEventForm" %>

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
                <td colspan="2">Event Form</td>
            </tr>
            <tr>
                <td>Event Title</td>
                <td>
                    <asp:TextBox ID="txtEventTitle" runat="server" Height="16px" Width="308px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Event Date</td>
                <td>
                    <asp:TextBox ID="txtEventDate" runat="server"></asp:TextBox>
                    <cc1:CalendarExtender ID="txtEventDate_CalendarExtender" runat="server" TargetControlID="txtEventDate">
                    </cc1:CalendarExtender>
                </td>
            </tr>
            <tr>
                <td>Time</td>
                <td>
                    <asp:TextBox ID="txtStartingTime" runat="server" Height="16px" Width="23px"></asp:TextBox>
                    <asp:DropDownList ID="ddlStartingAmPm" runat="server" Height="16px" Width="41px">
                        <asp:ListItem Selected="True">am</asp:ListItem>
                        <asp:ListItem>pm</asp:ListItem>
                    </asp:DropDownList>
&nbsp;TO
                    <asp:TextBox ID="txtEndingTime" runat="server" Height="16px" Width="23px"></asp:TextBox>
                    <asp:DropDownList ID="ddlEndingAmPm" runat="server" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="41px">
                        <asp:ListItem Selected="True">am</asp:ListItem>
                        <asp:ListItem>pm</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Venue</td>
                <td>
                    <asp:TextBox ID="txtVenue" runat="server" Height="16px" Width="303px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Posted By</td>
                <td>
                    <asp:TextBox ID="txtPosetedBy" runat="server" Height="16px" Width="304px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Contact no.</td>
                <td>
                    <asp:TextBox ID="txtContactNo" runat="server" Height="16px" Width="182px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Description</td>
                <td>
                    <asp:TextBox ID="txtDescription" runat="server" Height="100px" Width="304px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Upload Image</td>
                <td>
                    <asp:FileUpload ID="fupImage" runat="server" Height="20px" Width="311px" />
                    <br />
                    <asp:Image ID="Image" runat="server" Height="190px" Width="310px" />
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
