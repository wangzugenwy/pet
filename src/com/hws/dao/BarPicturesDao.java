package com.hws.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.hws.domain.BarPictures;
import com.hws.domain.Picture;
import com.hws.util.Dbutil;

public class BarPicturesDao {
	public ArrayList<BarPictures> getPicture(String kind) {
		ArrayList<BarPictures> pictures = new ArrayList<BarPictures>();
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			String sql = "select *  from barpictures where kind='"+kind+"' ";
			rs = st.executeQuery(sql);
			while (rs.next()) {
				BarPictures p=new BarPictures();
				p.setId(rs.getInt("id"));
				p.setKind(rs.getString("kind"));
				p.setPicture(rs.getString("picture"));
				p.setType(rs.getString("type"));
				
			     pictures.add(p);

			}

			Dbutil.closeResultSet(rs);
			Dbutil.closeStatement(st);
			Dbutil.closeConn(conn);

		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return pictures;

	}
}
