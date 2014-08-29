<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="~/Assets/Styles/Css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <link href="~/Assets/Styles/Css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="~/Assets/Styles/Css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
<table class="table table-bordered">


<tr><td>Full Name</td><td><asp:TextBox ID="TxtFirstName" cssClass="form-control" runat="server"></asp:TextBox></td></tr>

<tr><td>Blood Group</td><td><asp:DropDownList ID="ddl_bloodgroup" 
        cssClass="btn btn-default" runat="server" Width="50%"></asp:DropDownList></td></tr>
<tr><td>Current District</td><td><asp:DropDownList ID="ddl_district" 
        cssClass="btn btn-default" runat="server" Width="100%"></asp:DropDownList></td></tr>
<tr><td>Current Address</td><td><asp:TextBox ID="txtLocation" 
        cssClass="form-control" runat="server"></asp:TextBox></td></tr>
<tr><td>Email Id</td><td><asp:TextBox ID="TxtEmail" cssClass="form-control" runat="server"></asp:TextBox></td></tr>
<tr><td>Mobile Number</td><td> <asp:TextBox ID="Txtmobile" cssClass="form-control" runat="server"></asp:TextBox></td></tr>

<tr><td>Password</td><td> <asp:TextBox ID="TxtPassword" cssClass="form-control" runat="server" TextMode="Password"></asp:TextBox></td></tr>

<tr><td colspan="2" align="center"> 

<asp:Label ID="lblResult" runat="server" ForeColor="Red"></asp:Label>
<br />
<asp:Button ID="btnsubmit" 
        cssClass="btn btn-default" runat="server" Text="Sign Up" onclick="btnsubmit_Click" />
        
        
    
        </td></tr>

</table>
    </div>
    </form>
</body>
</html>
