﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<div class="row">
  <div class="col-md-4"><h3>Current Blood Request</h3>
  
  <ul>
  <li>1. Sushma Karki Baneshor 9800000 </li>
 <li>1. Sushma Karki Baneshor 9800000 </li>
  <li>1. Sushma Karki Baneshor 9800000 </li>
   <li>1. Sushma Karki Baneshor 9800000 </li>
    <li>1. Sushma Karki Baneshor 9800000 </li>

  
  </ul>
  
  </div>
  <div class="col-md-8">
  <h3>Contact Us</h3>
 <div class="form-group">

    <label for="exampleInputEmail1">Full Name</label>
     <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Full Name" runat="server"></asp:TextBox>
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Email Id</label>
      <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Email Id" runat="server"></asp:TextBox>
    
  </div>
    <div class="form-group">
   <label for="exampleInputPassword1">Message</label>
        <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>

  </div>
      <asp:Button ID="btnSubmit" CssClass="btn btn-default" runat="server" Text="Submit" />
  
  
  </div>
</div>



</asp:Content>

