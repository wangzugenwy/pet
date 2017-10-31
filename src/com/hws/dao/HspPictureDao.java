package com.hws.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.hws.domain.HspPicture;
import com.hws.domain.Picture;
import com.hws.util.Dbutil;

public class HspPictureDao {
	public ArrayList<HspPicture> getPicture(int id) {
		ArrayList<HspPicture> pictures = new ArrayList<HspPicture>();
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			String sql = "select *  from hsppicture where titleid="+id+" ";
			rs = st.executeQuery(sql);
			while (rs.next()) {
				HspPicture p=new HspPicture();
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
