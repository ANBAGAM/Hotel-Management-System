package com.chainsys.hotel.services;

import java.sql.SQLException;
import java.util.ArrayList;

import com.chainsys.hotel.dao.HotelDAO;
import com.chainsys.hotel.model.Hotel;
import com.chainsys.hotel.model.Room;

public class HotelBooking {

	HotelDAO hoteldao = new HotelDAO();

	public String findFacilities(int id) throws SQLException {

		String faci;
		faci = hoteldao.findFacilities(id);

		return faci;
	}

	public ArrayList<Room> findRoom(int id) throws SQLException {
		return hoteldao.findRoom(id);

	}

	public ArrayList<Hotel> findHotelById(int id) throws SQLException {

		return hoteldao.findHotelById(id);

	}
}