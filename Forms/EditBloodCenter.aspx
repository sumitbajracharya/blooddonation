<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditBloodCenter.aspx.cs" Inherits="EditBloodCenter" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!--Added two buttons to toggle between two panels -->
        <asp:LinkButton ID="LnkAddCenter" runat="server" onclick="LnkAddCenter_Click">Add Blood Centers</asp:LinkButton>   
         &nbsp;&nbsp;&nbsp;&nbsp;   
         <asp:LinkButton ID="LnkEditCenter" runat="server" onclick="LnkEditCenter_Click">Edit Blood Centers</asp:LinkButton>  
             
    <!-- Add Blood Center Form -->
    <asp:Panel ID="pnlAddBloodCenter" runat="server" GroupingText="Add Blood Centers">
        <table>
     
            <tr>
                <td class="style1">Center Name</td>
                <td class="style1"><asp:TextBox ID="txtCenterName" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
               
                <td class="style1">Location</td>
                <td class="style1"><asp:DropDownList ID="ddlLocation" runat="server"></asp:DropDownList></td>
            </tr>

            <tr>
                <td class="style1">Phone Number</td>
                <td class="style1"><asp:TextBox ID="txtNumber" runat="server"></asp:TextBox></td>
            </tr>

            
            <tr>
                <td class="style1">Image</td>
                <td class="style1"><asp:FileUpload ID="fupImage" runat="server" /></td>
            </tr>

            <tr>
                <td class="style1">Details:</td>
                <td class="style1"><asp:TextBox ID="TxtDeatails" runat="server" Height="150px" Width="450px"></asp:TextBox></td>
            </tr>

            <tr>
                <td colspan='2' class="style1">
                <center>
                <asp:Button ID="btnAdd" runat="server" Text="Add Center" /> &nbsp;
                 <asp:Button ID="Cancel" runat="server" Text="Cancel" />  </td>
                 </center>            
            </tr>
        </table>
    </asp:Panel>


    <!-- Edit Blood Center Form -->
    <asp:Panel ID="PnlEditBloodCenter" runat="server" GroupingText="Edit Blood Centers" Visible="false">

    <!--Listing The Blood Center names -->
    <div style="float:left;">
  <table>
   
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
   <div>
  
   
   <br />
    <!--Editing The Blood editing -->
     <table>
         <tr>
                <td class="style1">Center Name</td>
                <td class="style1"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
               
                <td class="style1">Location</td>
                <td class="style1"><asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></td>
            </tr>

            <tr>
                <td class="style1">Phone Number</td>
                <td class="style1"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>

            
            <tr>
                <td class="style1">Image</td>
                <td class="style1">
                <img id="imgImage" runat="server" width='400' height='300' />
                <asp:FileUpload ID="FileUpload1" runat="server" /></td>
            </tr>

            <tr>
                <td class="style1">Details:</td>
                <td class="style1"><asp:TextBox ID="TextBox3" runat="server" Height="150px" 
                        Width="450px"></asp:TextBox></td>
            </tr>

            <tr>
                <td colspan='2' class="style1">
                <center>
                <asp:Button ID="Button1" runat="server" Text="Save" /> &nbsp;
                 <asp:Button ID="Button2" runat="server" Text="Restore" />  </td>
                 </center>            
            </tr>    

        </table>
  

 </div>
     
    </asp:Panel>

    
    </div>
    </form>
</body>
</html>
