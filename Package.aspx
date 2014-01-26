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
        <h3>Customer Information:</h3>
        <p>
            <asp:ListView ID="ListView1" runat="server">
            </asp:ListView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
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
