<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditBloodGroup.aspx.cs" Inherits="EditBloodGroup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:TextBox ID="txtBloodGroup" runat="server"></asp:TextBox>
    <asp:Button runat="server" ID="btnAdd" Text="Add" />

    <br /><br /><br /><br />

    <asp:GridView ID="gdvBloodGroup" runat="server" onrowcommand="GridView1_RowCommand">
    <Columns>
    <asp:TemplateField>
    <ItemTemplate>
    <asp:Button ID="BtnDelete" runat="server" text="Delete" CommandArgument='<%#Eval("BloodGroupID") %>' />
    </ItemTemplate>
    </asp:TemplateField>
    </Columns>
    </asp:GridView>
    
    </div>
    </form>
</body>
</html>
