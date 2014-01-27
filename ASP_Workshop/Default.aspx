<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DropDownList ID="ddlCustomer" runat="server" DataSourceID="ObjectDataSource1" DataTextField="CustFirstName" DataValueField="CustomerId" AutoPostBack="True" OnSelectedIndexChanged="ddlCustomer_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetCustomer" TypeName="CustomerDB"></asp:ObjectDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ObjectDataSource2" Height="50px" Width="125px">
            <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <Fields>
                <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" SortExpression="CustomerId" />
                <asp:BoundField DataField="CustFirstName" HeaderText="CustFirstName" SortExpression="CustFirstName" />
                <asp:BoundField DataField="CustLastName" HeaderText="CustLastName" SortExpression="CustLastName" />
                <asp:BoundField DataField="CustAddress" HeaderText="CustAddress" SortExpression="CustAddress" />
                <asp:BoundField DataField="CustCity" HeaderText="CustCity" SortExpression="CustCity" />
                <asp:BoundField DataField="CustProv" HeaderText="CustProv" SortExpression="CustProv" />
                <asp:BoundField DataField="CustPostal" HeaderText="CustPostal" SortExpression="CustPostal" />
                <asp:BoundField DataField="CustCountry" HeaderText="CustCountry" SortExpression="CustCountry" />
                <asp:BoundField DataField="CustHomePhone" HeaderText="CustHomePhone" SortExpression="CustHomePhone" />
                <asp:BoundField DataField="CustBusPhone" HeaderText="CustBusPhone" SortExpression="CustBusPhone" />
                <asp:BoundField DataField="CustEmail" HeaderText="CustEmail" SortExpression="CustEmail" />
                <asp:BoundField DataField="AgentId" HeaderText="AgentId" SortExpression="AgentId" />
            </Fields>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
        </asp:DetailsView>
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetCustomerById" TypeName="CustomerDB" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlCustomer" Name="inputCustId" PropertyName="SelectedValue" Type="Int32"/>
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:Label ID="lblTest" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
        <br />
        <asp:Button ID="btnPackage" runat="server" Text="View Packages" OnClick="btnPackage_Click" />
    </form>
</body>
</html>
