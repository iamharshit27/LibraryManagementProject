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
	<title>Add Student </title>
	<style>
		form {
		    
			max-width: 500px;
			margin: 100px auto auto auto;
			padding: 20px;
			border: 1px solid #ccc;
			border-radius: 5px;
			background-color: #f2f2f2;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
		}

		input[type=text], select {
			width: 100%;
			padding: 12px;
			border: 1px solid #ccc;
			border-radius: 4px;
			box-sizing: border-box;
			margin-top: 6px;
			margin-bottom: 16px;
			resize: vertical;
		}

		input[type=submit] {
			background-color: #4CAF50;
			color: white;
			padding: 12px 20px;
			border: none;
			border-radius: 4px;
			cursor: pointer;
		}

		input[type=submit]:hover {
			background-color: #45a049;
		}
	</style>
</head>
<body>
	<form action="AddStudent">
		<h2>Add Student</h2>
		<%
		String str1= (String)session.getAttribute("stdstatus");
		System.out.println(str1);
		if(str1=="success")
		{
			%>
			<h3 style="color:green"> Record Inserted Successfully !! </h3>
			
			<% 
			session.setAttribute("stdstatus", null);
		}
		if(str1=="failure")
		{
			%>
			<h3 style="color:red">Some Error Occur !</h3>
			<% 
		}
		%>
		<label for="name">Name:</label>
		<input type="text" id="name" name="name" placeholder="Enter student's name">

		<label for="email">Email:</label>
		<input type="text" id="email" name="email" placeholder="Enter student's email">
    
		
		<label for="email">Course:</label>
		<input type="text" id="course" name="course" placeholder="Enter student's Course">
    
    
		<label for="email">Phone No:</label>
		<input type="text" id="phoneno" name="phoneno" placeholder="Enter student's phone no">
    

		<label for="enrollment">Enrollment No / Student Id:</label>
		<input type="text" id="sid" name="sid" placeholder="Enter enrollment no.">

		<input type="submit" value="Add Student">
	</form>
</body>
</html>
