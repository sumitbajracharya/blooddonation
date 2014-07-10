<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EventDetails.aspx.cs" Inherits="EventDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 500px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="2">
                    <img id="Image1" runat="server" height='94' width='577' src="<%#Eval("Image") %>"/>
                </td>
            </tr>
            <tr>
                <td>Date</td>
                <td><%#Eval("Date") %></td>
            </tr>
            <tr>
                <td>Time</td>
                <td><%#Eval("Time")%></td>
            </tr>
            <tr>
                <td>Venue</td>
                <td><%#Eval("Venue") %></td>
            </tr>
            <tr>
                <td>Posted By</td>
                <td><%#Eval("PostedBy") %></td>
            </tr>
            <tr>
                <td>Description</td>
                <td><%#Eval("Description") %></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
