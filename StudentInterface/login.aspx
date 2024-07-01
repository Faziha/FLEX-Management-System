<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <style>
    body {
      background-color: #f2f2f2;
      font-family: Arial, sans-serif;
    }
    
    .container {
      background-color: #fff;
      max-width: 500px;
      margin: 50px auto;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.3);
    }
    
    h1 {
      text-align: center;
      color: #333;
      margin-bottom: 20px;
    }
    
    label {
      display: block;
      font-weight: bold;
      margin-bottom: 5px;
      color: #333;
    }
    
    input[type="text"],
    input[type="password"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 20px;
      border: none;
      border-radius: 5px;
      box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
    }
    
    .button {
      display: block;
      width: 100%;
      padding: 10px;
      margin-top: 20px;
      background-color: #4CAF50;
      border: none;
      border-radius: 5px;
      color: #fff;
      font-size: 16px;
      cursor: pointer;
    }
    
    .button:hover {
      background-color: #3e8e41;
    }
    
    .signup {
      text-align: center;
      margin-top: 20px;
    }
    
    .signup a {
      color: #4CAF50;
      text-decoration: none;
    }
    
    .signup a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
    <form id="form1" runat="server">
            <div class="container">
    <h1>Student Login</h1>
      <label for="username">Username:</label>
      <asp:TextBox ID="username" runat="server"></asp:TextBox>
      <label for="password">Password:</label>
      <asp:TextBox ID="password" runat="server"></asp:TextBox>
      <asp:Button ID="Button1" CssClass="button" runat="server" Text="Log in" OnClick="Login_submit" />
  </div>
        
            
    </form>
</body>
</html>