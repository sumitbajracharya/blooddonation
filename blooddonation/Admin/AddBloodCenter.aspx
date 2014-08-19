<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddBloodCenter.aspx.cs" Inherits="Admin_AddBloodCenter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     
  <!-- Add Blood center starts--> 
  <table class="table table-bordered" style="margin-top:10px;">
     
            <tr>
                <td class="auto-style1">Center Name</td>
                <td><asp:TextBox ID="txtCenterName" cssClass="form-control" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
               
                <td class="auto-style2">Location</td>
                <td><asp:DropDownList ID="ddlLocation" Width="50%" cssClass="form-control" runat="server"></asp:DropDownList></td>
            </tr>

            <tr>
                <td class="auto-style2">Phone Number</td>
                <td><asp:TextBox ID="txtNumber" Width="115px" cssClass="form-control" runat="server"></asp:TextBox></td>
            </tr>

            
            <tr>
                <td class="auto-style2">Image</td>
                <td><asp:FileUpload ID="fupImage" cssClass="btn btn-default" runat="server" /></td>
            </tr>

            <tr>
                <td class="auto-style2">Details:</td>
                <td><asp:TextBox ID="TxtDeatails" cssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>

            <tr>
                <td colspan='2'>
               
                <asp:Button ID="btnAdd" cssClass="btn btn-default" runat="server" Text="Add Center" 
                        onclick="btnAdd_Click" /> &nbsp;
                 <asp:Button ID="Cancel" cssClass="btn btn-default" runat="server" Text="Cancel" /> 
                    
                 <br />
                 <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                  </td>
                        
            </tr>
        </table>
      <!-- Add Blood center ends-->


      
 

</asp:Content>

