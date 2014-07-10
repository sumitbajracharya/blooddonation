<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DonarDetails.aspx.cs" Inherits="DonarDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<<<<<<< HEAD:blooddonation/User/DonarDetails.aspx

  <table class="table table-bordered">
=======
    <table class="table table-bordered">
>>>>>>> cc3579e75851df46bca359f40e5a65fa34aaee7a:blooddonation/DonarDetails.aspx
    
    <tr>
    
    <td class="col-sm-3">Name</td>
    <td><%#Eval("Name")%></td>
    <td rowspan='4' class="col-sm-2">
        <asp:Image ID="Image1" runat="server" Width="150" CssClass="img-thumbnail" ImageUrl="~/Assets/Images/Slider/slider1.jpg" />
   </td>
    
     </tr>

    <tr>
    <td>Gender</td>
    <td><%#Eval("Gender")%></td>
    </tr>

    <tr>
    <td>Adderss</td>
    <td><%#Eval("Address")%></td>
    </tr>

    <tr>
    <td>Blood Group</td>
    <td><%#Eval("BloodGroup")%></td>
    </tr>

    <tr>
    <td class="style1">Date of Birth</td>
    <td colspan='2'><%#Eval("DateOfBirth")%></td>
    </tr>

    <tr>
    <td class="style1">Last Donation date</td>
    <td colspan='2'><%#Eval("LastDonationDate")%></td>
    </tr>

    <tr>
    <td class="style1">Occupation</td>
    <td colspan='2'><%#Eval("Occupation")%></td>
    </tr>

    <tr>
    <td class="style1">Recent Medication</td>
    <td colspan='2'><%#Eval("RecentMedication")%></td>
    </tr>

    <tr>
    <td class="style1">Heridatory Disease</td>
    <td colspan='2'><%#Eval("HeridotaryDisease")%></td>
    </tr>

    <tr>
    <td class="style1">Weight</td>
    <td colspan='2'><%#Eval("Weight")%></td>
    </tr>

    <tr>
    <td class="style1">Habbit</td>
    <td colspan='2'><%#Eval("Habbits")%></td>
    </tr>

    <tr>
    <td class="style1">Best Avaliability</td>
    <td colspan='2'><%#Eval("BestAvalibility")%></td>
    </tr>

    <tr>
    <td colspan='3'><center><asp:button ID="btnRequest" runat="server" Text="send Request" cssClass="btn btn-default"/></center></td>
    </tr>

    </table>

</asp:Content>

