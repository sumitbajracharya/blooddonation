<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DonarDetails.aspx.cs" Inherits="DonarDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
    
    <tr>
    <td rowspan='4'><img src=<%#Eval("ProfilePicture")%>></td>
    <td>Name:</td>
    <td><%#Eval("Name")%></td>
    </tr>

    <tr>
    <td>Gender:</td>
    <td><%#Eval("Gender")%></td>
    </tr>

    <tr>
    <td>Adderss:</td>
    <td><%#Eval("Address")%></td>
    </tr>

    <tr>
    <td>Blood Group:</td>
    <td><%#Eval("BloodGroup")%></td>
    </tr>

    <tr>
    <td>Date of Birth:</td>
    <td colspan='2'><%#Eval("DateOfBirth")%></td>
    </tr>

    <tr>
    <td>Last Donation date:</td>
    <td colspan='2'><%#Eval("LastDonationDate")%></td>
    </tr>

    <tr>
    <td>Occupation:</td>
    <td colspan='2'><%#Eval("Occupation")%></td>
    </tr>

    <tr>
    <td>Recent Medication:</td>
    <td colspan='2'><%#Eval("RecentMedication")%></td>
    </tr>

    <tr>
    <td>Heridatory Disease:</td>
    <td colspan='2'><%#Eval("HeridotaryDisease")%></td>
    </tr>

    <tr>
    <td>Weight:</td>
    <td colspan='2'><%#Eval("Weight")%></td>
    </tr>

    <tr>
    <td>Habbit:</td>
    <td colspan='2'><%#Eval("Habbits")%></td>
    </tr>

    <tr>
    <td>Best Avaliability:</td>
    <td colspan='2'><%#Eval("BestAvalibility")%></td>
    </tr>

    <tr>
    <td colspan='3'><center><asp:button ID="btnRequest" runat="server" Text="send Request" /></center></td>
    </tr>

    </table>
    </div>
    </form>
</body>
</html>
