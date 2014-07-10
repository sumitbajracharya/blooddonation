<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Assets/Styles/Css/bootstrap-theme.css" rel="stylesheet" />
    <link href="Assets/Styles/Css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Assets/Styles/Css/bootstrap.min.css" rel="stylesheet" />
    <script src="Assets/Js/bootstrap.js"></script>
    <script src="Assets/Js/bootstrap.min.js"></script>
    <script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
        <script language="javascript">
            //$('.dropdown-toggle').dropdown();
            //$('.dropdown-menu').find('.forms').click(function (e) {
            //    e.removePropagation();
            //});

            //$(function() {
            //    $("div.dropdown-menu").on("click", "[data-stopPropagation]", function(e) {
            //        e.stopPropagation();
            //    });
            //});
            //$(function () {
            //    $("ul.nav pull-right").on("click", "[data-stopPropagation]", function (e) {
            //        e.stopPropagation();
            //    });
            //});
            $(document).ready(function () {
                //Handles menu drop down
                $('.dropdown-menu').find('form').click(function (e) {
                    e.stopPropagation();
                });
            });
            </script>

        
</head>
<body>
    <form id="form1" runat="server">
    
        
      <%--  <ul class="nav pull-right">
          <li class="dropdown" id="menuLogin">
            <a class="dropdown-toggle" href="#" data-toggle="dropdown" id="navLogin">Login</a>
            <div class="dropdown-menu" style="padding:17px;">
              <form class="form" id="formLogin"> 
                <asp:TextBox ID="txtUsername" data-stopPropagation="true"  placeholder="Username" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtPassword" CssClass="form-control" placeholder="Password" runat="server"></asp:TextBox>
                <asp:HyperLink ID="forgetPassword" runat="server">Forget your password?</asp:HyperLink>
                <asp:Button ID="btnLogin" CssClass="btn" runat="server" Text="Login" />
              </form>
            </div>
          </li>
        </ul>--%>
        <ul class="nav pull-right">
          <li><a href="/users/sign_up">Sign Up</a></li>
          <li class="divider-vertical"></li>
          <li class="drop down">
            <a class="dropdown-toggle" href="#" data-toggle="dropdown">Sign In <strong class="caret"></strong></a>
            <div class="dropdown-menu" style="padding: 15px; padding-bottom: 0px;">
                          <!-- Login form here -->
              <form action="[YOUR ACTION]" method="post" accept-charset="UTF-8">
                    <asp:TextBox ID="txtUsername" data-stopPropagation="true"  placeholder="Username" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtPassword" CssClass="form-control" placeholder="Password" runat="server"></asp:TextBox>
                    <asp:HyperLink ID="forgetPassword" runat="server">Forget your password?</asp:HyperLink>
                    <asp:Button ID="btnLogin" CssClass="btn" runat="server" Text="Login" />      
              </form>
            </div>

          </li>
        </ul>
   
    </form>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
   <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
</body>
</html>
