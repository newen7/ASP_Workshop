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
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="ObjectDataSource2" Height="50px" Width="414px" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <Fields>
                <asp:BoundField DataField="CustomerId" HeaderText="Customer ID:" SortExpression="CustomerId" />
                <asp:BoundField DataField="FullName" HeaderText="Customer Name:" SortExpression="FullName" />
                <asp:BoundField DataField="CustAddress" HeaderText="Address:" SortExpression="CustAddress" />
                <asp:BoundField DataField="CustCity" HeaderText="City:" SortExpression="CustCity" />
                <asp:BoundField DataField="CustProv" HeaderText="Province:" SortExpression="CustProv" />
                <asp:BoundField DataField="CustPostal" HeaderText="Postal Code:" SortExpression="CustPostal" />
                <asp:BoundField DataField="CustCountry" HeaderText="Country:" SortExpression="CustCountry" />
                <asp:BoundField DataField="CustHomePhone" HeaderText="Home Phone#:" SortExpression="CustHomePhone" />
                <asp:BoundField DataField="CustBusPhone" HeaderText="Business Phone#:" SortExpression="CustBusPhone" />
                <asp:BoundField DataField="CustEmail" HeaderText="Email:" SortExpression="CustEmail" />
                <asp:BoundField DataField="AgentId" HeaderText="Agent ID:" SortExpression="AgentId" />
            </Fields>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        </asp:DetailsView>
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetCustomerById" TypeName="CustomerDB" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlCustomer" Name="inputCustId" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:Label ID="lblTest" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
        <br />
        <asp:Button ID="btnPackage" runat="server" Text="View Packages" OnClick="btnPackage_Click" />
    </form>
</body>
</html>
