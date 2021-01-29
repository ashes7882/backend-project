<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="dto.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Page</title>
<link href="css/index.css" rel="stylesheet" type="text/css">
</head>
<body>
<h1>Please check your flight details below and proceed with the payment</h1>
<%
	User u = new User();
	HttpSession sessions = request.getSession(false);
	u = (User) sessions.getAttribute("user");
	u.setUserFname(request.getParameter("fname"));
	u.setUserLname(request.getParameter("lname"));
	%>
<%= "Flight Selected: "+ u.getFlightSelected() %><br>
<%= "Flight price: "+ u.getPrice() +" USD" %>
<br><br><br>
<form action="success.jsp">
	<input class="input" type="text" placeholder="Enter cardholder name" required>
	<input class="input" type="number" placeholder="Enter card number" required>
	<input class="input" type="month" placeholder="Enter card expiry date" required>
	<input class="input" type="number" placeholder="Enter cvv" maxlength="3" required><br>
	<input class="button" type="submit" value="Pay">
</form>
</body>
</html>