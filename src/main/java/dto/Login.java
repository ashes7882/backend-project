package dto;

public class Login {

	private String password = "admin";

	public Login() {
		
	}
	@Override
	public String toString() {
		return "Login [password=" + password + "]";
	}
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
}
