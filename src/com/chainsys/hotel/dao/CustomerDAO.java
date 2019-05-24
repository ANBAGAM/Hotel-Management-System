package com.chainsys.hotel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.chainsys.hotel.model.Customer;
import com.chainsys.hotel.utilities.ConnectionUtil;

public class CustomerDAO {

	public void addCustomer(Customer customer) throws Exception {
		try {
			Connection connection = ConnectionUtil.getConnection();
		
			String sql = "insert into hms_customer(CUSTOMER_ID,NAME,GENDER,EMAIL,CONTACT_NO,HOTEL_ID) values(customer_id_seq.nextval,?,?,?,?,?)";
			PreparedStatement preparedStatement = connection
					.prepareStatement(sql);
			preparedStatement.setString(1, customer.getName());
			preparedStatement.setString(2, customer.getGender());
			preparedStatement.setString(3, customer.getMail());
			preparedStatement.setLong(4, customer.getPhno());
			preparedStatement.setInt(5, customer.getHotelid());
			preparedStatement.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
}
