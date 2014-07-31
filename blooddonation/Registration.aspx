<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<table class="table table-bordered">

<tr><td colspan="2"><center><b>Registration</b><br /><asp:Label ID="lblResult" Text="hello " runat="server" ForeColor="Red"></asp:Label></center></td></tr>
<tr><td class="col-sm-3">First Name</td><td><asp:TextBox ID="TxtFirstName" cssClass="form-control" runat="server"></asp:TextBox></td></tr>
<tr><td>Last Name</td><td><asp:TextBox ID="TxtLastName" cssClass="form-control" runat="server"></asp:TextBox></td></tr>
<tr><td>Blood Group</td><td><asp:DropDownList ID="Ddlbloodgroup" cssClass="btn btn-default" runat="server" Height="74px" 
                Width="74px">

                
            </asp:DropDownList></td></tr>
<tr><td>Email Id</td><td><asp:TextBox ID="TxtEmail" cssClass="form-control" runat="server"></asp:TextBox></td></tr>
<tr><td>Mobile Number</td><td> <asp:TextBox ID="Txtmobile" cssClass="form-control" runat="server"></asp:TextBox></td></tr>
<tr><td>User Name</td><td> <asp:TextBox ID="TxtUserName" cssClass="form-control" runat="server"></asp:TextBox></td></tr>
<tr><td>Password</td><td> <asp:TextBox ID="TxtPassword" cssClass="form-control" runat="server" TextMode="Password"></asp:TextBox></td></tr>
<tr><td>Conform Password</td><td><asp:TextBox ID="TxtConformpwd" cssClass="form-control" runat="server"></asp:TextBox></td></tr>
<tr><td colspan="2" align="center"> <asp:Button ID="btnsubmit" 
        cssClass="btn btn-default" runat="server" Text="Submit" 
        onclick="btnsubmit_Click" /> <asp:Button ID="Button1" cssClass="btn btn-default" runat="server" Text="Cancel" /></td></tr>

</table>

 
</asp:Content>

