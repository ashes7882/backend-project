package com.simplilearn.project.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import dto.*
;/**
 * Servlet implementation class changePassword
 */
public class changePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public changePassword() {
        super();
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		Login lg = new Login();
		PrintWriter out = response.getWriter();
		String currentPassword = request.getParameter("current");
		String newPass = request.getParameter("new");
		String conPass = request.getParameter("confirm");
		if(currentPassword.equals(lg.getPassword()) && !currentPassword.equals(newPass) && newPass.equals(conPass) ) {
//			out.print("Inside if");
			lg.setPassword(newPass);
			session.setAttribute("lg", lg);
			RequestDispatcher rd = request.getRequestDispatcher("login.html");
			rd.include(request, response);
			out.print("Password changed successfully");
			
		}else if(!currentPassword.equals(lg.getPassword())){
//			out.print("inside else");
			RequestDispatcher rd = request.getRequestDispatcher("update.html");
			rd.include(request, response);
			out.print("Stored password do not match");
			
		}else if(!newPass.equals(conPass)){
			RequestDispatcher rd = request.getRequestDispatcher("update.html");
			rd.include(request, response);
			out.print("Please make sure to enter same password in both fields");
			
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("update.html");
			rd.include(request, response);
			out.print("Please make sure that new password is not the same as old password");
		}
	
	}

}
