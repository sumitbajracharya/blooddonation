<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditNewsArticle.aspx.cs" Inherits="EditNewsArticle" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 49px;
        }
        .style2
        {
            height: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
    <tr>
    <td class="style1">News Title</td>
    <td class="style1"><asp:TextBox ID="txtNewsTitle" runat="server"></asp:TextBox></td>
    </tr>

    <tr>
    <td class="style2">News Image: </td>
    <td class="style2"><asp:FileUpload ID="fupNewsImage" runat="server" /></td>
    </tr>

    <tr>
    <td>News Body:</td>
    <td><asp:TextBox ID="txtNewsBody" runat="server" Height="172px" Width="337px"></asp:TextBox></td>
    </tr>

    <tr>
    <td colspan='2'><center> <asp:Button ID="btnAdd" runat="server" Text="Add" /> &nbsp;&nbsp;&nbsp; <asp:Button ID="btnCancel" runat="server" Text="Cancel" /></center></td>
    </tr>
    </table>
   

    <br /><br /><br /><br />

    <asp:GridView ID="gdvBloodGroup" runat="server" onrowcommand="GridView1_RowCommand">
    <Columns>
    <asp:TemplateField>
    <ItemTemplate>
    <asp:Button ID="BtnDelete" runat="server" text="Delete" CommandArgument='<%#Eval("CountryID") %>' />
    </ItemTemplate>
    </asp:TemplateField>
    </Columns>
    </asp:GridView>
    </div>
    </form>
</body>
</html>
