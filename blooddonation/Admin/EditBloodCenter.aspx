<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="EditBloodCenter.aspx.cs" Inherits="Admin_EditBloodCenter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <!-- Contents -->


 <!-- Edit Blood Center Starts-->
  <div class="tab-pane" id="EditBloodCenters">

  <div class="row">
  <div class="col-md-3">
 <table class="table table-bordered" style="margin-top:10px;">
   
    <tr>
    <th>S.no. </th>
    <th>Center Name </th>
    </tr>

    <asp:Repeater ID="rptrBloodCenters"   runat="server">
     <ItemTemplate>
          <tr>
               <td><%#Eval("CenterID")%> </td>
               <td><%#Eval("CenterName")%> </td>
          </tr>  
      </ItemTemplate>
  </asp:Repeater>
   
   </table>
  
  
  </div>
  <div class="col-md-9">
  
  <table class="table table-bordered" style="margin-top:10px;">
         <tr>
                <td class="col-md-3">Center Name</td>
                <td><asp:TextBox ID="txtCenterName1" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
               
                <td>Location</td>
                <td><asp:DropDownList ID="ddlLocation1" cssClass="form-control" Width="50%" runat="server"></asp:DropDownList></td>
            </tr>

            <tr>
                <td>Phone Number</td>
                <td><asp:TextBox ID="txtPhoneNumber" cssClass="form-control" Width="115px" runat="server"></asp:TextBox></td>
            </tr>

            
            <tr>
                <td>Image</td>
                <td>
                <asp:FileUpload ID="fupImage1"  cssClass="btn btn-default" runat="server" /></td>
            </tr>

            <tr>
                <td>Details:</td>
                <td><asp:TextBox ID="txtDetails"  cssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>

            <tr>
                <td colspan='2'>
                
                <asp:Button ID="Button1" runat="server" cssClass="btn btn-default" Text="Save" /> &nbsp;
                 <asp:Button ID="Button2" runat="server" cssClass="btn btn-default" Text="Restore" />  </td>
                         
            </tr>    

        </table>
  
  
  </div>
</div>
   </div>

      <!-- Edit Blood Center Ends-->
 </div>

</asp:Content>

