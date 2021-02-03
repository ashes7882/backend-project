<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="dto.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Master List</title>
<link href="css/index.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	HttpSession sessions = request.getSession(false);
	if(sessions.getAttribute("admin")==null){
		RequestDispatcher rd = request.getRequestDispatcher("index.html");
		rd.include(request, response);
		}
	
	%>
		<%
	FlightData fd = new FlightData();
	
	fd = (FlightData) sessions.getAttribute("fd");
	
	%>

<input class="button" id="logoutButton" type="button" value="Logout" onclick="window.location='logout'" >
	<div style="display: flex; justify-content: space-around;">
		<div style="margin: 10px">
			<h1>List of cities available</h1>
			<c:forEach items="${fd.getCityList()}" var="city">
				<table>
					<tr>${city}</tr>
				</table>
			</c:forEach>
		</div>
		<div style="margin: 10px">
			<h1>List of airlines</h1>
			<c:forEach items="${fd.getTotalAirlines()}" var="airline">
				<table>
					<tr>${airline}</tr>
				</table>
			</c:forEach>
		</div>

	</div>
	
	<h1 style="margin: 10px">List of available flights</h1>
	<div style="display: flex; justify-content: space-around; ">
		<div style="margin: 10px;text-align: center;">
			<h2>Source</h2>
			<c:forEach items="${fd.getFlightSourceList()}" var="source">
				<table>
					<tr>${source}</tr>
				</table>
			</c:forEach>
		</div>

		<div style="margin: 10px;text-align: center;">
			<h2>Destination</h2>
			<c:forEach items="${fd.getFlightDestinationList()}" var="dest">
				<table>
					<tr>${dest}</tr>
				</table>
			</c:forEach>
		</div>

		<div style="margin: 10px;text-align: center;">
			<h2>Airline</h2>
			<c:forEach items="${fd.getAirlineList()}" var="airline">
				<table>
					<tr>${airline}</tr>
				</table>
			</c:forEach>
		</div>

		<div style="margin: 10px;text-align: center;">
			<h2>Price(USD)</h2>
			<c:forEach items="${fd.getPriceList()}" var="price">
				<table>
					<tr>${price}</tr>
				</table>
			</c:forEach>
		</div>
	</div>
</body>
</html>