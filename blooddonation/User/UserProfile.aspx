<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="User_UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <p align="right"><a href=EditUser.aspx >Edit </a> </p>

    <table class="table table-bordered">
    
    <tr>
    <td rowspan='4'><img src='<%#Eval("ProfilePicture")%>'></td>
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

    </table>
</asp:Content>

