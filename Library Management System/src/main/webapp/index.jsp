<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Library Management</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
/* Reset styles */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

/* Body styles */
body {
	font-family: Arial, sans-serif;
	font-size: 16px;
	line-height: 1.5;
	background-color: #f2f2f2;
}

/* Header styles */
header {
	background-color: #333;
	color: #fff;
	padding: 20px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	flex-wrap: wrap;
}

header h1 {
	font-size: 28px;
}

nav ul {
	display: flex;
	list-style: none;
}

nav li {
	margin-right: 20px;
}

nav li:last-child {
	margin-right: 0;
}

nav a {
	color: #fff;
	text-decoration: none;
	font-weight: bold;
}

/* Main styles */
main {
	padding: 50px;
	display: flex;
	flex-direction: column;
	align-items: center;
}

.cta {
	background-color: #fff;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	padding: 50px;
	text-align: center;
	max-width: 800px;
	margin-bottom: 50px;
}

.cta h2 {
	font-size: 36px;
	margin-bottom: 20px;
}

.cta p {
	font-size: 18px;
	margin-bottom: 40px;
}

.btn {
	background-color: #333;
	color: #fff;
	padding: 10px 20px;
	border-radius: 5px;
	text-decoration: none;
	font-weight: bold;
	transition: background-color 0.3s;
}

.btn:hover {
	background-color: #555;
}

/* Footer styles */
footer {
    
	background-color: #555;
	color: #fff;
	padding: 20px;
	text-align: center;
    width: 100%;
    position: fixed;
    bottom:0;
   
}


    </style>
</head>
<body>
	<header>
		<h1>Library Management Portal</h1>
	
	</header>
	<main>
		<section class="cta">
			<h2>Welcome to Library Management Portal</h2>
			<p>Please choose your login type:</p>
			<a href="#" class="btn">Admin Login</a>
			<a href="login.jsp" class="btn">Librarian Login</a>
		</section>
	</main>
	<footer>
		<p>&copy; 2023 Library Management. All rights reserved. | Design By Harshit Kumar</p>
	</footer>
</body>
</html>
