<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="dto.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link href="css/index.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%
	User u = new User();
	HttpSession sessions = request.getSession(false);
	u = (User) sessions.getAttribute("user");
	u.setFlightSelected(request.getParameter("flightSelected"));
	u.setPrice(request.getParameter("price"));%>
	<h1>Kindly enter your details below to register</h1>
	<br><br>
<form action="payment.jsp">
	<input class="input" type="text" placeholder="Enter your first name" name="fname" required>
	<input class="input" type="text" placeholder="Enter your last name" name="lname" required>
	<input class="input" type="email" placeholder="Enter your email" name="email" required><br>
	<input class="button" type="submit" value="Submit">
</form>
</body>
</html>