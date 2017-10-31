package com.hws.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


import com.hws.domain.Picture;
import com.hws.util.Dbutil;

public class PictureDao {
	public ArrayList<Picture> getPicture(int id) {
		ArrayList<Picture> pictures = new ArrayList<Picture>();
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			String sql = "select *  from pictures where titleid="+id+" ";
			rs = st.executeQuery(sql);
			while (rs.next()) {
				Picture p=new Picture();
				p.setTitleid(rs.getInt("titleid"));
                p.setId(rs.getInt("id"));
                p.setPicture(rs.getString("picture"));
				
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
