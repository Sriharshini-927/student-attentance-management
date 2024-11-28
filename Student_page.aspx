<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_page.aspx.cs" Inherits="Student_page" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student_Page</title>
    <link href="Home.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
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
            <li><a href="Download.aspx">Download Files</a></li>
              <li><a href="Login.aspx">Logout</a></li>
      </ul>
    </div>
  </nav>

    </div>
    </form>
</body>
</html>
