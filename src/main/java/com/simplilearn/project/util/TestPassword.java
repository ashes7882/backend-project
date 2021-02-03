package com.simplilearn.project.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.Login;

public class TestPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TestPassword() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 0);
		HttpSession session = request.getSession(false);
		Login lg = new Login();
		if(session.getAttribute("lg")!=null) {
			lg = (Login) session.getAttribute("lg");
		}
		String storedPassword = lg.getPassword();
		PrintWriter out = response.getWriter();
		String enteredPassword = request.getParameter("password");		
		
//		out.print(enteredPassword);
//		out.print(storedPassword);
		
		if (enteredPassword.equals(storedPassword)) {
			
			session.setAttribute("admin", "admin");
			RequestDispatcher rd = request.getRequestDispatcher("master.jsp");
			rd.include(request, response);
			
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("login.html");
			rd.include(request, response);
			out.print("<html><body><p style=\"color:black;\">Please enter correct password</p></body></html>");
		}
	}

}
