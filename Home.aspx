<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="Home.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
     <div>
    
 <nav>
    <div class="menu">
      <div class="logo">
        <a href="Home.aspx">Student Attendence  </a>
      </div>
      <ul>
        <li><a href="Home.aspx">Home</a></li>
        <li><a href="Login.aspx">Staff</a></li>
        <li><a href="Login.aspx">User</a></li>
         
      </ul>
    </div>
  </nav>
  <div class="img"></div>
  <div class="center">
    <div class="title">Student Attendance Management System</div>
    <div class="sub_title">To maintain students attendance records.</div>
    <div class="btns">
      <button>Attendance</button>
      <button>Report</button>
    </div>
  </div>

    </div>
    </form>
</body>
</html>
