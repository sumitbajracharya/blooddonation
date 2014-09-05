<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="row">
<div class="container">
  <div class="col-md-8 col-xs-12">
  
  <div class="panel panel-info">
   <div class="panel-heading">Why should we donate blood? </div>
  <div class="panel-body text-justify">
    Blood contains many life-saving components that can help to treat different illnesses and injuries. For many people, blood donors are their life-line. Blood donation gives a proud feeling of touching someone's life in such a beautiful way. It's an experience that no words can define. You have to donate blood yourself to find out. You also benefit in other ways by donating blood as it reduces the chances of ischemic heart diseases (beginning of heart problems) as frequent donations reduce the accumulated and unwanted iron load from the body. Your blood donation will also get you your blood insurance from us. By keeping the blood line flowing, you will greatly contribute towards a healthier, happier society. Do remember, any one may require blood any time including ourselves and our dear ones. 
  </div>
  
  
  </div>
  
  
  </div>
  

   <div class="col-md-4 col-xs-12">
  
  <div class="panel panel-info">
   <div class="panel-heading">How much Blood and how often can I donate? </div>
  <div class="panel-body text-justify">
  You can donate blood every 12 weeks, up to 4 times a year. Eligible donors (any body between 18 to 60 years of age and leading a healthy life) with weight above 50 kgs. can donate up to 450 ml of blood. Your body can replenish this volume within 24 hours. 
  </div>
  
  
  </div>
  
  
  </div>

  </div>
 

</div>



<div class="row">
<div class="container">
  <div class="col-md-4 col-xs-12">
  
  <div class="panel panel-info">
   <div class="panel-heading">When Not to Donate Blood? </div>
  <div class="panel-body text-justify">
   
   You should not give blood if you have: 
Autoimmune diseases such as SLE, Rheumatoid Arthritis, Thyrotoxicosis.Been infected by HIV or are at risk of getting HIV (e.g. have had sexual contact with a HIV-positive person, have multiple sex partners or patronized sex workers);Previous history of drug abuse (either oral or intravenous);Serious chronic illnesses such as diseases of the heart or lung (those with well-controlled asthma can still donate blood).Ever had Hepatitis B or C;Previous or current history of cancer.
  </div>
  
  
  </div>
  
  
  </div>
  

   <div class="col-md-4 col-xs-12">
  
  <div class="panel panel-info">
   <div class="panel-heading">What is the Criteria for Donating Blood? </div>
  <div class="panel-body text-justify">
 Blood donors should be in good health and not suffer from any serious illness. It is very important to ensure that the act of donating blood does not jeopardize the donor's health in any way.
Safe blood is blood that does not contain viruses, bacteria, parasites, drugs or other injurious factors that may harm a blood recipient. Donated blood must also not harm the recipient. It must be safe for transfusion to those who need it. 
  </div>
  
  
  </div>
  
  
  </div>


  <div class="col-md-4 col-xs-12">
  
  <div class="panel panel-info">
   <div class="panel-heading">Why should I become a regular blood donor? </div>
  <div class="panel-body text-justify">
  As you know, blood is a life saving medicine, which works wonders in certain medical treatments, and life threatening situations. Our society is today threatened by scarcity of blood and the only blood source today is human being. This issue has got further complexes by professional donors, who donate blood for money. These donors have contributed towards rapid spread of killer diseases like AIDS, Hepatitis B & Hepatitis C in the society. Your regular donation will go a long way in salvaging the situation. 
  </div>
  
  
  </div>
  
  
  </div>

  </div>
</div>













 <%--   <div class="row">
  
  
   <div class="col-md-12 col-xs-12">
       <%--<table class="table table-bordered">
           <tr>
               <th colspan="2">ADVANCE BLOOD REQUEST</th>
           </tr>
           <tr>
               <td>
                   <h4>Date</h4>
 
               </td>
               <td>
                   <h4>Program</h4>
   
               </td>
           </tr>
          
       </table>
       
 
 --%>
      
  
 
      <%--<table class="table table-bordered">

          <tr>
              <th colspan="2">BLOOD CENTERS</th>
          </tr>
         
                    <tr>
                        <td><h4>SN</h4></td>
                        <td><h4>Name</h4></td>
                        <td><h4>Location</h4></td>
                    </tr>
           <asp:Repeater ID="Repeater2" runat="server">
               <ItemTemplate>
                    <tr>
                        <td><h6><%#Eval("sn") %>></h6></td>
                        <td><h6><a href="~/User/BloodCenterDetails.aspx?id=<%#Eval("BloodCenterId") %>"><%#Eval("name") %>></></h6></td>
                        <td><h6><%#Eval("location") %>></h6></td>
                    </tr>
              </ItemTemplate>
          </asp:Repeater>
      </table>--%>
 
  
  


</asp:Content>

