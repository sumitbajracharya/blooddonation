﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="WebSettings.aspx.cs" Inherits="Admin_WebSettings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="table table-bordered">
            <tr>xc
                <th colspan="2">WEB SETTINGS</th>
            </tr>
            <tr>
                <td class="col-sm-3">Location</td>
                <td>
                    <asp:Button ID="btnEditLocation" runat="server" Text="EDIT" cssClass="btn btn-default"/>
                </td>
            </tr>
            <tr>
                <td>Blood Center</td>
                <td>
                    <asp:Button ID="btnEditBloodCenter" runat="server" Text="EDIT" cssClass="btn btn-default"/>
                </td>
            </tr>
            <tr>
                <td>Blood Group</td>
                <td>
                    <asp:Button ID="btnEditBloodGroup" runat="server" Text="EDIT" cssClass="btn btn-default"/>
                </td>
            </tr>
            <tr>
                <td>Slider Image </td>
                <td>
                    <asp:Button ID="btnEditImageToTheSlider" runat="server" Text="EDIT" cssClass="btn btn-default"/>
                </td>
            </tr>
            <tr>
                <td>News Artical</td>
                <td>
                    <asp:Button ID="btnEditNewsArtical" runat="server" Text="EDIT" cssClass="btn btn-default"/>
                </td>
            </tr>
        </table>
</asp:Content>
