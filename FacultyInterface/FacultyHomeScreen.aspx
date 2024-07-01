<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FacultyHomeScreen.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>InterfaceTemplate</title>
    <style>
          body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }
    *{
            margin: 0px;
        }
    body{
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .Wrapper{
        width: 94%;
        height: 400px; 
        /* border: 1px solid black;  */
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        background-color: #F0F8FF;
    }

    .WTitle{
        width: 100%;
        height: 50px; 
        /* border: 1px dotted purple; */
        font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        font-size: 34px;
        text-align: center;
    }

    .WBox{
        width: 340px; 
        height: 350px;
        border: 1px solid gainsboro;
        border-radius: 10px; 
        display: flex;
        flex-direction: column;
        justify-content:space-evenly;
        align-items: center;
        background-color: #1877F2;
    }

    .Tab{
        width: 320px;
        height: 60px;
        /* border: 1px solid green; */
        border-radius: 15px;
        display: flex;
        justify-content: flex-start;
        align-items: center;
        background-color: #F0F8FF;

    }

    .TLabel{
        margin-left: 5px;
        font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
        font-size: 22px;
        font-weight: 600;
    }

    .TText{
        margin-left: 5px;
        font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
        font-size: 20px;
        font-weight: 300;
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
      border-top: 5px solid rgba(255, 255, 255, 0.2);
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
      top: 10px;
      left: 10px;
      width: 120px;
      height: 120px;
      margin-bottom: 120px;
    }

    .container {
      display: flex;
      align-items: center;
      justify-content: center;
      height: calc(100vh - 10px); /* Subtract the height of the top bar */
    }

    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div class="navbar">

            <a href="FacultyHomeScreen.aspx" id="home" dir="ltr">Home</a>
            <a href="#" id="attendance">Attendance</a>
            <a href="EvaluationScreen1.aspx">Evaluations</a>
            <a href="#">Courses</a>
            <a href="CheckFeedback.aspx">Feedback</a>
            <a href="LoginScreen.aspx" id="logOut" dir="ltr">Log Out</a>

        </div>
        <div class="Wrapper" draggable="true">
            <p class="WTitle" title="HOME">&nbsp;&nbsp;&nbsp; Home</p>
            <div class="WBox">
                <div class="Tab">
                    <p class="TLabel">Name:</p>
                    <p class="TText"><asp:Literal ID="name" runat="server"></asp:Literal></p>
                </div>
                <div class="Tab">
                    <p class="TLabel">Email:</p>
                    <p class="TText" id="email"><asp:Label ID="emailLiteral" runat="server"></asp:Label></p>
                </div>
                <div class="Tab">
                    <p class="TLabel">Office:</p>
                    <p class="TText" id="officeNum"><asp:Label ID="officeLiteral" runat="server"></asp:Label></p>
                </div>
                <div class="Tab">
                    <p class="TLabel">Contact:</p>
                    <p class="TText"><asp:Literal ID="contact" runat="server"></asp:Literal></p>
                </div>
            </div>
        </div>
        <div class="container">
            <asp:Image ID="logoImage" runat="server" ImageUrl="~/FlexLogo.png" 
                CssClass="logo" AlternateText="Logo" />

        </div>
                
    </form>
</body>
</html>
    </form>
</body>
</html>
