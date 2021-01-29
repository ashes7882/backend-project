package com.simplilearn.project.util;

import java.io.Console;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.Properties;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.*;

public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
//	private static final String INSERT_QUERY = "INSERT INTO cities(Source, Destination) VALUES ('Hyderabad', 'Hyderabad')";
	private static final String SELECT_CITIES = "SELECT * FROM cities";
	private static final String SELECT_AIRLINES = "SELECT Airline from flights"; 
	private static final String SELECT_FLIGHT_SOURCE = "SELECT Source from flights"; 
	private static final String SELECT_FLIGHT_DESTINATION = "SELECT Destination from flights"; 
	private static final String SELECT_PRICES = "SELECT Price FROM flights"; 
	ArrayList<String> cityList = new ArrayList<String>();
	ArrayList<String> airlineList = new ArrayList<String>();
	ArrayList<String> flightSourceList = new ArrayList<String>();
	ArrayList<String> flightDestinationList = new ArrayList<String>();
	ArrayList<String> priceList = new ArrayList<String>();
	String userSource;
	String userDestination;
	String date;
	User u = new User();
	
	public void dataConnection(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		HttpSession session = request.getSession();
		try {
			PrintWriter out = response.getWriter();
			Integer count1=0;
			Integer count2=0;
			InputStream inputStream = getServletContext().getResourceAsStream(
					"/WEB-INF/application.properties");
		
			u.setUserSource(request.getParameter("source"));
			u.setUserDestination(request.getParameter("destination"));
			u.setDate(request.getParameter("date"));
			session.setAttribute("user", u);
			
			Properties properties = new Properties();
			properties.load(inputStream);
			// obtain a connection object
			DatabaseConnection connection = new DatabaseConnection(
					properties.getProperty("url"),
					properties.getProperty("user"),
					properties.getProperty("password"));
			// obtain a Statement Object
			Statement statement1 = connection.getConnection().createStatement(
					ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_READ_ONLY);
			Statement statement2 = connection.getConnection().createStatement(
					ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_READ_ONLY);
			Statement statement3 = connection.getConnection().createStatement(
							ResultSet.TYPE_SCROLL_INSENSITIVE,
							ResultSet.CONCUR_READ_ONLY);
			Statement statement4 = connection.getConnection().createStatement(
					ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_READ_ONLY);
			Statement statement5 = connection.getConnection().createStatement(
					ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_READ_ONLY);
			
//			statement.executeUpdate(INSERT_QUERY);
			
			ResultSet cityResultSet = statement1.executeQuery(SELECT_CITIES);
			ResultSet airlineResultSet = statement2.executeQuery(SELECT_AIRLINES);
			ResultSet flightSourceSet = statement3.executeQuery(SELECT_FLIGHT_SOURCE);
			ResultSet flightDestinationSet = statement4.executeQuery(SELECT_FLIGHT_DESTINATION);
			ResultSet priceSet = statement5.executeQuery(SELECT_PRICES);

			
			while (cityResultSet.next()){
				//out.println(resultSet.getInt("ID") + " ," + resultSet.getString("city") + "<br/>");
			cityList.add(cityResultSet.getString("city"));
			}
			while (airlineResultSet.next()){
				//out.println(resultSet.getInt("ID") + " ," + resultSet.getString("city") + "<br/>");
				airlineList.add(airlineResultSet.getString("Airline"));
			}
			while (flightSourceSet.next()){
				//out.println(resultSet.getInt("ID") + " ," + resultSet.getString("city") + "<br/>");
				flightSourceList.add(flightSourceSet.getString("Source"));
			}
			while (flightDestinationSet.next()){
				//out.println(resultSet.getInt("ID") + " ," + resultSet.getString("city") + "<br/>");
				flightDestinationList.add(flightDestinationSet.getString("Destination"));
			}
			while (priceSet.next()){
				//out.println(resultSet.getInt("ID") + " ," + resultSet.getString("city") + "<br/>");
				priceList.add(priceSet.getString("Price"));
			}
			
			for(String n: cityList) {
				if (n.equalsIgnoreCase(u.getUserSource()) ) {
					
				}else {
					count1++;
				}
			}
			for(String n: cityList) {
				if (n.equalsIgnoreCase(u.getUserDestination()) ) {
					
				}else {
					count2++;
				}
			}
			
			 if(u.getUserDestination().equalsIgnoreCase(u.getUserSource())) {
				RequestDispatcher rd = request.getRequestDispatcher("index.html");
				rd.include(request, response);
				out.print("<html><body><p style=\"color:white;text-align:center;\">Please enter different cities in Source and Destination</p></body></html>");
	
			}else if(count1.equals(cityList.size()) || count2.equals(cityList.size())) {
				RequestDispatcher rd = request.getRequestDispatcher("index.html");
				rd.include(request, response);
				out.print("<html><body><p style=\"color:white;text-align:center;\">Please enter a valid city in Source/Destination</p></body></html>");
				
			}else {
				doGet(request, response);
			}
//			if (userDestination.equalsIgnoreCase(userSource)) {
//				RequestDispatcher rd = request.getRequestDispatcher("index.html");
//				rd.include(request, response);
//				out.print("<html><body><p style=\"color:white;text-align:center;\">Please enter a different city in Source/Destination</p></body></html>");
//	
//			}else if(count1.equals(cityList.size())) {
//				RequestDispatcher rd = request.getRequestDispatcher("index.html");
//				rd.include(request, response);
//				out.print("<html><body><p style=\"color:white;text-align:center;\">Please enter a valid city in Source/Destination</p></body></html>");
//				
//			}else {
//				doGet(request, response);
//			}
			}catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
//		return new Pair<ArrayList<String>, ArrayList<String>>(cityList, airlineList);
		
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		dataConnection(request, response);

	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)  {
		

			PrintWriter out = null;
			try {
				out = response.getWriter();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			out.println("<html> <body>");			
			out.println("<h1>Available flights are displayed below based on your filters</h1>");
			out.println("<hr size='5' color='blue' />");
	
			out.print("</br></br></br></br>");
			int i = 0;
			int n =0;
			int j = 0;
			ArrayList<String> finalFlightList = new ArrayList<String>();
			ArrayList<String> finalPriceList = new ArrayList<String>();
			while(n<flightSourceList.size()) {
			if(u.getUserSource().equalsIgnoreCase(flightSourceList.get(i)) && u.getUserDestination().equalsIgnoreCase(flightDestinationList.get(i))) {
//			out.print(airlineList.get(i)+"<br>");
				finalFlightList.add(j, airlineList.get(i));
				finalPriceList.add(j, priceList.get(i));
				i++;
				n++;
				j++;
			}else {i++;
			n++;}
			}
			
			request.setAttribute("finalFlightList", finalFlightList);
			request.setAttribute("finalPriceList", finalPriceList);
			RequestDispatcher rd = request.getRequestDispatcher("displayFlights.jsp");
			try {
				rd.forward(request, response);
			} catch (ServletException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			out.println("</html> </body>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
	}

}
