<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="EventForm.aspx.cs" Inherits="User_EventForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                    </td>
            </tr>
            <tr>
                <td>Time</td>
                <td>
                    <asp:TextBox ID="txtTimeNumber" runat="server" Width="50px" cssClass="form-control"></asp:TextBox>
                    <asp:DropDownList ID="ddlTimeAmPm" runat="server" Width="50px" cssClass="form-control">
                        <asp:ListItem>am</asp:ListItem>
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
                    <asp:TextBox ID="txtPostedBy" runat="server" cssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Contact no.</td>
                <td>
                    <asp:TextBox ID="txtContactNumber" runat="server" cssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>description</td>
                <td>
                    <asp:TextBox ID="txtdescription" runat="server" Height="107px" cssClass="form-control" TextMode="MultiLine" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Upload Image</td>
                <td>
                    <asp:FileUpload ID="fupImage" runat="server"  cssClass="btn btn-default"/>
                    <br />
                    <asp:Image ID="Image" runat="server" Height="190px" Width="312px" />
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
</asp:Content>

