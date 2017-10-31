package com.hws.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.hws.domain.Goodcomment;
import com.hws.util.Dbutil;

public class GoodcommentDao {
	public ArrayList<Goodcomment> getComment(int goodid){
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		Goodcomment com=null;
		ArrayList<Goodcomment> coms=new ArrayList<Goodcomment>();
		/*SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String time=df.format(new Date());// new Date()为获取当前系统时间
*/		try {
			st = conn.createStatement();
			String sql = "select *  from goodcomments where goodid="+goodid+" ";
			rs = st.executeQuery(sql);
			while (rs.next()) {
				com=new Goodcomment();
	       
	      
	       com.setId(rs.getInt("id"));
	      com.setComment(rs.getString("comment"));
	      com.setDate(rs.getString("date"));
	      com.setGoodid(rs.getInt("goodid"));
	      com.setUsername(rs.getString("username"));
	       
			coms.add(com);	
			 

			}

			Dbutil.closeResultSet(rs);
			Dbutil.closeStatement(st);
			Dbutil.closeConn(conn);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return coms;
		
		
		
	}
	public int addcomment(Goodcomment c) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String time=df.format(new Date());// new Date()为获取当前系统时间
		String sql = "insert into goodcomments value (null,'" + c.getUsername() + "','" + time+ "','"
				+ c.getComment() +"',"+c.getGoodid()+")";
		
		
		
		
		int result = 0;
		Connection conn = Dbutil.getConn();
		Statement st = null;
		try {
			st = conn.createStatement();
			result = st.executeUpdate(sql);
			Dbutil.closeStatement(st);
			Dbutil.closeConn(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;

	}
	
	
}
