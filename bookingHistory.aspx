<%@ Page Title="" Language="C#" MasterPageFile="~/ChiMassage.Master" AutoEventWireup="true" CodeBehind="bookingHistory.aspx.cs" Inherits="Massage_Reservation_System.bookingHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
        <h1>Massage Reservation Records</h1>
        <div>
            <asp:Label ID="lblNoRecord" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:GridView ID="GridView1" style="text-align:center" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" DataKeyNames="serv_ID" ForeColor="Black" GridLines="Vertical" Width="100%" AllowPaging="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" EmptyDataText="There is nothing to edit.">
                <AlternatingRowStyle BackColor="White" />
                <Columns>

                    <asp:BoundField DataField="reserve_ID" HeaderText="reserve_ID" SortExpression="reserve_ID" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                    <asp:BoundField DataField="time" HeaderText="Time" SortExpression="time" />

                    <asp:BoundField DataField="pax" HeaderText="Pax" SortExpression="pax" />
                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                    <asp:BoundField DataField="addRequest" HeaderText="Additional Request" SortExpression="addRequest" />
                    <asp:BoundField DataField="phone_Number" HeaderText="Phone No." SortExpression="phone_Number" />
                    <asp:BoundField DataField="Title" HeaderText="Service Title" SortExpression="Title" />
                    <asp:BoundField DataField="status" HeaderText="Confirmation" SortExpression="status" />

                    
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />



            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [reserv]"></asp:SqlDataSource>

        </div>

    </div>
</asp:Content>
