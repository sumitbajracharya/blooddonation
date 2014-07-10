<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditLocation.aspx.cs" Inherits="EditLocation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
    <asp:Button runat="server" ID="btnAdd" Text="Add" />

    <br /><br /><br /><br />

    <asp:GridView ID="gdvLocation" runat="server" >
    <Columns>
    <asp:TemplateField>
    <ItemTemplate>
    <asp:Button ID="BtnDelete" runat="server" text="Delete" CommandArgument='<%#Eval("LocationID") %>' />
    </ItemTemplate>
    </asp:TemplateField>
    </Columns>
    </asp:GridView>
    
    </div>
    </form>
</body>
</html>
