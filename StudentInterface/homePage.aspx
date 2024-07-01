<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homePage.aspx.cs" Inherits="homePage" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
            color: #333;
        }

        h1 {
            text-align: center;
            margin-top: 50px;
            margin-bottom: 50px;
            color: #333;
        }

        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            margin: 0 auto;
            max-width: 1200px;
        }

        .card {
            display: flex;
            position:relative;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            margin: 20px;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.3);
            transition: transform 0.3s ease-in-out;
            cursor: pointer;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card.attendance {
            background-color: #0099cc;
        }

        .card.marks {
            background-color: #ff9900;
        }

        .card.cgpa {
            background-color: #66cc66;
        }

        .card.feedback {
            background-color: #ff66cc;
        }

        .card h2 {
            font-size: 24px;
            font-weight: bold;
            margin-top: 0;
            margin-bottom: 10px;
            color: #fff;
        }

        .card p {
            font-size: 16px;
            margin: 0;
            color: #fff;
            text-align: center;
        }
        .btn-panel{
        position: absolute;
        top: 0px;
        left: 0px;
        width: 100%;
        height: 100%;
        opacity: 0;
        z-index: 2;
        cursor:pointer;
}
    </style>
</head>
<body>
        <form id="form1" runat="server">
        <h1>Welcome to the Student Interface</h1>
        <div class="card-container">
            <div class="card attendance">
                <asp:Panel ID="Panel1" runat="server"> 
                       <h2>View Attendance</h2>
                <p>Check your attendance for each course</p>
                    <asp:Button ID="Button1" runat="server" Text="" CssClass="btn-panel"
                OnClick="Attendence_Click" />
                </asp:Panel>
            </div>
            <div class="card marks">
                <asp:Panel ID="Panel2" runat="server">
                     <h2>View Marks</h2>
                <p>See your marks for each assignment, quiz, and exam</p>
                    <asp:Button ID="Button2" runat="server" Text="" CssClass="btn-panel"
                OnClick="Marks_Click" />
                </asp:Panel>
            </div>
            <div class="card cgpa">
                <asp:Panel ID="Panel3" runat="server">
                    <h2>View Semester CGPAs</h2>
                <p>Calculate and track your cumulative grade point average</p>
                    <asp:Button ID="Button3" runat="server" Text="" CssClass="btn-panel"
                OnClick="cgpa_Click" />
                </asp:Panel>
            </div>
            <div class="card feedback">
                <asp:Panel ID="Panel4" runat="server">
                    <h2>Teacher Feedback Form</h2>
                <p>Provide feedback to your teachers and help improve the learning experience</p>
                    <asp:Button ID="Button4" runat="server" Text="" CssClass="btn-panel"
                OnClick="feedback_Click" />
                </asp:Panel>
            </div>
               <div class="card attendance">
                <asp:Panel ID="Panel5" runat="server">
                    <h2>Transcript</h2>
                <p>Displays semester transcript to student</p>
                    <asp:Button ID="Button5" runat="server" Text="" CssClass="btn-panel"
                OnClick="transcript_Click" />
                </asp:Panel>
            </div>
        </div>
</form>
</body>
</html>
