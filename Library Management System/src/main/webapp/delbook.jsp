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
<title>Delete Book</title>

    <style>
        .form-container {
  max-width: 500px;
  margin: 100px auto;
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
        <h2>Delete Book by BID</h2>
        <form action="DelBook">
        <%
        String status = (String)session.getAttribute("delBstatus");
        if(status=="success")
        {
        	%>
			<h3 style="color:green"> Record Deleted Successfully !! </h3>
			
			<% 
			session.setAttribute("delBstatus", null);
        }
        else if(status=="failure")
        {
        	%>
			<h3 style="color:red">Some Error Occur !</h3>
			<% 
        }
        else
        {
        	%>
			<h3 style="color:red">Data Not Found !</h3>
			<% 
        }
        %>
          <label for="book-id">Book ID:</label>
          <input type="text" id="book-id" name="book-id" required>
          <input type="submit" value="Delete">
        </form>
      </div>
</body>
</html>