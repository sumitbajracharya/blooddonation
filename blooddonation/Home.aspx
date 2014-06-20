<%@ Page Title="" Language="C#" MasterPageFile="~/User-Master.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DropDownList ID="DdlBloodGroup" runat="server">
    <asp:ListItem>Blood Group</asp:ListItem>
    <asp:ListItem>A+</asp:ListItem>
    <asp:ListItem>A-</asp:ListItem>
    <asp:ListItem>AB+</asp:ListItem>
    <asp:ListItem>AB-</asp:ListItem>
    <asp:ListItem>B+</asp:ListItem>
    <asp:ListItem>B-</asp:ListItem>
    <asp:ListItem>O+</asp:ListItem>
    <asp:ListItem>O-</asp:ListItem>
</asp:DropDownList>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<asp:DropDownList ID="DdlLocation" runat="server">
<asp:ListItem>Koteshower</asp:ListItem>
<asp:ListItem>Baneshower</asp:ListItem>
<asp:ListItem>Maitighar</asp:ListItem>
<asp:ListItem>NewRoad</asp:ListItem>
<asp:ListItem>Kausaltar</asp:ListItem>
<asp:ListItem>Jawlakhel</asp:ListItem>
</asp:DropDownList>

<asp:Button ID="btnSearch" runat="server"  Text="Search"/><br />
<br />
<div style="background-color:#eee; float:left; padding-left:20">
<asp:panel ID="pnlCurrentBloodRequest" runat="Server" 
        GroupingText="Current Blood Request" Height="337px" Width="361px">
<table>
<tr>
<td>1</td>
<td>Sapana Pradhan</td>
<td>Thapathali</td>
<td>985123232</td>
</tr>

<tr>
<td>2</td>
<td>Sharukh Khan</td>
<td>Jawlakhel</td>
<td>980324657</td>
</tr>

<tr>
<td>3</td>
<td>Rajesh Hamal</td>
<td>Baneshower</td>
<td>9851010236</td>
</tr>
</table>
</asp:panel> 
</div>

<div>
</div>
</asp:Content>

