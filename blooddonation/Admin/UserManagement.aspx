<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="UserManagement.aspx.cs" Inherits="Admin_UserManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- Nav tabs -->
<ul class="nav nav-tabs" role="tablist">
  <li class="active"><a href="#List" role="tab" data-toggle="tab">List Member</a></li>
  <li><a href="#Verify" role="tab" data-toggle="tab">Verify Member</a></li>
  <li><a href="#Update" role="tab" data-toggle="tab">Update Member</a></li>
 
</ul>

<!-- Tab panes -->
<div class="tab-content">
  <div class="tab-pane active" id="List">List Member</div>
  <div class="tab-pane" id="Verify">Verify Member</div>
  <div class="tab-pane" id="Update">Update Member</div>

</div>

</asp:Content>

