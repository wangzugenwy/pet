package com.hws.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.hws.domain.User;
import com.hws.util.Dbutil;



public class UserDao {
	public User check(User u){
		User us=null;
		Connection conn = Dbutil.getConn();
		//System.out.println(conn);
		Statement st = null;
		ResultSet rs = null;
		
		try {
			st = conn.createStatement();
			String sql = "select *  from user where username='"+u.getUsername()+"'and userpassword='"+u.getUserpassword()+"'";
			rs = st.executeQuery(sql);
			while (rs.next()) {
		    us= new User();
			us.setUsername(rs.getString("username"));
			us.setUserpassword(rs.getString("userpassword"));
			us.setPicture(rs.getString("picture"));
            us.setPhone(rs.getString("phone"));
			us.setId(rs.getInt("id"));
			
			}
			Dbutil.closeResultSet(rs);
			Dbutil.closeStatement(st);
			Dbutil.closeConn(conn);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return us;
	}
	public int modifyPassword(User u){
		
		
		
		String sql = "UPDATE user set userpassword='" + u.getUserpassword()+"' where id="+u.getId();
		int result = 0;
		Connection conn = Dbutil.getConn();
		Statement st;
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
	public int modifyheaderpicture(User u){
		
		String sql = "UPDATE user set picture='" + u.getPicture()+"' where id="+u.getId();
		int result = 0;
		Connection conn = Dbutil.getConn();
		Statement st;
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
	public User findpassword(String name,String phone){
		User us=null;
		Connection conn = Dbutil.getConn();
		//System.out.println(conn);
		Statement st = null;
		ResultSet rs = null;
		
		try {
			st = conn.createStatement();
			String sql = "select *  from user where username='"+name+"'and phone='"+phone+"'";
			rs = st.executeQuery(sql);
			while (rs.next()) {
		    us= new User();
			us.setUsername(rs.getString("username"));
			us.setUserpassword(rs.getString("userpassword"));
			us.setPicture(rs.getString("picture"));
            us.setPhone(rs.getString("phone"));
			us.setId(rs.getInt("id"));
			
			}
			Dbutil.closeResultSet(rs);
			Dbutil.closeStatement(st);
			Dbutil.closeConn(conn);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return us;
	}
	public int adduser(User u) {

		String sql = "insert into user value (null,'" +u.getUsername()
				+ "','" + u.getUserpassword() + "','"+" "+"','"+u.getPhone()+"')";
		
		
		
		
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
