<%@page import="java.sql.Date"%>
<%@page import="java.time.temporal.ChronoUnit"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.sql.ResultSet"%>
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
	<title>Due Form </title>
	<style>.table-container {
		max-width: 100%;
		overflow-x: auto;
		margin-bottom: 1em;
	  }
	  
	  table {
		width: 100%;
		border-collapse: collapse;
		border-spacing: 0;
		font-size: 16px;
		font-weight: 400;
		line-height: 1.5;
		color: #333;
		background-color: #fff;
		border: 1px solid #ccc;
		border-radius: 4px;
		overflow: hidden;
		box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
	  }
	  
	  th,
	  td {
		padding: 12px 15px;
		text-align: left;
	  }
	  
	  th {
		background-color: #f8f8f8;
		font-weight: 700;
		text-transform: uppercase;
		letter-spacing: 0.03em;
		border-bottom: 1px solid #ccc;
	  }
	  
	  tbody tr:nth-of-type(even) {
		background-color: #f4f4f4;
	  }
	  
	  tbody tr:hover {
		background-color: #e0e0e0;
	  }
	  
	  @media screen and (max-width: 600px) {
		table {
		  display: block;
		  overflow-x: auto;
		  white-space: nowrap;
		}
		
		thead, tbody, th, td, tr {
		  display: block;
		}
		
		th {
		  text-align: left;
		}
		
		tbody tr td {
		  border-bottom: 1px solid #ddd;
		}
		
		tbody tr:last-of-type td {
		  border-bottom: none;
		}
	  }
	  </style>
	</head>
	<div class="table-container">
		<table>
		  <thead>
			<tr>
			  <th>Student ID</th>
			  <th>Student Name</th>
			  <th>Book Id</th>
			  <th>Book Name</th>
			  <th>Issue Date</th>
			  <th>Due Date</th>
			  <th>Fine Amount(5rs/day)</th>
			   <th>Return</th>
			</tr>
		  </thead>
		  <tbody>
		  <%
		  ResultSet rs = null;
		  rs =(ResultSet)session.getAttribute("checkRs");
		  
		  while(rs.next())
		  {
			  %>
			  <tr>
			  <td><%=rs.getInt(1)%></td>
			  <td><%=rs.getString(2)%></td>
			  <td><%=rs.getInt(3)%></td>
			  <td><%=rs.getString(4)%></td>
			  <td><%=rs.getDate(5)%></td>
			  <td><%=rs.getDate(6)%></td>
			  <td> 
			  
			  <%
			  DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
			  LocalDate currentDate = LocalDate.now();
			  Date date11 = rs.getDate(6);
			  
			  LocalDate date12 = date11.toLocalDate();
		        
		        // Format the date as a string in the dd-mm-yyyy format
		        
		        String dateStr = formatter.format(date12);
		        String dateStr2 = formatter.format(currentDate);
		        LocalDate date1 = LocalDate.parse(dateStr, formatter);
		        LocalDate date2 = LocalDate.parse(dateStr2, formatter);
		        
		        // Calculate the number of days between the two dates
		        long diffDays = ChronoUnit.DAYS.between(date1, date2);
			     if(diffDays<0)
			     {
			    	 diffDays = 0;
			     }
			     else{
			    	 diffDays = diffDays*5;
			     }
			    	
			  %>
			  
			   <%=diffDays+"₹"%>
			  
			   </td>
			  
			  
			  
			  <td>
			  <style>
	.green-button {
	  background-color: green;
	  color: white;
	  padding: 10px 20px;
	  border: none;
	  border-radius: 5px;
	  font-size: 16px;
	  cursor: pointer;
	}
  </style>
  <form action="ReturnBook" >
   <input type="hidden" name="sid" value="<%=rs.getInt(1)%>">
  <input type="hidden" name="bid" value="<%=rs.getInt(3)%>">
	<button type="submit" name="return" value="Return" class="green-button">Return</button>
  </form></td>
			</tr>
			  <%
		  }
		  %>
		  
		  </tbody>
		</table>
	  </div>
	  
</body>
</html>


