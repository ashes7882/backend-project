package dto;

public class User {
	
	private String userSource;
	private String userDestination;
	private String flightSelected;
	private String price;
	private String userFname;
	private String userLname;
	private String date;
	public User() {
		
	}
	public String getUserSource() {
		return userSource;
	}
	public void setUserSource(String userSource) {
		this.userSource = userSource;
	}
	public String getUserDestination() {
		return userDestination;
	}
	public void setUserDestination(String userDestination) {
		this.userDestination = userDestination;
	}
	public String getFlightSelected() {
		return flightSelected;
	}
	public void setFlightSelected(String flightSelected) {
		this.flightSelected = flightSelected;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getUserFname() {
		return userFname;
	}
	public void setUserFname(String userFname) {
		this.userFname = userFname;
	}
	public String getUserLname() {
		return userLname;
	}
	public void setUserLname(String userLname) {
		this.userLname = userLname;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
}
