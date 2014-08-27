<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

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
       <asp:TextBox ID="txtUsername" text="Username" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtPassword" CssClass="form-control" text="Password" runat="server"></asp:TextBox>
                   <h6><a href="#">Forget your password?</a></h6> 
                    <asp:Button ID="btnLogin" CssClass="btn btn-default pull-right" runat="server" Text="LogIn" onclick="btn_Login_Click"/>  
    </div>
    </form>
</body>
</html>
