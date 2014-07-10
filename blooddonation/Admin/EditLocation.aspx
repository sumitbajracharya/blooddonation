<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="EditLocation.aspx.cs" Inherits="Admin_EditLocation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:TextBox ID="txtLocation"  cssClass="form-control pull-left"  Width="40%" runat="server"></asp:TextBox>
    <asp:Button runat="server"   CssClass="btn btn-default" ID="btnAdd" Text="Add" />

    <br /><br /><br /><br />
    del
    <asp:GridView ID="gdvLocation" runat="server" >
    <Columns>
    <asp:TemplateField>
    <ItemTemplate>
    <asp:Button ID="BtnDelete" runat="server" text="Delete" CommandArgument='<%#Eval("LocationID") %>' />
    </ItemTemplate>
    </asp:TemplateField>
    </Columns>
    </asp:GridView>
</asp:Content>

