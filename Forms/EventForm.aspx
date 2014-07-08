<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EventForm.aspx.cs" Inherits="EventForm" %>

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
                <td colspan="2">Event Form</td>
            </tr>
            <tr>
                <td>Event Title</td>
                <td>
                    <asp:TextBox ID="txtEventTitle" runat="server" Height="16px" Width="307px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Event Date</td>
                <td>
                    <asp:TextBox ID="txtEventDate" runat="server"></asp:TextBox>
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
                <td>Venue</td>
                <td>
                    <asp:TextBox ID="txtVenue" runat="server" Height="16px" Width="301px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Posted By</td>
                <td>
                    <asp:TextBox ID="txtPostedBy" runat="server" Height="16px" Width="301px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Contact no.</td>
                <td>
                    <asp:TextBox ID="txtContactNumber" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>description</td>
                <td>
                    <asp:TextBox ID="txtdescription" runat="server" Height="117px" TextMode="MultiLine" Width="302px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Upload Image</td>
                <td>
                    <asp:FileUpload ID="fupImage" runat="server" Height="24px" Width="312px" />
                    <br />
                    <asp:Image ID="Image" runat="server" Height="190px" Width="312px" />
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
