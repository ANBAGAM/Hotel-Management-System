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
import com.chainsys.hotel.model.Room;
import com.chainsys.hotel.services.HotelBooking;

public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static final Logger log=Logger.getLogger(LoginServlet.class);

	public BookingServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String faci = null;
		int hid = Integer.parseInt(request.getParameter("id"));

		HotelBooking hotelBooking = new HotelBooking();
		try {
			faci = hotelBooking.findFacilities(hid);
		} catch (SQLException e) {

			e.printStackTrace();
		}

		ArrayList<Room> rlist = null;
		try {

			rlist = hotelBooking.findRoom(hid);

		} catch (SQLException e) {

			e.printStackTrace();
		}

		ArrayList<Hotel> hotell = null;

		try {
			hotell = hotelBooking.findHotelById(hid);
		} catch (SQLException e) {

			e.printStackTrace();
		}

		HttpSession session = request.getSession();
		String checkin = (String) session.getAttribute("checkin");

		request.setAttribute("checkin", checkin);
		String checkout = (String) session.getAttribute("checkout");

		request.setAttribute("checkout", checkout);
		String adult = (String) session.getAttribute("adult");

		request.setAttribute("adult", adult);
		String children = (String) session.getAttribute("children");

		request.setAttribute("children", children);

		request.setAttribute("hroom", rlist);
		request.setAttribute("hid", hid);
		

		request.setAttribute("faci", faci);

		request.setAttribute("hotell", hotell);

		RequestDispatcher rs = request.getRequestDispatcher("aboutHotel.jsp");
		rs.forward(request, response);

	}

}
