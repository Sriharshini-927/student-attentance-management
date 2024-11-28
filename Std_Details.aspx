<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Std_Details.aspx.cs" Inherits="Std_Details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Details</title>
    <link href="Home.css" rel="stylesheet" type="text/css" />
    <style>
        .Gird
        {
            margin-top:10px;
            margin-left:550px;
        }
        h3
        {
            margin-top:180px;
            
        } 
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <nav>
    <div class="menu">
      <div class="logo">
        <a href="#">Student Attendence  </a>
      </div>
      <ul>
      <li style="color: #FF6600; font-weight: bold;">Welcome:<asp:Label ID="Label1" runat="server" ></asp:Label></li>
        <li><a href="Leave_Form.aspx">Leave Form</a></li>
        <li><a href="Std_Details.aspx">Leave details</a></li>
          <li><a href="Std_message.aspx">Message</a></li>
            <li><a href="Login.aspx">Download Files</a></li>
              <li><a href="Login.aspx">Logout</a></li>
      </ul>
    </div>
  </nav>

  
  <br />
  <h3 align="center" style="color: #FF6600; font-weight: bolder; font-size: xx-large">Students Details:</h3>
    <br />
  
    <div class="Gird">
     <asp:GridView ID="GridView1" runat="server" 
       CellPadding="16" 
            ForeColor="#333333" GridLines="Vertical" Height="107px" Width="527px" 
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
    </form>
</body>
</html>
