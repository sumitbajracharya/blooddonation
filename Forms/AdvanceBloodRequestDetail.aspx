<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdvanceBloodRequestDetail.aspx.cs" Inherits="AdvanceBloodRequestDetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:Panel ID="Panel1" runat="server" BorderColor="Black" BorderStyle="Solid" 
        ForeColor="Maroon" Height="412px" Width="445px">
        Advance Blood Request Detail<table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="lblFullname" runat="server" Text="FullName"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblBloodgroup" runat="server" Text="BloodGroup"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblQuantity" runat="server" Text="Quantity"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblLocation" runat="server" Text="Location"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblDate" runat="server" Text="Date"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblContactnumber" runat="server" Text="Contact Number"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblPurpose" runat="server" Text="Purpose"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblHospitalPaper" runat="server" Text="Hospital Paper"></asp:Label>
                </td>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="77px" Width="100px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
   
    </div>
    </form>
</body>
</html>
