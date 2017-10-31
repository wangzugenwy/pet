package com.hws.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.hws.domain.Context;
import com.hws.domain.Title;
import com.hws.util.Dbutil;

public class ContextDao {
	public ArrayList<Context> getContext(int id) {
		ArrayList<Context> contexts = new ArrayList<Context>();
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			String sql = "select *  from contexts where titleid="+id+"";
			rs = st.executeQuery(sql);
			while (rs.next()) {
                Context con=new Context();
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
