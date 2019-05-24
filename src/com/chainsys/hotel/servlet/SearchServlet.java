package com.chainsys.hotel.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.chainsys.hotel.model.Hotel;
import com.chainsys.hotel.services.SearchHotel;

public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static final Logger log=Logger.getLogger(LoginServlet.class);
	public SearchServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		
		String city = request.getParameter("location");
		String checkin = request.getParameter("checkin");
		String checkout = request.getParameter("checkout");
		String adult = request.getParameter("adults");
		String children = request.getParameter("children");

		
		log.debug("Search Success");
		
		

		HttpSession session = request.getSession();

		session.setAttribute("checkin", checkin);
		session.setAttribute("checkout", checkout);
		session.setAttribute("adult", adult);
		session.setAttribute("children", children);

		Hotel hotel = new Hotel();

		hotel.setCity(city);

		SearchHotel sh = new SearchHotel();

		boolean checkcity = false;

		try {
			checkcity = sh.checkCity(city);
			if (!checkcity) {
				request.setAttribute("error", "!!! No Hotels Found");
				RequestDispatcher rs = request.getRequestDispatcher("Success.jsp");
				rs.forward(request, response);
			} else {
				ArrayList<Hotel> hlist = null;
				hlist = sh.findHotel(hotel);

		

				request.setAttribute("HOTEL", hlist);

				RequestDispatcher rs = request.getRequestDispatcher("showhotel.jsp");
				rs.forward(request, response);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

	}

}
