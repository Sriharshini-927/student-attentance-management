<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Download.aspx.cs" Inherits="Download" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="Home.css" rel="stylesheet" type="text/css" />
        <style>
    .clkbtn {
	height: 60px;
	width: 150px;
	border-radius: 50px;
	background-image: linear-gradient(to right,
			rgb(255, 195, 110),
			rgb(255, 146, 91));
	font-size: 22px;
	border: none;
	cursor: pointer;
}
 h3
        {
            margin-top:80px;
            
        } 
         h4
        {
            margin-top:20px;
            
        } 
            .Gird
        {
            margin-top:10px;
            margin-left:680px;
        }
  
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <nav>
    <div class="menu">
      <div class="logo">
        <a href="Staff_Page.aspx">Student Attendence  </a>
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
  <br />
  <h3 align="center" style="color: #FF6600; font-weight: bolder; font-size: xx-large">Download Files:</h3>
  <br />
  <br />
  <div class="Gird">

    <br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="Vertical" Height="124px" HorizontalAlign="Center" Width="362px" 
            AutoGenerateColumns="False" onrowcommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="File">
                    <ItemTemplate>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Files") %>' CommandName="Download" Text='<%# Eval("Files") %>'></asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:BoundField DataField="Size" HeaderText="Size">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="File_Type" HeaderText="File_Type">
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
    </div>
    </form>
</body>
</html>
