<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="login.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
  <div class="container" id="container">
		<div class="form-container log-in-container">
				<h1 align="center">Admin / Student Login</h1>
                <br />
            <asp:TextBox ID="mailtxt" placeholder="Enter Email" runat="server"></asp:TextBox>
            <asp:TextBox ID="passtxt" placeholder="Enter Password" runat="server" 
                    TextMode="Password"></asp:TextBox>	
            <asp:Button ID="Button1" runat="server" class="button" Text="Log In" 
                    onclick="Button1_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="New User Register here" 
                    Font-Bold="True" Font-Size="Medium"></asp:Label>
            <asp:Button ID="Button2" runat="server" class="button" Text="Register" onclick="Button2_Click" 
                    />
		</div>
		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-right">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
				</div>
			</div>
		</div>
	</div>
    </form>
</body>
</html>
