<%@ Page Language="C#" AutoEventWireup="true" CodeFile="marks.aspx.cs" Inherits="marks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
    /* some basic styling */
    body {
      font-family: Arial, sans-serif;
      font-size: 16px;
      color: #333;
    }
    header, footer {
      background-color: #f2f2f2;
      padding: 10px;
    }
    #courses {
      display: flex;
      flex-wrap: wrap;
      overflow: auto;
      max-height: 50px;
      border-bottom: 1px solid #ccc;
    }
    .course {
      padding: 10px;
      border-right: 1px solid #ccc;
      cursor: pointer;
    }
    .course:last-child {
      border-right: none;
    }
    .course.active {
      background-color: #f2f2f2;
    }
    #marks {
      display: none;
    }
    h2 {
      margin-top: 0;
    }
    table {
      border-collapse: collapse;
      width: 100%;
    }
    th, td {
      padding: 10px;
      text-align: center;
    }
    th {
      background-color: #f2f2f2;
      border-bottom: 1px solid #ccc;
    }
    tr:nth-child(even) {
      background-color: #f9f9f9;
    }
    tr:hover {
      background-color: #ddd;
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
  </style>
</head>
<body>
     <nav>
		<h1>Flex Students</h1>
	</nav>
  <header>
    <h1>Evaluation Marks</h1>
    <form>
      <label for="semester">Select Semester:</label>
      <select id="semester" name="semester">
        <option value="sem1">Spring 2022</option>
        <option value="sem2">Spring 2021</option>
        <option value="sem3">Fall 2022</option>
        <option value="sem4">Fall 2021</option>
      </select>
    </form>
  </header>
  <main>
    <div id="courses">
      <div class="course active">Software Engineering</div>
      <div class="course">Database Systems</div>
      <div class="course">Calculus</div>
      <div class="course">Numerical</div>
      <div class="course">Linear Algebra</div>
    </div>
    <div id="marks">
      <h2>Course Name: <span id="courseName"></span></h2>
      <h3>Course Code: <span id="courseCode"></span></h3>
      <table>
        <thead>
          <tr>
            <th>Section</th>
            <th>Marks Obtained</th>
            <th>Total Marks</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Assignments</td>
            <td><p type="text" size="4" ></p></td>
            <td><p type="text" size="4" ></p></td>
          </tr>
          <tr>
            <td>Quiz</td
                <td><p type="text" size="4" ></p></td>
                <td><p type="text" size="4" ></p></td>
              </tr>
              <tr>
                <td>Sessional</td>
                <td><p type="text" size="4" ></p></td>
                <td><p type="text" size="4" ></p></td>
              </tr>
              <tr>
                <td>Project</td>
                <td><p type="text" size="4" ></p></td>
                <td><p type="text" size="4" ></p></td>
              </tr>
              <tr>
                <td>Final Exam</td>
                <td><p type="text" size="4" ></p></td>
                <td><p type="text" size="4" ></p></td>
              </tr>
              <tr>
                <td>Grand Total Marks</td>
                <td colspan="2"><p type="text" size="4" ></p></td>
              </tr>
            </tbody>
          </table>
        </div>
    </main>
     <script>
                   // get references to the HTML elements
                   const courses = document.querySelectorAll('.course');
                   const marks = document.getElementById('marks');
                   const courseName = document.getElementById('courseName');
                   const courseCode = document.getElementById('courseCode');
                   // loop through the courses and add click event listener
                   courses.forEach(course => {
                       course.addEventListener('click', () => {
                           // remove active class from all courses
                           courses.forEach(c => {
                               c.classList.remove('active');
                           });
                           // add active class to the clicked course
                           course.classList.add('active');
                           // update the course name and code
                           courseName.textContent = course.textContent;
                           courseCode.textContent = 'CSE 101'; // replace with actual course code
                           // show the marks section
                           marks.style.display = 'block';
                       });
                   });
    </script>
</body>
</html>
