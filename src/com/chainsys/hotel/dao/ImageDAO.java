package com.chainsys.hotel.dao;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Base64;

import com.chainsys.hotel.utilities.ConnectionUtil;

public class ImageDAO {

	public String getImg(int id) {

		String s = null;
		try {

			Connection connection = ConnectionUtil.getConnection();
			String sql = "select * from imagetab where id=?";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setInt(1, id);

			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {

				Blob b = rs.getBlob(2);

				byte barr[] = b.getBytes(1, (int) b.length());

				s = Base64.getEncoder().encodeToString(barr);

			}
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return s;
	}

}
