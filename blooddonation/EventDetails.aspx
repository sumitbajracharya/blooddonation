<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EventDetails.aspx.cs" Inherits="EventDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <table class="table table-bordered">
            <tr>
                <td colspan="2">
                    <asp:Image ID="Image2" runat="server" ImageUrl='<%#Eval("Image") %>' CssClass="img-responsive" />
                  
                </td>
            </tr>
            <tr>
                <td class="col-sm-3">Date</td>
                <td><%#Eval("Date") %></td>
            </tr>
            <tr>
                <td>Time</td>
                <td><%#Eval("Time")%></td>
            </tr>
            <tr>
                <td>Venue</td>
                <td><%#Eval("Venue") %></td>
            </tr>
            <tr>
                <td>Posted By</td>
                <td><%#Eval("PostedBy") %></td>
            </tr>
            <tr>
                <td>Description</td>
                <td><%#Eval("Description") %></td>
            </tr>
        </table>
</asp:Content>

