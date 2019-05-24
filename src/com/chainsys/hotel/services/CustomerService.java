package com.chainsys.hotel.services;

import com.chainsys.hotel.dao.CustomerDAO;
import com.chainsys.hotel.model.Customer;

public class CustomerService {
	
	CustomerDAO	 customerDAO = new CustomerDAO();

	
	public void addCustomer(Customer customer) throws Exception {
		customerDAO.addCustomer(customer);
	}
}
