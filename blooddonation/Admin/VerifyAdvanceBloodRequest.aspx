<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="VerifyAdvanceBloodRequest.aspx.cs" Inherits="Admin_VerifyAdvanceBloodRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br /><br />
<!-- listing the Advance Blood Request in table-->
<div id="divListEvent" style="float:left; margin:10px">
<table border=2px>
<tr>
<th>Date</th>
<th>Contact Person</th>
</tr>

 <asp:Repeater ID="rptrEvents"   runat="server">
     <ItemTemplate>
          <tr>
               <td><%#Eval("Date")%> </td>
               <td><%#Eval("ContactPerson")%> </td>
          </tr>  
      </ItemTemplate>
  </asp:Repeater>

</table>
</div>

    <div id="divEventContent" style="min-width:400px; padding-left:4px;" >

<table  style="min-width:300px; margin-right: 0px;" >

<tr>
<td class="style4">Full Name:</td>
<td class="style1"><asp:Label ID="lblFullName" runat="server"></asp:Label></td>
</tr>

<tr>
<td  class="auto-style1">Age </td>
<td  class="auto-style1"><asp:Label ID="lblAge" runat="server"></asp:Label></td>
</tr>

<tr>
<td  class="style4">Blood Group :</td>
<td  class="style1"><asp:Label ID="lblBloodGroup" runat="server"></asp:Label></td>
</tr>

<tr>
<td class="style4">Quantity :</td>
<td class="style1"><asp:Label ID="lblQuantity" runat="server"></asp:Label></td>
</tr>

<tr>
<td class="style4">Location:</td>
<td class="style1"><asp:Label ID="lblLocation" runat="server"></asp:Label></td>
</tr>

<tr>
<td class="style4">Date : </td>
<td class="style1"><asp:Label ID="lblDate" runat="server"></asp:Label></td>
</tr>

<tr>
<td class="style4">Time : </td>
<td class="style1"><asp:Label ID="lblTime" runat="server"></asp:Label></td>
</tr>

<tr>
<td class="style4">Contact No. : </td>
<td class="style1"><asp:Label ID="Label1" runat="server"></asp:Label></td>
</tr>

<tr>
<td class="style4">Purpose : </td>
<td class="style1"><asp:Label ID="Label2" runat="server"></asp:Label></td>
</tr>


<tr>
<td class="style4">Hospital Docs: </td>
<td class="style1"> <img src='<%#Eval("EventImage")%>' /></td>
</tr>

<tr>
<td colspan='2' class="style1"><center> <asp:Button ID="btnAllow" runat="server" Text="Allow" /> &nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnDiscard" runat="server" Text="Discard" /></center></td>
</tr>

</table>

</div>

</asp:Content>

