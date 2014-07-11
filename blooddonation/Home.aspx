<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="row">
  
  
   <div class="col-md-12"><h3>ADVANCE BLOOD REQUEST</h3>
  <div class="row">
  <div class="col-md-3"><h4>Date</h4>
 
      <asp:Repeater ID="Repeater1" runat="server">
          <ItemTemplate>
              <h6><a href="" <%#Eval("Date") %>></a></h6>
          </ItemTemplate>
      </asp:Repeater>
  
  </div>
  <div class="col-md-9"><h4>Program</h4>
   
      <asp:Repeater ID="Repeater2" runat="server">
          <ItemTemplate>
              <h6><a href="" <%#Eval("Program") %>></a></h6>
          </ItemTemplate>
      </asp:Repeater>
  </div>
</div>
   </div>
  <div class="col-md-12"><h3>BLOOD CENTERS</h3>
  <div class="row">
  <div class="col-md-3"><h4>Date</h4>
  <asp:Repeater ID="Repeater3" runat="server">
          <ItemTemplate>
              <h6><a href="" <%#Eval("Date") %>></a></h6>
          </ItemTemplate>
      </asp:Repeater>
  
  </div>
  <div class="col-md-9"><h4>Program</h4>
   <asp:Repeater ID="Repeater4" runat="server">
          <ItemTemplate>
              <h6><a href="" <%#Eval("Program") %>></a></h6>
          </ItemTemplate>
      </asp:Repeater>
 
  </div>
</div>
  
  
  
  </div>
  </div>
 

</asp:Content>

