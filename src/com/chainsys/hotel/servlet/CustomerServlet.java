package com.chainsys.hotel.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.chainsys.hotel.model.Customer;
import com.chainsys.hotel.services.CustomerService;

public class CustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static final Logger log=Logger.getLogger(LoginServlet.class);

	public CustomerServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("Name");
		String gender = request.getParameter("gender");
		String mailid = request.getParameter("email");
		String contactno = request.getParameter("conno");
		String hid = request.getParameter("submit");
		

		Customer customer = new Customer();
		customer.setName(name);
		customer.setGender(gender);
		customer.setMail(mailid);
		customer.setPhno(Long.parseLong(contactno));
		customer.setHotelid(Integer.parseInt(hid));
	
		

		CustomerService customerService = new CustomerService();

		try {
		customerService.addCustomer(customer);
		} catch (Exception e) {

			e.printStackTrace();
		}

	}

}
