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
	<title>Book Information Form</title>
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #f2f2f2;
			margin: 0;
			padding: 0;
		}
		h1 {
			text-align: center;
			margin-top: 80px;
			color: #333;
		}
		form {
			max-width: 500px;
			margin: 0 auto;
			padding: 20px;
			background-color: #fff;
			border-radius: 5px;
			box-shadow: 0px 0px 10px #aaa;
		}
		label {
			display: block;
			font-size: 18px;
			font-weight: bold;
			margin-bottom: 10px;
			color: #555;
		}
		input[type=text] {
			width: 100%;
			padding: 10px;
			font-size: 16px;
			border: none;
			border-radius: 5px;
			box-shadow: 0px 0px 5px #ccc;
			margin-bottom: 20px;
			box-sizing: border-box;
		}
		input[type=submit] {
			background-color: #333;
			color: #fff;
			padding: 10px 20px;
			font-size: 16px;
			border: none;
			border-radius: 5px;
			cursor: pointer;
			transition: background-color 0.2s ease;
		}
		input[type=submit]:hover {
			background-color: #555;
		}
	</style>
</head>
<body>
	<h1>Book Information Form</h1>

	<form action="AddBook">
		<%
	String str1= (String)session.getAttribute("baddstatus");
	System.out.println(str1);
	if(str1=="success")
	{
		%>
		<h3 style="color:green"> Record Inserted Successfully !! </h3>
		
		<% 
		session.setAttribute("baddstatus", null);
	}
	if(str1=="failure")
	{
		%>
		<h3 style="color:red">Some Error Occur !</h3>
		<% 
	}
	%>
		<label for="bname">Book Name:</label>
		<input type="text" id="bname" name="bname" placeholder="Enter book name...">
		<label for="bid">Book ID:</label>
		<input type="text" id="bid" name="bid" placeholder="Enter book ID...">
		<label for="bauthor">Book Author:</label>
		<input type="text" id="bauthor" name="bauthor" placeholder="Enter book author...">
		<label for="bsubject">Book Subject:</label>
		<input type="text" id="bsubject" name="bsubject" placeholder="Enter book subject...">
		<input type="submit" value="Submit">
	</form>
</body>
</html>
