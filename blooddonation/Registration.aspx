<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="~/Assets/Styles/Css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <link href="~/Assets/Styles/Css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="~/Assets/Styles/Css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="overflow:hidden;">
<asp:Panel ID="pnlRegister" runat="server">
<div class="row">

<div class="col-xs-12">
 <div class="form-group">
    <label for="exampleInputEmail1">Full Name</label>
  <asp:TextBox ID="TxtFirstName" placeholder="Full Name" cssClass="form-control" runat="server"></asp:TextBox>
  </div>

 <div class="form-group">
    <label for="exampleInputEmail1">Blood Group</label>
    <asp:DropDownList ID="ddl_bloodgroup" 
        cssClass="form-control" runat="server" Width="100%"></asp:DropDownList>
  </div>

 <div class="form-group">
    <label for="exampleInputEmail1">Current District</label>
  <asp:DropDownList ID="ddl_district" 
        cssClass="form-control" runat="server" Width="100%"></asp:DropDownList>
  </div>

 <div class="form-group">
    <label for="exampleInputEmail1">Current address</label>
    <asp:TextBox ID="txtLocation" 
        cssClass="form-control" placeholder="Current Address" runat="server"></asp:TextBox>
  </div>

 <div class="form-group">
    <label for="exampleInputEmail1">Email Id</label>
    <asp:TextBox ID="TxtEmail" placeholder="Email Id" cssClass="form-control" runat="server"></asp:TextBox>
  </div>
 <div class="form-group">
    <label for="exampleInputEmail1">Mobile Number</label>
    <asp:TextBox ID="Txtmobile" placeholder="Mobile Number" cssClass="form-control" runat="server"></asp:TextBox>
  </div>

 <div class="form-group">
    <label for="exampleInputEmail1"><asp:Label ID="lblCaptcha" runat="server"></asp:Label></label>
    <asp:TextBox ID="txtCaptcha" placeholder="Result" cssClass="form-control" runat="server"></asp:TextBox>
  </div>

<div class="row">
<div class="col-md-12">

<asp:Label ID="lblResult" runat="server" ForeColor="Red"></asp:Label>
<br />
<asp:Button ID="btnsubmit" 
        cssClass="btn btn-default" runat="server" Text="Register" onclick="btnsubmit_Click" />
        
        
</div>
</div>

</div>
</div>
</asp:Panel>

<asp:Panel ID="pnlsuccesful" runat="server" Visible="false">
<br /><br /><br /><br />

<center>

    <img alt="ImaBloodDonar" src="Assets/Images/ImABloodDonar.png" class="img-responsive img-rounded" />
<h3><font color="Green">Registration Successful</font></h3>
<br /><br />
You will be contacted by seeker in Need

<br />
<br />
<h4>Thank you!!!</h4>


</center>

</asp:Panel> 
    </div>
    </form>
</body>
</html>
