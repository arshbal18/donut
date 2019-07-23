<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Donut.aspx.cs" Inherits="DonutShop.Donut1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
           background-image:url("https://wallpaperaccess.com/full/739859.jpg"); background-repeat:no-repeat; background-position:center; background-size:cover; padding:10px;
      
  margin: 0;
  padding: 0;
  background-color: #17a2b8;
  height: 100vh;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Names="MV Boli" Font-Size="XX-Large" Text="Donut Shop"></asp:Label>
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:Label ID="Label2" runat="server" Font-Names="MV Boli" Font-Size="X-Large" Text="Donuts"></asp:Label>
            <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="Gainsboro" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        </div>
        <br />
        <asp:Label ID="Label3" runat="server" Font-Names="MV Boli" Font-Size="X-Large" Text="Take Order"></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server" Font-Names="MV Boli" Font-Size="Large" Text="ID"></asp:Label>
        <asp:TextBox ID="Donutid" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label7" runat="server" Font-Names="MV Boli" Font-Size="Large" Text="Name"></asp:Label>
        <asp:TextBox ID="donutname" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Font-Names="MV Boli" Font-Size="Large" Text="Order"></asp:Label>
        <asp:TextBox ID="donutorder" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Font-Names="MV Boli" Font-Size="Large" Text="Mobile"></asp:Label>
        <asp:TextBox ID="ordermobile" runat="server" style="margin-bottom: 0px"></asp:TextBox>
        <br />
        <asp:Button ID="Donutadd" runat="server" OnClick="Donutadd_Click" Text="Add" />
&nbsp;
        <asp:Button ID="DonutUpdate" runat="server" OnClick="DonutUpdate_Click" style="height: 26px" Text="Update" />
&nbsp;&nbsp;
        <asp:Button ID="DonutComplete" runat="server" OnClick="DonutComplete_Click" Text="Complete Order" />
    </form>
</body>
</html>
