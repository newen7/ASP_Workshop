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
        <br />
        <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource2">
            <AlternatingItemTemplate>
                <li style="">CustomerId:
                    <asp:Label ID="CustomerIdLabel" runat="server" Text='<%# Eval("CustomerId") %>' />
                    <br />
                    CustFirstName:
                    <asp:Label ID="CustFirstNameLabel" runat="server" Text='<%# Eval("CustFirstName") %>' />
                    <br />
                    CustLastName:
                    <asp:Label ID="CustLastNameLabel" runat="server" Text='<%# Eval("CustLastName") %>' />
                    <br />
                    CustAddress:
                    <asp:Label ID="CustAddressLabel" runat="server" Text='<%# Eval("CustAddress") %>' />
                    <br />
                    CustCity:
                    <asp:Label ID="CustCityLabel" runat="server" Text='<%# Eval("CustCity") %>' />
                    <br />
                    CustProv:
                    <asp:Label ID="CustProvLabel" runat="server" Text='<%# Eval("CustProv") %>' />
                    <br />
                    CustPostal:
                    <asp:Label ID="CustPostalLabel" runat="server" Text='<%# Eval("CustPostal") %>' />
                    <br />
                    CustCountry:
                    <asp:Label ID="CustCountryLabel" runat="server" Text='<%# Eval("CustCountry") %>' />
                    <br />
                    CustHomePhone:
                    <asp:Label ID="CustHomePhoneLabel" runat="server" Text='<%# Eval("CustHomePhone") %>' />
                    <br />
                    CustBusPhone:
                    <asp:Label ID="CustBusPhoneLabel" runat="server" Text='<%# Eval("CustBusPhone") %>' />
                    <br />
                    CustEmail:
                    <asp:Label ID="CustEmailLabel" runat="server" Text='<%# Eval("CustEmail") %>' />
                    <br />
                    AgentId:
                    <asp:Label ID="AgentIdLabel" runat="server" Text='<%# Eval("AgentId") %>' />
                    <br />
                </li>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <li style="">CustomerId:
                    <asp:TextBox ID="CustomerIdTextBox" runat="server" Text='<%# Bind("CustomerId") %>' />
                    <br />
                    CustFirstName:
                    <asp:TextBox ID="CustFirstNameTextBox" runat="server" Text='<%# Bind("CustFirstName") %>' />
                    <br />
                    CustLastName:
                    <asp:TextBox ID="CustLastNameTextBox" runat="server" Text='<%# Bind("CustLastName") %>' />
                    <br />
                    CustAddress:
                    <asp:TextBox ID="CustAddressTextBox" runat="server" Text='<%# Bind("CustAddress") %>' />
                    <br />
                    CustCity:
                    <asp:TextBox ID="CustCityTextBox" runat="server" Text='<%# Bind("CustCity") %>' />
                    <br />
                    CustProv:
                    <asp:TextBox ID="CustProvTextBox" runat="server" Text='<%# Bind("CustProv") %>' />
                    <br />
                    CustPostal:
                    <asp:TextBox ID="CustPostalTextBox" runat="server" Text='<%# Bind("CustPostal") %>' />
                    <br />
                    CustCountry:
                    <asp:TextBox ID="CustCountryTextBox" runat="server" Text='<%# Bind("CustCountry") %>' />
                    <br />
                    CustHomePhone:
                    <asp:TextBox ID="CustHomePhoneTextBox" runat="server" Text='<%# Bind("CustHomePhone") %>' />
                    <br />
                    CustBusPhone:
                    <asp:TextBox ID="CustBusPhoneTextBox" runat="server" Text='<%# Bind("CustBusPhone") %>' />
                    <br />
                    CustEmail:
                    <asp:TextBox ID="CustEmailTextBox" runat="server" Text='<%# Bind("CustEmail") %>' />
                    <br />
                    AgentId:
                    <asp:TextBox ID="AgentIdTextBox" runat="server" Text='<%# Bind("AgentId") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </li>
            </EditItemTemplate>
            <EmptyDataTemplate>
                No data was returned.
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <li style="">CustomerId:
                    <asp:TextBox ID="CustomerIdTextBox" runat="server" Text='<%# Bind("CustomerId") %>' />
                    <br />CustFirstName:
                    <asp:TextBox ID="CustFirstNameTextBox" runat="server" Text='<%# Bind("CustFirstName") %>' />
                    <br />CustLastName:
                    <asp:TextBox ID="CustLastNameTextBox" runat="server" Text='<%# Bind("CustLastName") %>' />
                    <br />CustAddress:
                    <asp:TextBox ID="CustAddressTextBox" runat="server" Text='<%# Bind("CustAddress") %>' />
                    <br />CustCity:
                    <asp:TextBox ID="CustCityTextBox" runat="server" Text='<%# Bind("CustCity") %>' />
                    <br />CustProv:
                    <asp:TextBox ID="CustProvTextBox" runat="server" Text='<%# Bind("CustProv") %>' />
                    <br />CustPostal:
                    <asp:TextBox ID="CustPostalTextBox" runat="server" Text='<%# Bind("CustPostal") %>' />
                    <br />CustCountry:
                    <asp:TextBox ID="CustCountryTextBox" runat="server" Text='<%# Bind("CustCountry") %>' />
                    <br />CustHomePhone:
                    <asp:TextBox ID="CustHomePhoneTextBox" runat="server" Text='<%# Bind("CustHomePhone") %>' />
                    <br />CustBusPhone:
                    <asp:TextBox ID="CustBusPhoneTextBox" runat="server" Text='<%# Bind("CustBusPhone") %>' />
                    <br />CustEmail:
                    <asp:TextBox ID="CustEmailTextBox" runat="server" Text='<%# Bind("CustEmail") %>' />
                    <br />AgentId:
                    <asp:TextBox ID="AgentIdTextBox" runat="server" Text='<%# Bind("AgentId") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </li>
            </InsertItemTemplate>
            <ItemSeparatorTemplate>
<br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <li style="">CustomerId:
                    <asp:Label ID="CustomerIdLabel" runat="server" Text='<%# Eval("CustomerId") %>' />
                    <br />
                    CustFirstName:
                    <asp:Label ID="CustFirstNameLabel" runat="server" Text='<%# Eval("CustFirstName") %>' />
                    <br />
                    CustLastName:
                    <asp:Label ID="CustLastNameLabel" runat="server" Text='<%# Eval("CustLastName") %>' />
                    <br />
                    CustAddress:
                    <asp:Label ID="CustAddressLabel" runat="server" Text='<%# Eval("CustAddress") %>' />
                    <br />
                    CustCity:
                    <asp:Label ID="CustCityLabel" runat="server" Text='<%# Eval("CustCity") %>' />
                    <br />
                    CustProv:
                    <asp:Label ID="CustProvLabel" runat="server" Text='<%# Eval("CustProv") %>' />
                    <br />
                    CustPostal:
                    <asp:Label ID="CustPostalLabel" runat="server" Text='<%# Eval("CustPostal") %>' />
                    <br />
                    CustCountry:
                    <asp:Label ID="CustCountryLabel" runat="server" Text='<%# Eval("CustCountry") %>' />
                    <br />
                    CustHomePhone:
                    <asp:Label ID="CustHomePhoneLabel" runat="server" Text='<%# Eval("CustHomePhone") %>' />
                    <br />
                    CustBusPhone:
                    <asp:Label ID="CustBusPhoneLabel" runat="server" Text='<%# Eval("CustBusPhone") %>' />
                    <br />
                    CustEmail:
                    <asp:Label ID="CustEmailLabel" runat="server" Text='<%# Eval("CustEmail") %>' />
                    <br />
                    AgentId:
                    <asp:Label ID="AgentIdLabel" runat="server" Text='<%# Eval("AgentId") %>' />
                    <br />
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul id="itemPlaceholderContainer" runat="server" style="">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <li style="">CustomerId:
                    <asp:Label ID="CustomerIdLabel" runat="server" Text='<%# Eval("CustomerId") %>' />
                    <br />
                    CustFirstName:
                    <asp:Label ID="CustFirstNameLabel" runat="server" Text='<%# Eval("CustFirstName") %>' />
                    <br />
                    CustLastName:
                    <asp:Label ID="CustLastNameLabel" runat="server" Text='<%# Eval("CustLastName") %>' />
                    <br />
                    CustAddress:
                    <asp:Label ID="CustAddressLabel" runat="server" Text='<%# Eval("CustAddress") %>' />
                    <br />
                    CustCity:
                    <asp:Label ID="CustCityLabel" runat="server" Text='<%# Eval("CustCity") %>' />
                    <br />
                    CustProv:
                    <asp:Label ID="CustProvLabel" runat="server" Text='<%# Eval("CustProv") %>' />
                    <br />
                    CustPostal:
                    <asp:Label ID="CustPostalLabel" runat="server" Text='<%# Eval("CustPostal") %>' />
                    <br />
                    CustCountry:
                    <asp:Label ID="CustCountryLabel" runat="server" Text='<%# Eval("CustCountry") %>' />
                    <br />
                    CustHomePhone:
                    <asp:Label ID="CustHomePhoneLabel" runat="server" Text='<%# Eval("CustHomePhone") %>' />
                    <br />
                    CustBusPhone:
                    <asp:Label ID="CustBusPhoneLabel" runat="server" Text='<%# Eval("CustBusPhone") %>' />
                    <br />
                    CustEmail:
                    <asp:Label ID="CustEmailLabel" runat="server" Text='<%# Eval("CustEmail") %>' />
                    <br />
                    AgentId:
                    <asp:Label ID="AgentIdLabel" runat="server" Text='<%# Eval("AgentId") %>' />
                    <br />
                </li>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetCustomerById" TypeName="CustomerDB">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlCustomer" Name="inputCustId" PropertyName="SelectedValue" Type="Int32"/>
            </SelectParameters>
        </asp:ObjectDataSource>
        <br />
        <asp:Button ID="btnPackage" runat="server" Text="View Packages" />
    </form>
</body>
</html>
