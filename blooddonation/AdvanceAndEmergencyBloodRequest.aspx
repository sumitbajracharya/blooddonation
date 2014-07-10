<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdvanceAndEmergencyBloodRequest.aspx.cs" Inherits="AdvanceAndEmergencyBloodRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<ul class="nav nav-tabs" role="tablist">
  <li class="active"><a href="#Advance" role="tab" data-toggle="tab">Advance Blood Request Form</a></li>
  <li><a href="#Emergency" role="tab" data-toggle="tab">Emergency Blood Request</a></li>
</ul>
asdf

  <div class="tab-content" style="margin-top:5px;">
  <div class="tab-pane active" id="Advance">
  
     <table class="table table-bordered">
            <tr>
                <th colspan="2">Advance Blood Request Form</th>
            </tr>
            <tr>
                <td class="col-sm-3">Full Name</td>
                <td>
                    <asp:TextBox ID="TextBox1"  placeholder="FullName" cssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Age</td>
                <td>
                    <asp:TextBox ID="TextBox2" cssClass="form-control" runat="server" Width="50px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Blood Group</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" cssClass="form-control" Width="50%">
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
                    
                    <asp:DropDownList ID="DropDownList2" runat="server" cssClass="form-control" Width="50%">
                      
                        
                        
                        <asp:ListItem>Kathmandu</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:DropDownList ID="DropDownList3" runat="server" cssClass="form-control" Width="50%">
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
                      <asp:DropDownList ID="DropDownList4" runat="server" cssClass="form-control pull-left" style="margin-right:10px;"  Width="65px" >
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
                    <asp:TextBox ID="TextBox3" runat="server" cssClass="form-control"  Width="115px" ></asp:TextBox>
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
                    <asp:TextBox ID="TextBox4" runat="server" cssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-default" />
                    <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="btn btn-default" />
                </td>
            </tr>
        </table>
   </div>
  <div class="tab-pane" id="Emergency">
  <table class="table table-bordered">
            <tr>
                <th colspan="2">Emergency Blood Request</th>
            </tr>
            <tr>
                <td>Full Name</td>
                <td>
                    <asp:TextBox ID="txtFullName" runat="server" cssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Age</td>
                <td>
                    <asp:TextBox ID="txtAge" runat="server" cssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Blood Group</td>
                <td>
                    <asp:DropDownList ID="ddlBloodgroup" runat="server">
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
                <td>Location</td>
                <td>
                    <asp:DropDownList ID="ddlDistrict" runat="server" cssClass="form-control">
                        <asp:ListItem>Choose District</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:DropDownList ID="ddlLocation" runat="server" cssClass="form-control">
                        <asp:ListItem>ChooseLocation</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Phone no.</td>
                <td>
                    <asp:TextBox ID="txtPhoneNumber" runat="server" cssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Message</td>
                <td>
                    <asp:TextBox ID="txtMessage" runat="server" Height="107px" TextMode="MultiLine" cssClass="form-control"></asp:TextBox>
                </td>
            </tr>
           <tr>
                
                <td colspan="2" align="center">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-default" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-default" />
                </td>
            </tr>
        </table>

  </div>
  
  </div>
</asp:Content>

