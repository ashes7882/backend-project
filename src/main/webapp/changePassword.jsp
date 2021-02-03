<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@ page import="dto.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Password change confirm</title>
</head>
<body>
	<%
	HttpSession sessions = request.getSession(false);
	String currentPassword = request.getParameter("current");
	String Newpass = request.getParameter("new");
	String conpass = request.getParameter("confirm");
	Login lg = new Login();
	
	String storedPassword = lg.getPassword();
	%>
	<c:if test="${Newpass == conpass}">
		<p>
			My salary is:
			<c:out value="${storedPassword}" />
		<p>
	</c:if>


</body>
</html>