<%@page import="com.lib.dao.LibrarianDAOImp"%>
<%@page import="com.lib.dao.LibrarianDAO"%>
<%
if(session.getAttribute("lid")==null)
{
	%>
  <h1>Fuck You</h1>
  <%
  return ;
}
  %>
  <% 
int id =(Integer)session.getAttribute("lid");
LibrarianDAO find = new LibrarianDAOImp();
String name = find.findById(id);
%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Library Manage</title>
  <link rel="stylesheet" href="style/style.css">
</head>
<body>
  <nav>
    <div class="logo"style="margin:20px;">
      <h3><%="Welcome"+" "+name+" !" %></h3>
     
    <script src="js/util.js"></script>
    </div>
    <ul class="menu">
     
      <li><div id="clock"></div></li>
      <li><a href="logout.jsp">Logout</a></li>
      <li></li>
    </ul>
  </nav>
  <header>
    <h1>Welcome to E-Library</h1>
   
  </header>
  <main>
  	<div class="slider-container">
		<img src="img/img2.jpg" class="active">
		<img src="img/img3.jpg">
		<img src="img/img4.jpg">
		<img src="img/img5.jpg">
		<div class="prev">&#10094;</div>
		<div class="next">&#10095;</div>
	</div>

	<script>
		var slideIndex = 0;
		showSlides();

		function showSlides() {
			var i;
			var slides = document.getElementsByTagName("img");
			for (i = 0; i < slides.length; i++) {
				slides[i].classList.remove("active");
			}
			slideIndex++;
			if (slideIndex > slides.length) {slideIndex = 1}
			slides[slideIndex-1].classList.add("active");
			setTimeout(showSlides, 5000); // Change image every 5 seconds
		}

		document.querySelector(".prev").addEventListener("click", function() {
			slideIndex--;
			if (slideIndex < 1) {slideIndex = document.getElementsByTagName("img").length}
			showSlides();
		});

		document.querySelector(".next").addEventListener("click", function() {
			slideIndex++;
			if (slideIndex > document.getElementsByTagName("img").length) {slideIndex = 1}
			showSlides();
		});
	</script>

    <div class="button-container">
		<a href="addstudent.jsp" class="button"><h5>AddStudent</h5></a>
		<a href="addBook.jsp" class="button"><h5>AddBook</h5></a>
		<a href="issuebook.jsp" class="button"><h5>IssueBook</h5></a>
		<a href="checkdue.jsp" class="button"><h5>CheckDue</h5></a>
	
	</div>
	
	<div class="button-container">
		<a href="delstudent.jsp" class="button"><h5>Del-Student</h5></a>
		<a href="delbook.jsp" class="button"><h5>Del-Book</h5></a>
		<a href="allbook.jsp" class="button"><h5>All-Books</h5></a>
		<a href="allstudent.jsp" class="button"><h5>All-Student</h5></a>
	</div>

  </main>
  <footer>
    <p>&copy; 2023 Website Name. All rights reserved | Design & Develop By Harshit Kumar</p>
  </footer>
</body>
</html>
