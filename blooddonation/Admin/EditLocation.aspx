<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="EditLocation.aspx.cs" Inherits="Admin_EditLocation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 500px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <br />
    <table class="table table-bordered">
        <tr>
            <td>Location Name</td>
            <td>

    
    <asp:TextBox ID="txtLocationName"  cssClass="form-control pull-left"  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>District Name</td>
            <td>
                <asp:DropDownList ID="ddlDistrict" cssClass="form-control pull-left" runat="server">
                </asp:DropDownList>
                
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
    <asp:Button runat="server"   CssClass="btn btn-default" ID="btnAdd" Text="Add" OnClick="btnAdd_Click" />

                <br />
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <asp:GridView ID="gdvLocation" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField HeaderText="Location" />
            <asp:BoundField HeaderText="District" />
        </Columns>
    </asp:GridView>
    <br /><br />
    
    
    
</asp:Content>

