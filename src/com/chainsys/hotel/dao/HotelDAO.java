package com.chainsys.hotel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.chainsys.hotel.model.Facilities;
import com.chainsys.hotel.model.Hotel;
import com.chainsys.hotel.model.Room;
import com.chainsys.hotel.utilities.ConnectionUtil;

/**
 * @author anba2119
 *Find Hotel 
 */
public class HotelDAO {

	/**
	 * 
	 * @param hotel
	 * @return
	 * @throws SQLException
	 */
	public ArrayList<Hotel> findHotel(Hotel hotel) throws SQLException {

		ImageDAO imageDAO = new ImageDAO();

		Connection connection = ConnectionUtil.getConnection();
		String sql = "select h.hotel_id,h.name,r.ROOM_TYPE,f.FEATURES,r.PRICE,h.location,h.city,h.contact_no,h.no_of_room,h.img_id \r\n"
				+ "from hotel h join hms_room r on h.room_id=r.room_id\r\n"
				+ "join hms_facilities f on f.FACILITIES_ID=h.FACILITIES_ID where h.CITY=?";
		PreparedStatement stmt = connection.prepareStatement(sql);
		stmt.setString(1, hotel.getCity());

		ResultSet resultset = stmt.executeQuery();
		ArrayList<Hotel> hlist = new ArrayList<>();
		while (resultset.next()) {
			Hotel hotelobj = new Hotel();
			Facilities facilities = new Facilities();
			Room room = new Room();
			hotelobj.setId(resultset.getInt("hotel_id"));
			hotelobj.setName(resultset.getString("name"));
			hotelobj.setLocation(resultset.getString("location"));
			hotelobj.setCity(resultset.getString("city"));
			hotelobj.setContact_no(resultset.getLong("contact_no"));
			hotelobj.setNo_of_room(resultset.getInt("no_of_room"));
			hotelobj.setImageId(resultset.getInt("img_id"));
			facilities.setFeatures(resultset.getString("features"));
			room.setType(resultset.getString("room_type"));
			room.setPrice(resultset.getInt("price"));


			hotelobj.setImageStr(imageDAO.getImg(hotelobj.getImageId()));
			hlist.add(hotelobj);
		}
		resultset.close();
		stmt.close();
		connection.close();
		return hlist;

	}

	public String findFacilities(int hid) throws SQLException {

		String faci = null;
		Connection connection = ConnectionUtil.getConnection();
		String sql = "select features from HMS_FACILITIES where FACILITIES_ID=(select facilities_id from hotel where hotel_id=?)";
		PreparedStatement stmt = connection.prepareStatement(sql);
		stmt.setInt(1, hid);
		ResultSet resultset = stmt.executeQuery();
		while (resultset.next()) {
			Facilities facilities = new Facilities();
			facilities.setFeatures(resultset.getString("features"));
			faci = facilities.getFeatures();
		}
		resultset.close();
		stmt.close();
		connection.close();
		return faci;
	}

	public ArrayList<Room> findRoom(int id) throws SQLException {

		Connection connection = ConnectionUtil.getConnection();
		String sql = "  select room_type,price from hms_room where ROOM_ID=(select room_id from hotel where hotel_id=?)";
		PreparedStatement stmt = connection.prepareStatement(sql);
		stmt.setInt(1, id);
		ResultSet resultset = stmt.executeQuery();
		ArrayList<Room> rlist = new ArrayList<>();
		while (resultset.next()) {
			Room room = new Room();

			room.setType(resultset.getString("room_type"));
			room.setPrice(resultset.getInt("price"));

			rlist.add(room);

		}
		resultset.close();
		stmt.close();
		connection.close();
		return rlist;

	}

	/**
	 * List of hotel details using by city
	 * 
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	public ArrayList<Hotel> findHotelById(int id) throws SQLException {

		Connection connection = ConnectionUtil.getConnection();
		String sql = " select name,location,city,contact_no from hotel where HOTEL_ID=?";
		PreparedStatement stmt = connection.prepareStatement(sql);
		stmt.setInt(1, id);

		ResultSet resultset = stmt.executeQuery();
		ArrayList<Hotel> hlist = new ArrayList<>();
		while (resultset.next()) {
			Hotel hotelobj = new Hotel();

			hotelobj.setName(resultset.getString("name"));
			hotelobj.setLocation(resultset.getString("location"));
			hotelobj.setCity(resultset.getString("city"));
			hotelobj.setContact_no(resultset.getLong("contact_no"));

			hlist.add(hotelobj);

		}
		resultset.close();
		stmt.close();
		connection.close();
		return hlist;

	}

	public boolean checkCity(String city) throws SQLException {
		Connection connection = ConnectionUtil.getConnection();
		String sql = " select city from hotel where city=? and rownum=1";
		PreparedStatement stmt = connection.prepareStatement(sql);
		stmt.setString(1, city);

		ResultSet resultset = stmt.executeQuery();
		boolean check = true;

		if (resultset.next() == false) {
			check = false;
		} else {
			check = true;
		}

		resultset.close();
		stmt.close();
		connection.close();

		return check;

	}

}
