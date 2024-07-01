<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EvaluationScreen1.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Evaluation</title>
    <style>
        *{
            margin: 0;
        }

        body{
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .Wrapper{
            width: 80%;
            height: 400px; 
            /* border: 1px solid black;  */
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            background-color: #F0F8FF;
        }

        .WBox{
            width: 400px; 
            height: 350px;
            border: 1px solid gainsboro;
            border-radius: 10px; 
            display: flex;
            flex-direction: column;
            justify-content:space-evenly;
            align-items: center;
            background-color: #1877F2;
        }

        .btn{
            width: 300px; 
            height: 70px;
            background-color: #d7ecff;
            border: none;
            border-radius: 50px;
            font-size: 18px;
            font-weight: 400;
        }

        .btn:hover{
            cursor: pointer;
            box-shadow: #EDEADE 0px 8px 24px;
            font-size: 20px;
            font-weight: 500;
            color:#1877F2;
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
    <form id="form1" runat="server">
        <div class="navbar">
            <a href="FacultyHomeScreen.aspx" id="home" dir="ltr">Home</a>
            <a href="#" id="attendance">Attendance</a>
            <a href="EvaluationScreen1.aspx">Evaluations</a>
            <a href="#">Courses</a>
            <a href="CheckFeedback.aspx">Feedback</a>
            <a href="LoginScreen.aspx" id="logOut" dir="ltr">Log Out</a>
        </div>
        <div class="Wrapper">
            <div class="WBox">
                <asp:Button ID="marksDist" runat="server" Text="Enter Marks Distribution" 
                    CssClass="btn" OnClick="marksDist_Click"  />
                <asp:Button ID="gradeRep" runat="server" Text="Generate Grade Report" 
                    CssClass="btn" OnClick="gradeRep_Click"/>
                <asp:Button ID="EvalRep" runat="server" Text="Generate Eval Report" 
                    CssClass="btn" OnClick="EvalRep_Click"/>
            </div>
        </div>
        <div class="container">
            <asp:Image ID="logoImage" runat="server" ImageUrl="FlexLogo.png" CssClass="logo" AlternateText="Logo" />
        </div>


    </form>
</body>
</html>
