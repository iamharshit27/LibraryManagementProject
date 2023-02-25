<%@page import="java.sql.ResultSet"%>
<%@page import="com.lib.dao.BookDAOImp"%>
<%@page import="com.lib.dao.BookDAO"%>
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
	<title>All Books </title>
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
			  <th>Book Name</th>
			  <th>Book ID</th>
			  <th>Author</th>
			  <th>Subject</th>
			</tr>
		  </thead>
		  <tbody>
		  <%
		  BookDAO book = new BookDAOImp();
		  
		  ResultSet rs = book.findAll();
		  System.out.print(rs);
		  while(rs.next())
		  {
			  %>
		  <tr>
		  
		  <td><%=rs.getString(1) %></td>
		  <td><%=rs.getString(2) %></td>
		  <td><%=rs.getString(3) %></td>
		  <td><%=rs.getString(4) %></td>
		</tr>
		  <% 
		  }
		  
		  %>
		  </tbody>
		</table>
	  </div>
	  
</body>
</html>
