<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 500px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 
    

 
    <table class="table table-bordered">
        <tr>
            <th><h3>Enter Email</h3></th>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" cssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnSubmit" cssClass="btn btn-default" runat="server" Text="Submit" />
                 <br />
                 <asp:Label ID="lblMessage" runat="server" cssClass="label-success" Text=""></asp:Label>
            </td>
        </tr>
       
    </table>

 
    

 
</asp:Content>       

