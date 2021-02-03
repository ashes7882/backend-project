package dto;

import java.util.ArrayList;

public class FlightData {
	private ArrayList<String> airlineList;
	private ArrayList<String> flightSourceList;
	private ArrayList<String> flightDestinationList;
	private ArrayList<String> priceList;
	private ArrayList<String> cityList;
	private ArrayList<String> totalAirlines;
	public FlightData() {
		
	}

	public ArrayList<String> getAirlineList() {
		return airlineList;
	}

	public void setAirlineList(ArrayList<String> airlineList) {
		this.airlineList = airlineList;
	}

	public ArrayList<String> getFlightSourceList() {
		return flightSourceList;
	}

	public void setFlightSourceList(ArrayList<String> flightSourceList) {
		this.flightSourceList = flightSourceList;
	}

	public ArrayList<String> getFlightDestinationList() {
		return flightDestinationList;
	}

	public void setFlightDestinationList(ArrayList<String> flightDestinationList) {
		this.flightDestinationList = flightDestinationList;
	}

	public ArrayList<String> getPriceList() {
		return priceList;
	}

	public void setPriceList(ArrayList<String> priceList) {
		this.priceList = priceList;
	}

	public ArrayList<String> getCityList() {
		return cityList;
	}

	public void setCityList(ArrayList<String> cityList) {
		this.cityList = cityList;
	}

	public ArrayList<String> getTotalAirlines() {
		return totalAirlines;
	}

	public void setTotalAirlines(ArrayList<String> totalAirlines) {
		this.totalAirlines = totalAirlines;
	}
}
