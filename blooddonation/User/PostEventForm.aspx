<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="PostEventForm.aspx.cs" Inherits="User_PostEventForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>
    
        <table class="table table-bordered">
            <tr>
                <th colspan="2">Event Form</th>
            </tr>
            <tr>
                <td>Event Title</td>
                <td>
                    <asp:TextBox ID="txtEventTitle" runat="server" cssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Event Date</td>
                <td>
                    <asp:TextBox ID="txtEventDate" runat="server" cssClass="form-control"></asp:TextBox>
                    <cc1:calendarextender ID="txtEventDate_CalendarExtender" runat="server" TargetControlID="txtEventDate">
                    </cc1:calendarextender>
                </td>
            </tr>
            <tr>
                <td>Time</td>
                <td>
                    <asp:TextBox ID="txtStartingTime" runat="server" cssClass="form-control"></asp:TextBox>
                    <asp:DropDownList ID="ddlStartingAmPm" runat="server" cssClass="form-control">
                        <asp:ListItem Selected="True">am</asp:ListItem>
                        <asp:ListItem>pm</asp:ListItem>
                    </asp:DropDownList>
&nbsp;TO
                    <asp:TextBox ID="txtEndingTime" runat="server" cssClass="form-control"></asp:TextBox>
                    <asp:DropDownList ID="ddlEndingAmPm" runat="server" cssClass="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem Selected="True">am</asp:ListItem>
                        <asp:ListItem>pm</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Venue</td>
                <td>
                    <asp:TextBox ID="txtVenue" runat="server" cssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Posted By</td>
                <td>
                    <asp:TextBox ID="txtPosetedBy" runat="server" cssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Contact no.</td>
                <td>
                    <asp:TextBox ID="txtContactNo" runat="server" cssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Description</td>
                <td>
                    <asp:TextBox ID="txtDescription" runat="server" cssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Upload Image</td>
                <td>
                    <asp:FileUpload ID="fupImage" runat="server" cssClass="btn btn-default" />
                    <br />
                    <asp:Image ID="Image" runat="server" Height="190px" Width="310px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" cssClass="btn btn-default"/>
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" cssClass="btn btn-default"/>
                </td>
            </tr>
        </table>
    
    </div>
</asp:Content>

