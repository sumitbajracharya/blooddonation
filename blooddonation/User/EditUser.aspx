<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="EditUser.aspx.cs" Inherits="User_EditUser" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <table class="table table-bordered">
            <tr>
                <td>Full Name</td>
                <td>
                    <asp:TextBox ID="txtFName" runat="server" cssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td>Date of Birth</td>
                <td>
                     <asp:TextBox ID="txtDateOfBirth" runat="server" cssClass="form-control"></asp:TextBox>
                 
                     <cc1:CalendarExtender ID="txtDateOfBirth_CalendarExtender" runat="server" 
                         TargetControlID="txtDateOfBirth">
                     </cc1:CalendarExtender>
                 
                </td>
            </tr>
            <tr>
                <td>Gender</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Blood Group</td>
                <td class="auto-style2">
                    <asp:Label ID="lblBloodgroup" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
           
            <tr>
                <td>Current Address</td>
                <td>
                    <asp:TextBox ID="txtCurrentAddress" runat="server" cssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>E-Mail</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" cssClass="form-control"></asp:TextBox>
                </td>
            </tr>
          
            <tr>
                <td>Best Time To Contact</td>
                <td>
                    <asp:CheckBoxList ID="chkContactTime" runat="server">
                        <asp:ListItem>Anytime</asp:ListItem>
                        <asp:ListItem>Morning</asp:ListItem>
                        <asp:ListItem>Afternoon</asp:ListItem>
                        <asp:ListItem>Evening</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>Phone No.</td>
                <td>
                    <asp:TextBox ID="txtPhoneNumber" runat="server" cssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Mobile No.</td>
                <td>
                    <asp:TextBox ID="txtMobilenumber" runat="server" cssClass="form-control"></asp:TextBox>
                </td>
            </tr>
           
           
            <tr>
                <td>Change Profile Picture</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" cssClass="btn btn-default"/>
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="122px" Width="127px" />
                </td>
            </tr>
            <tr>
               
                <td colspan="2" align="center">
                    <asp:Button ID="BtnSave" runat="server" Text="Save" cssClass="btn btn-default"/>
                    <asp:Button ID="BtnRestore" runat="server" Text="Restore" cssClass="btn btn-default"/>
                </td>
            </tr>
        </table>

</asp:Content>

