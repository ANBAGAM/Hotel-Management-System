package com.chainsys.hotel.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.PropertyConfigurator;

import com.cs.auth.Authentication;

import org.apache.log4j.Logger;
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	static final Logger log=Logger.getLogger(LoginServlet.class);
	
	public LoginServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PropertyConfigurator.configure("D:\\Oxygen\\HotelManagement\\src\\log4j.properties");
		
		
		
		
		String userName = request.getParameter("username");
		String password = request.getParameter("pass");
		
		System.out.println(userName + " " + password);
	
		log.debug("----user_name:"+userName);
		
		
		Authentication authentication = new Authentication();

		boolean success;
		try {
			success = authentication.isLogin(userName, password);
			if (success) {
				RequestDispatcher rs = request.getRequestDispatcher("Success.jsp");
				rs.forward(request, response);
			} else {
				request.setAttribute("loginerror", "!!! Invalid Credentials");

				RequestDispatcher rs = request.getRequestDispatcher("index.jsp");
				rs.forward(request, response);
			}

		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}

	}

}
