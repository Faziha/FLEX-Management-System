<%@ Page Language="C#" AutoEventWireup="true" CodeFile="attendence.aspx.cs" Inherits="attendence" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
			background-color: #f2f2f2;
			font-family: Arial, sans-serif;
			color: #333;
			margin: 0;
			padding: 0;
		}
		nav {
			background-color: #0099cc;
			height: 70px;
			display: flex;
			align-items: center;
			padding: 0 30px;
			box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.3);
		}
		nav > h1 {
			margin: 0;
			color: #fff;
			font-size: 24px;
			font-weight: bold;
			text-transform: uppercase;
		}
        .cdiv{
            margin:auto;
            display:flex;
            align-items:center;
            justify-content:center;
            height:65vh;
        }
        h1{
            padding:20px;
        }
    </style>
</head>
<body>
    <nav>
		<h1>Flex Students</h1>
	</nav>
    <form id="form1" runat="server">
        <h1>Attendence</h1>
        <div class="cdiv">
            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource2" Height="386px" Width="717px" OnLoad="Chart1_Load" Palette="Pastel">
                <Series>
                    <asp:Series Name="Series1" XValueMember="courseName" YValueMembers="attendence" ChartType="Bar"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sConnectionString %>" SelectCommand="SELECT Courses.courseName, Attendence.attendence FROM Attendence INNER JOIN Courses ON Attendence.courseID = Courses.courseID Where Attendence.studentID='200473' "></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sConnectionString %>" SelectCommand="SELECT [courseID], [attendence] FROM [Attendence] WHERE ([studentID] = @studentID)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="200473" Name="studentID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>


    </form>
</body>
</html>
