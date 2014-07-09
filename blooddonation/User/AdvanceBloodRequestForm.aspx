<%@ Page Title="Advance Blood Request Form" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="AdvanceBloodRequestForm.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
 
    
        <table class="table table-bordered">
            <tr>
                <th colspan="2">Advance Blood Request Form</th>
            </tr>
            <tr>
                <td class="col-sm-3">Full Name</td>
                <td>
                    <asp:TextBox ID="txtFullname"  placeholder="Enter email" cssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Age</td>
                <td>
                    <asp:TextBox ID="txtAge" cssClass="form-control" runat="server" Width="50px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Blood Group</td>
                <td>
                    <asp:DropDownList ID="ddlBloodgroup" runat="server" cssClass="form-control" Width="50%">
                        <asp:ListItem>A+ve</asp:ListItem>
                        <asp:ListItem>A-ve</asp:ListItem>
                        <asp:ListItem>B+ve</asp:ListItem>
                        <asp:ListItem>B-ve</asp:ListItem>
                        <asp:ListItem>AB+ve</asp:ListItem>
                        <asp:ListItem>AB-ve</asp:ListItem>
                        <asp:ListItem>O+ve</asp:ListItem>
                        <asp:ListItem>O-ve</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Quantity</td>
                <td>
                    <asp:TextBox ID="txtQuantity" cssClass="form-control" runat="server" Width="60px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Location</td>
                <td>
                    
                    <asp:DropDownList ID="ddlDistrict" runat="server" cssClass="form-control" Width="50%">
                      
                        
                        
                        <asp:ListItem>Kathmandu</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:DropDownList ID="ddlLocation" runat="server" cssClass="form-control" Width="50%">
                        <asp:ListItem>New Road</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Date</td>
                <td>
                    
                    <asp:TextBox ID="txtDate" runat="server" cssClass="form-control"></asp:TextBox>
                   
                   
                </td>
            </tr>
            <tr>
                <td>Time</td>
                <td>
                      <asp:DropDownList ID="DropDownList1" runat="server" cssClass="form-control pull-left" style="margin-right:10px;"  Width="65px" >
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                         <asp:ListItem>3</asp:ListItem>
                         <asp:ListItem>4</asp:ListItem>
                         <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlTimeAmPm" runat="server" cssClass="form-control"  Width="65px" >
                        <asp:ListItem>am</asp:ListItem>
                        <asp:ListItem>pm</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Phone no.</td>
                <td>
                    <asp:TextBox ID="txtPhonenumber" runat="server" cssClass="form-control"  Width="115px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Purpose</td>
                <td>
                    <asp:TextBox ID="txtPurpose" runat="server" cssClass="form-control" placeholder="Enter Purpose"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Hospital Paper</td>
                <td>
                  <asp:Image ID="imgHospitalpaprer" runat="server" Height="223px" Width="281px" />
                    <asp:FileUpload ID="fupImage" runat="server" cssClass="btn btn-default" />
                    <br />
                  
                </td>
            </tr>
            <tr>
                <td>Message</td>
                <td>
                    <asp:TextBox ID="txtMessage" runat="server" cssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
                </td>
            </tr>
        </table>
    
 
   


</asp:Content>