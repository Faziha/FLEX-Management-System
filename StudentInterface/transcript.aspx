<%@ Page Language="C#" AutoEventWireup="true" CodeFile="transcript.aspx.cs" Inherits="transcript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style>
      * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
      }
      
      body {
        font-family: Arial, sans-serif;
        font-size: 14px;
        line-height: 1.5;
        color: #333;
      }
      
      header {
        background-color: #ccc;
        padding: 20px;
      }
      
      .header-content {
        display: flex;
        justify-content: space-between;
        align-items: center;
      }
      
      .header-left h1 {
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 10px;
      }
      
      .header-left h2,
      .header-left h3 {
        font-size: 16px;
        margin-bottom: 5px;
      }
      
      main {
        padding: 20px;
      }
      
      h2 {
        font-size: 20px;
        font-weight: bold;
        margin-bottom: 10px;
      }
      
      table {
        border-collapse: collapse;
        width: 100%;
      }
      
      th,
      td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
      }
      
      th {
        background-color: #f2f2f2;
        font-weight: bold;
      }
      
      .transcript-summary {
        display: flex;
        justify-content: space-between;
        margin-top: 20px;
      }
      
      .sgpa,
      .ccpa {
        width: 50%;
      }
      
      .sgpa p,
      .ccpa p {
        font-size: 18px;
        font-weight: bold;
      }
      
      footer {
        background-color: #ccc;
        padding: 10px;
        text-align: center;
      }
    </style>
</head>
<body>
    <header>
      <div class="header-content">
        <div class="header-left">
          <h1>Semester Transcript</h1>
          <h2>Semester: Spring 2023</h2>
          <h3>Student Name: John Doe</h3>
          <h3>Roll No.: 123456</h3>
        </div>
        <div class="header-right">
          <!-- Add your header right content here -->
        </div>
      </div>
    </header>
    <main>
      <div class="semester-transcript">
        <h2>Course Details</h2>
        <table>
          <thead>
            <tr>
              <th>Course Name</th>
              <th>Credit Hours</th>
              <th>Grade</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>
                  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
              </td>
              <td>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
              </td>
              <td>
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
              </td>
            </tr>
            <tr>
              <td>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
              </td>
              <td>
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
              </td>
              <td>
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
              </td>
            </tr>
            <tr>
                <td>
                      <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                      <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                      <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                </td>
              </tr>
          </tbody>
        </table>
        <div class="transcript-summary">
          <div class="sgpa">
            <p>SGPA: 3.7</p>
          </div>
    </div>
  </div>
</main>

</body>
</html>
