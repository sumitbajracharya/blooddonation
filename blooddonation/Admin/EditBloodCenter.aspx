<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="EditBloodCenter.aspx.cs" Inherits="Admin_EditBloodCenter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<ul class="nav nav-tabs" role="tablist">
  <li class="active"><a href="#AddBloodCenters" role="tab" data-toggle="tab">Add Blood Centers</a></li>
 
  <li><a href="#EditBloodCenters" role="tab" data-toggle="tab">Edit Blood Centers</a></li></ul>


  


  <div class="tab-content">
  <div class="tab-pane active" id="AddBloodCenters">
    
  <table class="table table-bordered" style="margin-top:10px;">
     
            <tr>
                <td class="col-md-2">Center Name</td>
                <td><asp:TextBox ID="txtCenterName" cssClass="form-control" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
               
                <td>Location</td>
                <td><asp:DropDownList ID="ddlLocation" Width="50%" cssClass="form-control" runat="server"></asp:DropDownList></td>
            </tr>

            <tr>
                <td>Phone Number</td>
                <td><asp:TextBox ID="txtNumber" Width="115px" cssClass="form-control" runat="server"></asp:TextBox></td>
            </tr>

            
            <tr>
                <td>Image</td>
                <td><asp:FileUpload ID="fupImage" cssClass="btn btn-default" runat="server" /></td>
            </tr>

            <tr>
                <td>Details:</td>
                <td><asp:TextBox ID="TxtDeatails" cssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>

            <tr>
                <td colspan='2'>
               
                <asp:Button ID="btnAdd" cssClass="btn btn-default" runat="server" Text="Add Center" /> &nbsp;
                 <asp:Button ID="Cancel" cssClass="btn btn-default" runat="server" Text="Cancel" />  </td>
                        
            </tr>
        </table>


 </div>
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
               <td><%#Eval("CenterName")%> /td>
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


</div>

</asp:Content>

