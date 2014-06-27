<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="row">
 <div class="col-md-12">
      
      <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
     <%--<img src="Assets/Images/Slider/u28_normal.jpg" alt="1" class="img-responsive" />--%>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Assets/Images/Slider/u28_normal.jpg" />
         <div class="carousel-caption">
          
       <!--  Caption Here -->
      </div>
    </div>

     <div class="item">
     <%-- <img src="Assets/Images/Slider/u32_normal.jpg" alt="1" class="img-responsive" />--%>
     <asp:Image ID="Image6" runat="server" ImageUrl="~/Assets/Images/Slider/u32_normal.jpg" />
      <div class="carousel-caption">
       <!--  Caption Here -->
      </div>
    </div>


    <div class="item">
   <%-- <img src="Assets/Images/Slider/u30_normal.jpg" alt="1" class="img-responsive" />--%>
     <asp:Image ID="Image3" runat="server" ImageUrl="~/Assets/Images/Slider/u30_normal.jpg" />
      <div class="carousel-caption">
       <!--  Caption Here -->
      </div>
    </div>
    ...
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
</div>
  </div> 
</div>
<div class="row">
  <div class="col-md-9"> 

<div class="row">
  <div class="col-md-6">Current Blood Request</div>
  <div class="col-md-6">
  <div class="row">
   <div class="col-md-12">ADVANCE BLOOD REQUEST</div>
  <div class="col-md-12">BLOOD CENTERS</div>
  </div>
  </div>
</div>

</asp:Content>

