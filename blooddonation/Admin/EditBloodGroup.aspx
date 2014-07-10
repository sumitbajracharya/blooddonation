<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="EditBloodGroup.aspx.cs" Inherits="Admin_EditBloodGroup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<asp:TextBox ID="txtBloodGroup" runat="server" cssClass="form-control pull-left" Width="40%"></asp:TextBox>
    <asp:Button runat="server" ID="btnAdd"  CssClass="btn btn-default" Text="Add" />

    <br /><br /><br /><br />

    <asp:GridView ID="gdvBloodGroup" runat="server">
    <Columns>
    <asp:TemplateField>
    <ItemTemplate>
    <asp:Button ID="BtnDelete" runat="server" text="Delete" CommandArgument='<%#Eval("BloodGroupID") %>' />
    </ItemTemplate>
    </asp:TemplateField>
    </Columns>
    </asp:GridView>
    

   
</asp:Content>

