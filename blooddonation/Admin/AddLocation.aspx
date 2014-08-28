<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddLocation.aspx.cs" Inherits="Admin_AddLocation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="table table-bordered">
        <tr><th colspan="2">ADD LOCATION</th></tr>
        <tr>
            <td>Location Name</td>
            <td>

    
    <asp:TextBox ID="txtLocationName"  cssClass="form-control pull-left"  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>District Name</td>
            <td>
                <asp:DropDownList ID="ddlDistrict" cssClass="form-control pull-left" runat="server">
                </asp:DropDownList>
                
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
    <asp:Button runat="server"   CssClass="btn btn-default" ID="btnAdd" Text="Add" OnClick="btnAdd_Click" />

                <asp:Button ID="btnCancle" runat="server" CssClass="btn btn-default" Text="Cancle" OnClick="btnCancle_Click" />

                <br />
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
    </table>



    <%--Grid View Starts--%>
    <asp:GridView ID="gdvLocation" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:TemplateField HeaderText="SNo."> 
            
                <ItemTemplate>
                     <%# Container.DataItemIndex + 1 %>
                </ItemTemplate>

            </asp:TemplateField>
            <asp:BoundField DataField="DistrictID" HeaderText="District" />
            <asp:BoundField DataField="LocationName" HeaderText="Location" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />

    </asp:GridView>

    <%--Grid View Ends--%>
</asp:Content>

