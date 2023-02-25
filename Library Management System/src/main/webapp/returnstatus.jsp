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
	<title>Book Return Success</title>
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #f1f1f1;
		}
		h1 {
			color: #4CAF50;
			text-align: center;
			margin-top: 50px;
		}
		p {
			font-size: 20px;
			color: #333;
			text-align: center;
			margin-top: 30px;
		}
	</style>
</head>
<body>
	<h1>Book Successfully Returned</h1>
	<p>Thank you for returning the book. We hope you enjoyed it!</p>
</body>
</html>
