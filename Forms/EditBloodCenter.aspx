﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditBloodCenter.aspx.cs" Inherits="EditBloodCenter" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:LinkButton ID="LnkAddCenter" runat="server" onclick="LnkAddCenter_Click">Add Blood Centers</asp:LinkButton>   
         &nbsp;&nbsp;&nbsp;&nbsp;   
         <asp:LinkButton ID="LnkEditCenter" runat="server" 
            onclick="LnkEditCenter_Click">Edit Blood Centers</asp:LinkButton>      
    <!-- Add Blood Center Form -->
    <asp:Panel ID="pnlAddBloodCenter" runat="server" GroupingText="Add Blood Centers">
    
    </asp:Panel>


    <!-- Edit Blood Center Form -->
    <asp:Panel ID="PnlEditBloodCenter" runat="server" GroupingText="Edit Blood Centers" Visible="false">
    
    </asp:Panel>

    
    </div>
    </form>
</body>
</html>
