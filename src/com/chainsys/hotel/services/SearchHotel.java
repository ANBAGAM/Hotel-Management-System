package com.chainsys.hotel.services;

import java.sql.SQLException;
import java.util.ArrayList;

import com.chainsys.hotel.dao.HotelDAO;
import com.chainsys.hotel.model.Hotel;

public class SearchHotel {

	HotelDAO hotelDao = new HotelDAO();

	public ArrayList<Hotel> findHotel(Hotel h) {

		ArrayList<Hotel> hlist = null;

		try {
			hlist = hotelDao.findHotel(h);
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return hlist;

	}

	public boolean checkCity(String city) throws SQLException {

		boolean check = hotelDao.checkCity(city);

		return check;
	}
}
