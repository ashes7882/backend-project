<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="dto.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Booked!!</title>
<link href="css/index.css" rel="stylesheet" type="text/css">
</head>
<body>
<%
User u = new User();
HttpSession abc = request.getSession(false);
u = (User) abc.getAttribute("user");
%>
<h1><%= "Congratulations "+ u.getUserFname()+" "+u.getUserLname()+",your flight is booked" %></h1>
<p>Find the flight details below</p>
<h3><%= "Flight Name: "+ u.getFlightSelected() %></h3>
<h3>Flight Date: <%= u.getDate() %></h3>
<h3>Flight Price: <%= u.getPrice() %></h3>
<form action="index.html">
<input class="button" type="submit" value="Goto Homepage">
</form>
</body>
</html>