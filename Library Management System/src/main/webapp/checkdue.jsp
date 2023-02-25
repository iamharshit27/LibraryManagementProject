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
<html lang="en">
<head>
    <style>
        .form-container {
  max-width: 500px;
  margin: 0 auto;
}

form {
  display: flex;
  flex-direction: column;
  align-items: center;
  background-color: #fff;
  padding: 30px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

h2 {
  text-align: center;
  margin-bottom: 30px;
}

label {
  font-size: 16px;
  font-weight: 700;
  margin-bottom: 10px;
}

input[type="text"] {
  width: 100%;
  padding: 12px 15px;
  border-radius: 4px;
  border: 1px solid #ccc;
  font-size: 16px;
  margin-bottom: 20px;
}

input[type="submit"] {
  background-color: #4caf50;
  color: #fff;
  border: none;
  border-radius: 4px;
  padding: 12px 15px;
  font-size: 16px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
  background-color: #3e8e41;
}

    </style>
</head>
<body>
    <div class="form-container">
        <h2>Check Due By Student ID</h2>
        <form action="CheckDue">
         <%
        String status = (String)session.getAttribute("chstat");
        if(status=="error")
        {
        	%>
			<h3 style="color:red"> Enter Valid Student-Id !! </h3>
			
			<% 
			session.setAttribute("chstat", null);
        }
        %>
          <label for="student-id">Student ID:</label>
          <input type="text" id="student-id" name="student-id" required>
          <input type="submit" value="Check">
        </form>
      </div>
      
</body>
</html>