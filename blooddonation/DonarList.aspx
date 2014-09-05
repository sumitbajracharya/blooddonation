<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DonarList.aspx.cs" Inherits="DonarList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
   
    <asp:Label ID="LblMessage" runat="server" Text=" "></asp:Label>
  
    <div class="table-responsive">
    <asp:GridView ID="gdvDonorList" runat="server" CssClass="table" AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>

            <asp:TemplateField HeaderText="SNo.">

                <ItemTemplate>
                     <%# Container.DataItemIndex + 1 %>
                </ItemTemplate>

            </asp:TemplateField>

            <asp:BoundField DataField="FullName" HeaderText="Name" />
            <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" />
            <asp:BoundField DataField="MobileNumber" HeaderText="Mobile no." />
          
            <asp:BoundField DataField="CurrentAddress" HeaderText="Address" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

    </asp:GridView>
    </div>
   
</asp:Content>

