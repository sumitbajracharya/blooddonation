﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DonarList.aspx.cs" Inherits="DonarList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br/>
    <asp:Label ID="LblMessage" runat="server" Text=" "></asp:Label>


    <asp:Repeater ID="rptrDonorList" runat="server">
        
        <ItemTemplate>
        <table class="table table-bordered">
            <tr>
                <td rowspan="7">
                    <asp:Image ID="Image1" runat="server" Height="122px" Width="148px" />
                </td>
                <td>Name</td>
                <td><%#Eval("FullName") %></td>
            </tr>
            <tr>
                <td>Blood Group</td>
                <td><%#Eval("BloodGroupID") %></td>
                
            </tr>
             <tr>
                <td>Mobile number</td>
                <td><%#Eval("BloodGroupID") %></td>
                
            </tr>
            <tr>
                <td>Gender</td>
                <td><%#Eval("Gender") %></td>
            </tr>
            
            <tr>
                <td>Age</td>
                <td><%#Eval("Age") %></td>
            </tr>
            <tr>
                <td>Location</td>
                <td><%#Eval("LocationID") %></td>
            </tr>
            <tr>
                <td>Last Donated Date</td>
                <td><%#Eval("LastDonationDate") %></td>
            </tr>
            
        </table>
            </ItemTemplate>
    </asp:Repeater>


</asp:Content>

