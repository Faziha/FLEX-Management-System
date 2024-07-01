<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MarksDistribution.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Marks Distribution</title>
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
            height: 500px; 
            /* border: 1px solid black;  */
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            background-color: #d7ecff;
        }

        .WTitle{
            width: 100%;
            height: 50px; 
            /* border: 1px dotted purple; */
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size: 34px;
            text-align: center;
        }

        .WForm{
            width: 500px; 
            height: 450px;
            border: 1px solid gainsboro;
            border-radius: 10px; 
            display: flex;
            flex-direction: column;
            justify-content:space-evenly;
            align-items: center;
            background-color: white;
        }
        .WFRow{
            width: 450px;
            height: 55px;
            border-bottom: 1px solid #D3D3D3;
            border-radius: 15px;
            display: flex;
            justify-content: start;
            align-items: center;
        }

        .RLabel{
            margin-left: 10px;
            font-family:Arial, Helvetica, sans-serif;
            font-size: 20px;
            font-weight: 500;
        }
        .RInput{
            border: 1px solid #1877F2;
            border-radius: 10px;
            width: 300px;
            margin-left: 15px;
            height: 40px;
            padding-left: 10px;

        }
        .RInput::placeholder{
            font-family:Arial, Helvetica, sans-serif;
            font-size: 16px;
            
        }
        .RInput:focus-visible{
            outline: none;
            border: 2px solid #1877F2;
        }

        .btn{
            width: 200px;
            height: 45px;
            border-radius: 15px;
            background-color: #1877F2;
            color: white; 
            font-size: 16px;
            border: none;
            font-weight: 700;
        }

        .btn:hover{
            background-color: white;
            color: #1877F2; 
            font-size: 18px;
            border: 2px solid #1877F2;
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
            <p class="WTitle">Marks Distribution</p>
            <div class="WForm">
                <div class="WFRow">
                    <label for="cID" class="RLabel">Course ID:</label>
                    <asp:TextBox ID="cIDTextBox" runat="server" CssClass="RInput" 
                        placeholder="e.g MT-2034" OnTextChanged="cIDTextBox_TextChanged"></asp:TextBox>
                </div>
                <div class="WFRow">
                    <label for="qu1" class="RLabel">Quizzes:</label>
                    <asp:TextBox ID="qu1TextBox" runat="server" CssClass="RInput" 
                        placeholder="Enter Percentage: 10%" OnTextChanged="qu1TextBox_TextChanged"></asp:TextBox>
                </div>
                <div class="WFRow">
                    <label for="assignments" class="RLabel">Assignments:</label>
                    <asp:TextBox ID="assignmentsTextBox" runat="server" CssClass="RInput" 
                        placeholder="Enter Percentage: 10%" 
                        OnTextChanged="assignmentsTextBox_TextChanged"></asp:TextBox>
                </div>
                <div class="WFRow">
                    <label for="sessO" class="RLabel">Sessional 1:</label>
                    <asp:TextBox ID="sessOTextBox" runat="server" CssClass="RInput" 
                        placeholder="Enter Percentage: 10%" OnTextChanged="sessOTextBox_TextChanged"></asp:TextBox>
                </div>
                <div class="WFRow">
                    <label for="sessT" class="RLabel">Sessional 2:</label>
                    <asp:TextBox ID="sessTTextBox" runat="server" CssClass="RInput" 
                        placeholder="Enter Percentage: 10%" OnTextChanged="sessTTextBox_TextChanged"></asp:TextBox>
                </div>
                <div class="WFRow">
                    <label for="proj" class="RLabel">Project:</label>
                    <asp:TextBox ID="projTextBox" runat="server" CssClass="RInput" 
                        placeholder="Enter Percentage: 10%" OnTextChanged="projTextBox_TextChanged"></asp:TextBox>
                </div>
                <div class="WFRow">
                    <label for="finalE" class="RLabel">Final Exam:</label>
                    <asp:TextBox ID="finalETextBox" runat="server" CssClass="RInput" 
                        placeholder="Enter Percentage: 10%" OnTextChanged="finalETextBox_TextChanged"></asp:TextBox>
                </div>
                <asp:Button ID="submitBtn" runat="server" Text="Submit" CssClass="btn" 
                    OnClick="submitBtn_Click"/>
                <asp:Label ID="message" runat="server" Font-Size="X-Small" ForeColor="Maroon"></asp:Label>
            </div>
        </div>

        <div class="container">
            <asp:Image ID="logoImage" runat="server" ImageUrl="FlexLogo.png" CssClass="logo" AlternateText="Logo" />
        </div>
    </form>
</body>
</html>
