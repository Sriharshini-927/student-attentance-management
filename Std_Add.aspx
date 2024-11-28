<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Std_Add.aspx.cs" Inherits="Std_Add" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Student</title>
     <link href="Task.css" rel="stylesheet" type="text/css" />
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1 align="center" style="color: #FFA763">ADD STUDENT:</h1>
    <br />
<div class="signup-box">

    <asp:TextBox ID="Nametxt" class="name ele" runat="server" placeholder="Enter name"></asp:TextBox>

    <asp:TextBox ID="Rollnumtxt" class="name ele" runat="server" placeholder="Enter Register Number"></asp:TextBox>

    <asp:TextBox ID="Mblenumtxt" class="name ele" runat="server" placeholder="Enter Mobile Number"></asp:TextBox>
   <h4>Gender:</h4>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="23px" 
        RepeatDirection="Horizontal" Width="301px">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
        <asp:ListItem>Others</asp:ListItem>
    </asp:RadioButtonList>
    <asp:TextBox ID="Dobtxt" class="name ele" runat="server" placeholder="Enter Date of Birth"></asp:TextBox>

    <asp:TextBox ID="Mailidtxt" class="name ele" runat="server" placeholder="Enter Mail ID"></asp:TextBox>

    <asp:DropDownList ID="DropDownList1"  class="name ele" runat="server">
        <asp:ListItem>Bsc.IT</asp:ListItem>
        <asp:ListItem>Bsc CT</asp:ListItem>
        <asp:ListItem>BCA</asp:ListItem>
        <asp:ListItem>B.sc CS</asp:ListItem>
        <asp:ListItem>B.sc. CSDA</asp:ListItem>
    </asp:DropDownList>
    <asp:TextBox ID="yrtxt" class="name ele" runat="server" placeholder="Enter year"></asp:TextBox>
    <asp:CheckBoxList ID="CheckBoxList2" runat="server" Height="27px" 
        RepeatDirection="Horizontal" Width="325px">
        <asp:ListItem>I-year</asp:ListItem>
        <asp:ListItem>II-year</asp:ListItem>
        <asp:ListItem>III-year</asp:ListItem>
    </asp:CheckBoxList>
    <asp:TextBox ID="Usnametxt" class="name ele" runat="server" placeholder="Student ID"></asp:TextBox>

    <asp:TextBox ID="passtxt" class="name ele" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
    <br />

    <asp:Button ID="Addbtn" class="clkbtn" runat="server" Text="Add" 
        onclick="Addbtn_Click" />
                
<asp:Button ID="Button1" class="clkbtn" runat="server" 
        Text="Back" onclick="Button1_Click" />
<br />
<br />
        <asp:GridView ID="GridView1" runat="server" 
       CellPadding="10" 
            ForeColor="#333333" GridLines="Vertical" Height="80px" Width="516px" 
            CellSpacing="-1" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#FFA763" Font-Bold="True" ForeColor="White" 
                HorizontalAlign="Center" VerticalAlign="Middle" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#CCCCCC" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#FFA763" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
