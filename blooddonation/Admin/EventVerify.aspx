<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="EventVerify.aspx.cs" Inherits="Admin_EventVerify" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br /><br /><br />
<!-- listing the event in table-->
<div id="divListEvent" style="float:left; margin:10px">
<table border=2px>
<tr>
<th>Date.</th>
<th>Program</th>
</tr>

 <asp:Repeater ID="rptrEvents"   runat="server">
     <ItemTemplate>
          <tr>
               <td><%#Eval("Date")%> </td>
               <td><%#Eval("ProgramName")%> </td>
          </tr>  
      </ItemTemplate>
  </asp:Repeater>

</table>
</div>


<div id="divEventContent" style="min-width:400px; padding-left:4px;" >

<table  style="min-width:300px; margin-right: 0px;" >

<tr>
<td class="style4">Event Title</td>
<td class="style1"><asp:Label ID="lblEventTitle" runat="server"></asp:Label></td>
</tr>

<tr>
<td  class="auto-style1">Event Date </td>
<td  class="auto-style1"><asp:Label ID="lblDate" runat="server"></asp:Label></td>
</tr>

<tr>
<td  class="style4">Time </td>
<td  class="style1"><%#Eval("TimeStart")%> to <%#Eval("TimeEnd")%></td>
</tr>

<tr>
<td class="style4">Venue </td>
<td class="style1"><asp:Label ID="lblVenue" runat="server"></asp:Label></td>
</tr>

<tr>
<td class="style4">Posted By </td>
<td class="style1"><asp:Label ID="lblPostedBy" runat="server"></asp:Label></td>
</tr>

<tr>
<td class="style4">Description </td>
<td class="style1"><asp:Label ID="lblDescription" runat="server"></asp:Label></td>
</tr>

<tr>
<td class="style4">Contact No. </td>
<td class="style1"><asp:Label ID="lblContactNo" runat="server"></asp:Label></td>
</tr>

<tr>
<td class="style4">Event Images </td>
<td class="style1"> <img src='<%#Eval("EventImage")%>' /></td>
</tr>

<tr>
<td colspan='2' class="style1"><center> <asp:Button ID="btnAllow" runat="server" Text="Allow" /> &nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnDiscard" runat="server" Text="Discard" /></center></td>
</tr>

</table>

</div>



</asp:Content>

