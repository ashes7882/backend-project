<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.util.ArrayList"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Information</title>
<link href="css/index.css" rel="stylesheet" type="text/css">
</head>
<body>
<h1 style="color: #5b5b5b;">Available flights are displayed below based on your filters</h1>
<hr/>
	<% ArrayList<String> finalFlightList = (ArrayList<String>) request.getAttribute("finalFlightList");
	ArrayList<String> finalPriceList = (ArrayList<String>) request.getAttribute("finalPriceList");

	%>
	
<table class="table">
	<tr>
		<th>Flights</th>
		<th>Prices</th>
	</tr>
	<c:forEach begin="0" end="${fn:length(finalFlightList) - 1}" var="index">
   		<tr>
      		<td><c:out value="${finalFlightList[index]}"/></td>
      		<td><c:out value="${finalPriceList[index]}"/></td>
      		<td><form action="register.jsp">
      				<input class="button" type="submit" value="Select"/>
      				<input type="hidden" name="flightSelected" value="${finalFlightList[index]}">
      				<input type="hidden" name="price" value="${finalPriceList[index]}">
      			</form>
      		</td>
      		
   		</tr>
	</c:forEach>

</table>
</body>
</html>