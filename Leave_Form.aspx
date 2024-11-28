<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Leave_Form.aspx.cs" Inherits="Leave_Form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Leave Form</title>
    <link href="Task.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <h1 align="center" style="color: #FFA763">Leave Form:</h1>
    <br />
<div class="signup-box">

    <asp:TextBox ID="Nametxt" class="name ele" runat="server" placeholder="Enter name"></asp:TextBox>

     <asp:TextBox ID="Rollnumtxt" class="name ele" runat="server" placeholder="Enter Regsiter Number"></asp:TextBox>

    <asp:TextBox ID="Mblenumtxt" class="name ele" runat="server" placeholder="Enter Mobile Number"></asp:TextBox>

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

    <asp:TextBox ID="Roflevtxt" class="name ele" runat="server" placeholder="Enter Reason of Taking Leave"></asp:TextBox>
   
   <asp:TextBox ID="datetxt" class="name ele" runat="server" placeholder="Date"></asp:TextBox>

   <asp:TextBox ID="noofdaystxt" class="name ele" runat="server" placeholder="No of Days"></asp:TextBox>

   <asp:TextBox ID="frmdatetxt" class="name ele" runat="server" placeholder="From Date"></asp:TextBox>

   <asp:TextBox ID="todatetxt" class="name ele" runat="server" placeholder="To Date"></asp:TextBox>

    <asp:TextBox ID="statustxt" class="name ele" runat="server" placeholder="Status"></asp:TextBox>

    <br />

    <asp:Button ID="Addbtn" class="clkbtn" runat="server" Text="Submit" 
        onclick="Addbtn_Click" />

        <asp:Button ID="Button1" class="clkbtn" runat="server" Text="Back" onclick="Button1_Click" 
        />
        <br />
        <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="10" ForeColor="#333333" GridLines="Vertical" Height="116px" 
        HorizontalAlign="Center" Width="333px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Name" HeaderText="Name">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Roll_Number" HeaderText="Roll_Number">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Mail_ID" HeaderText="Mail_ID">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Dept" HeaderText="Dept">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Year" HeaderText="Year">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Reason_of_Taking_Leave" 
                HeaderText="Reason_of_Taking_Leave">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Leave_Date" HeaderText="Leave_Date">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="No_of_days" HeaderText="No_of_days" />
            <asp:BoundField DataField="From_Date" HeaderText="From_Date">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="To_Date" HeaderText="To_Date">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Status" HeaderText="Status">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    </div>
    </form>
</body>
</html>
