package com.hws.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.hws.domain.Context;
import com.hws.domain.JingPing;
import com.hws.domain.TitleBarContext;
import com.hws.util.Dbutil;

public class TitleBarContextDao {
	public ArrayList<TitleBarContext> getContext(int id) {
		ArrayList<TitleBarContext> contexts = new ArrayList<TitleBarContext>();
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			String sql = "select *  from titlebarcontexts where titleid="+id+"";
			rs = st.executeQuery(sql);
			while (rs.next()) {
				TitleBarContext con=new TitleBarContext();
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
	public ArrayList<JingPing> getContextJP(String type) {
		ArrayList<JingPing> contexts = new ArrayList<JingPing>();
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
	/*select a.name,b.email from a,b 
		where a.nameid=b.nameid and a.fenleiid=3*/
		try {
			st = conn.createStatement();
     String sql = "select  * from titlesbar ,titlebarcontexts where titlebarcontexts.titleid=titlesbar.id and titlesbar.type='"+type+"' ";
			rs = st.executeQuery(sql);
			while (rs.next()) {
				JingPing con=new JingPing();
                con.setId(rs.getInt("titleid"));
				con.setTitle(rs.getString("title"));
				//con.setTitleid(rs.getInt("titleid"));
				con.setTime(rs.getString("time"));
				con.setUserid(rs.getInt("userid"));
				//con.setUsername(rs.getString("username"));
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
