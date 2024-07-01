<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CheckFeedback.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Check Feedback</title>
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

        .WTitle{
        width: 100%;
        height: 50px; 
        /* border: 1px dotted purple; */
        font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        font-size: 34px;
        text-align: center;
        }

        .WBox{
        width: 400px; 
        height: 350px;
        border: 1px solid gainsboro;
        border-radius: 10px; 
        display: flex;
        flex-direction: column;
        justify-content:center;
        align-items: center;
        background-color: #1877F2;
        }

        .WBoxUpp{
        width: 385px; 
        height: 80px;
        /* border: 1px solid red; */
        background-color: #F0F8FF;
        border-radius: 10px;
        display: flex;
        align-items: center;
        justify-content: center;
        }

        .Wlabel{
        margin-left: 5px;
        font-family:Arial, Helvetica, sans-serif;
        font-size: 22px;
        font-weight: 500;
        }

        .WInput{
        margin-left: 10px;
        width: 250px;
        height: 50px;
        border-radius: 15px;
        border: 1px solid #1877F2;
        padding-left: 10px;
        }

        .WInput::placeholder{
        font-family:Arial, Helvetica, sans-serif;
        font-size: 16px;

        }

        .WInput:focus-visible{
        outline: none;
        border: 3px solid #1877F2;
        }

        .WBoxLow{
        width: 370px; 
        height: 100px;
        /* border: 1px solid yellow; */
        display: flex;
        align-items: center;
        justify-content: center;
        }

        .WBtn{
        width: 150px;
        height: 50px;
        border-radius: 15px;
        border: none;
        background-color: white;
        color: #1877F2;
        font-size: 16px;
        font-weight: 600;
        /* background-color: #73C2FB; */
        }

        .WBtn:hover{
        background-color: #73C2FB;
        color: white;
        border: 2px solid white;
        font-size: 16px;
        font-weight: 600;
        cursor: pointer;
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
            <p class="WTitle">Feedbacks</p>
            <div class="WBox">
                <div class="WBoxUpp">
                    <label class="Wlabel">Course ID:</label>
                    <asp:TextBox ID="txtCourseID" runat="server" CssClass="WInput" placeholder="CS-2000" />
                </div>
                <div class="WBoxLow">
                    <asp:Button ID="btnCheckFeedback" runat="server" Text="Check Feedback" CssClass="WBtn" />
                </div>
            </div>
        </div>

        <div class="container">
            <img src="FlexLogo.png" alt="Logo" class="logo" /> <!-- Replace "your-logo.png" with your actual logo image -->
        </div>

    </form>
</body>
</html>
