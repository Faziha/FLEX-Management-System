<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginScreen.aspx.cs" Inherits="LoginScreen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .navbar {
            height: 100%;
            width: 150px;
            position: fixed;
            left: 0;
            background-color: rgb(54, 24, 68);
            overflow-x: hidden;
            padding-top: 10px;
        }

        #home {
            border-top: 1px solid rgba(255, 255, 255, 0.2);
            margin-top: 150px;
            display: block;
            padding: 20px;
            text-decoration: none;
            color: white;
            font-weight: 500;
            border-bottom: 1px solid rgba(255, 255, 255, 0.2);
        }

        .navbar a {
            display: block;
            padding: 20px;
            text-decoration: none;
            color: white;
            font-weight: 500;
            border-bottom: 1px solid rgba(255, 255, 255, 0.2);
        }

        .navbar a:hover {
            background-color: #4c3992;
        }

        .logo {
            position: absolute;
            top: 30px;
            left: 500px;
            width: 300px;
            height: 110px;
            margin-bottom: 120px;
        }

        .container {
            display: flex;
            align-items: center;
            justify-content: center;
            height: calc(100vh - 10px); /* Subtract the height of the top bar */
            margin-top: 90px;
            margin-left: 100px;
        }

        .login-form {
            max-width: 300px;
            padding: 20px;
            border: 1px solid black;
            border-radius: 5px;
            background-color: #f2f2f2;
            margin-left: 80px;
        }

        .login-form input[type="text"],
        .login-form input[type="password"] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
            border-radius: 2pc;
        }

        .login-form button {
            background-color: rebeccapurple;
            color: white;
            font-weight: bold;
            font-size: large;
            margin: 20px;
            margin-left: 200px;
            border: 5px solid;
            cursor: pointer;
            width: 50%;
            border-radius: 10pc;
        }

        .login-form button:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body>
    <form id="form3" runat="server">
        <div class="container">
            <img src="LoginFlex.png" alt="Logo" class="logo" />

            <div class="login-form">
                <h2>Sign In</h2>
                <asp:TextBox runat="server" ID="userName" placeholder="Username" 
                    OnTextChanged="TextBox1_TextChanged" ></asp:TextBox>
                <asp:TextBox runat="server" ID="passWord" TextMode="Password" 
                    placeholder="Password" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                <asp:Button  runat="server" ID="Button1" Text="Log In" OnClick="btnLogin_Click" 
                    BackColor="#003366" BorderColor="#003366" BorderStyle="Solid" BorderWidth="2px" 
                    CssClass="login-form" ForeColor="White" Height="27px" Width="128px"/>
                <asp:Label ID="MessageBox" runat="server" Font-Size="XX-Small" 
                    ForeColor="#CC0000"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
