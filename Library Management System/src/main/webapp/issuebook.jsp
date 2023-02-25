<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%
if(session.getAttribute("lid")==null)
{
	%>
  <h1>Fuck You</h1>
  <%
  return ;
}
  %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Issue Book</title>
    <style>
      /* Style for the form container */
      .form-container {
        max-width: 600px;
        margin: 70px auto;
        padding: 20px;
        background-color: #f2f2f2;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
      }

      /* Style for the form fields */
      label {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
      }

      input[type="text"], input[type="date"] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        font-size: 16px;
      }

      /* Style for the form button */
      input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin-top: 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
      }

      input[type="submit"]:hover {
        background-color: #45a049;
      }
    </style>
  </head>
  <body>
    <div class="form-container">
      <form action="IssueBook">
      <%
        String status = (String)session.getAttribute("issuestatus");
        if(status=="success")
        {
        	%>
			<h3 style="color:green"> Book Issue Successfully !! </h3>
			
			<% 
			session.setAttribute("issuestatus", null);
        }
        else if(status=="failure")
        {
        	%>
			<h3 style="color:red">Some Error Occur !</h3>
			<% 
			session.setAttribute("issuestatus", null);
        }
        else if(status=="error")
        {
        	%>
			<h3 style="color:red">Wrong Book-Id / Student-ID !!</h3>
			<% 	
			session.setAttribute("issuestatus", null);
        }
      
        %>
        <label for="bid">Book ID:</label>
        <input type="text" id="bid" name="bid" placeholder="Enter your bid number">

        <label for="sid">Student ID:</label>
        <input type="text" id="sid" name="sid" placeholder="Enter your sid number">

        <label for="issuedate">Issuedate:</label>
        <input type="date" id="issuedate" name="issuedate">

        <label for="duedate">Duedate:</label>
        <input type="date" id="duedate" name="duedate">

        <input type="submit" value="Submit">
      </form>
    </div>
  </body>
</html>
