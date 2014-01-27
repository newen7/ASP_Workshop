<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Package.aspx.cs" Inherits="Package" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Package List</h1>
    
    </div>
        <h3>Customer Information:&nbsp;
            <asp:Label ID="lblTest" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
        </h3>
        <p>
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataSourceID="ObjectDataSource1" Height="50px" Width="125px">
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
            </asp:DetailsView>
        </p>
        <p>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetCustomerById" TypeName="CustomerDB">
                <SelectParameters>
                    <asp:SessionParameter Name="inputCustId" SessionField="CustID" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </p>
        <p>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px">
            </asp:DetailsView>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server"></asp:ObjectDataSource>
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
