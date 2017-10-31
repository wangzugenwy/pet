package com.hws.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


import com.hws.domain.TitleHspContext;
import com.hws.util.Dbutil;

public class TitleHspContextDao {
	public ArrayList<TitleHspContext> getContext(int id) {
		ArrayList<TitleHspContext> contexts = new ArrayList<TitleHspContext>();
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			String sql = "select *  from titlehspcontext where titleid="+id+"";
			rs = st.executeQuery(sql);
			while (rs.next()) {
				TitleHspContext con=new TitleHspContext();
                con.setId(rs.getInt("id"));
				con.setContext(rs.getString("context"));
				con.setTitleid(rs.getInt("titleid"));
				
			     contexts.add(con);

			}

			Dbutil.closeResultSet(rs);
			Dbutil.closeStatement(st);
			Dbutil.closeConn(conn);

		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return contexts;

	}
}
