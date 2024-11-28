<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Upload.aspx.cs" Inherits="Upload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload</title>
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
        .fil
        {
            margin-left:820px;
        }
        .page
        {
            border-style:solid;
            border-radius:5px;
            border-color:Black;
            border-width:2px;
            margin-top:20px;
            background-color:Gray;
        }
        .ele {
	height: 60px;
	width: 400px;
	outline: none;
	border: none;
	color: rgb(77, 77, 77);
	background-color: rgb(240, 240, 240);
	border-radius: 50px;
	padding-left: 30px;
	font-size: 18px;
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
        <li><a href="adStddetails.aspx">Student Details</a></li>
        <li><a href="Leave_Details.aspx">Leave details</a></li>
        <li><a href="Present.aspx">Attendence</a></li>
          <li><a href="Admessage.aspx">Message</a></li>
            <li><a href="Upload.aspx">Upload Files</a></li>
              <li><a href="Login.aspx">Logout</a></li>
              
      </ul>

    </div>
  </nav>
   <br />
   <br /><h3 align="center" style="color: #FF6600; font-weight: bolder; font-size: xx-large">File Upload:</h3>
   <div class="page">
        <br />
        <div class="fil">
        <asp:FileUpload ID="FileUpload1"  class="name ele" runat="server"  />
        
        <br />
        <br />
          <asp:Button ID="Button1" runat="server" class="clkbtn" Text="Upload" 
            onclick="Button1_Click" />
        <br />
        <br />
        </div>
        </div>
         <div class="Gird">
     
   
     
    <br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="Vertical" Height="168px" HorizontalAlign="Center" Width="405px" 
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
