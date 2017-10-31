package com.hws.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.hws.domain.Title;
import com.hws.util.Dbutil;



public class TitleDao {
	public ArrayList<Title> getTtile() {
		ArrayList<Title> titles = new ArrayList<Title>();
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			String sql = "select *  from titles where type='最新资讯' ";
			rs = st.executeQuery(sql);
			while (rs.next()) {

				Title t= new Title();
				t.setId(rs.getInt("id"));
				t.setPicture(rs.getString("picture"));
				t.setTime(rs.getString("time"));
				t.setTitle(rs.getString("title"));
				t.setType(rs.getString("type"));
				t.setUserid(rs.getInt("userid"));
				
			     titles.add(t);

			}

			Dbutil.closeResultSet(rs);
			Dbutil.closeStatement(st);
			Dbutil.closeConn(conn);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return titles;

	}
	
	public ArrayList<Title> getTtilezx() {
		ArrayList<Title> titles = new ArrayList<Title>();
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			String sql = "select *  from titles where type='宠物咨询' ";
			rs = st.executeQuery(sql);
			while (rs.next()) {

				Title t= new Title();
				t.setId(rs.getInt("id"));
				t.setPicture(rs.getString("picture"));
				t.setTime(rs.getString("time"));
				t.setTitle(rs.getString("title"));
				t.setType(rs.getString("type"));
				t.setUserid(rs.getInt("userid"));
				
			     titles.add(t);

			}

			Dbutil.closeResultSet(rs);
			Dbutil.closeStatement(st);
			Dbutil.closeConn(conn);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return titles;

	}
	public ArrayList<Title> getTtileTop() {
		ArrayList<Title> titles = new ArrayList<Title>();
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			String sql = "select *  from titles where type='推荐Top' ";
			rs = st.executeQuery(sql);
			while (rs.next()) {

				Title t= new Title();
				t.setId(rs.getInt("id"));
				t.setPicture(rs.getString("picture"));
				t.setTime(rs.getString("time"));
				t.setTitle(rs.getString("title"));
				t.setType(rs.getString("type"));
				t.setUserid(rs.getInt("userid"));
				
			     titles.add(t);

			}

			Dbutil.closeResultSet(rs);
			Dbutil.closeStatement(st);
			Dbutil.closeConn(conn);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return titles;

	}
	public Title getTtileById(int id) {
		
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		Title t= new Title();
		try {
			st = conn.createStatement();
			String sql = "select *  from titles where id="+id+" ";
			rs = st.executeQuery(sql);
			while (rs.next()) {

			
				t.setId(rs.getInt("id"));
				t.setPicture(rs.getString("picture"));
				t.setTime(rs.getString("time"));
				t.setTitle(rs.getString("title"));
				t.setType(rs.getString("type"));
				t.setUserid(rs.getInt("userid"));
				
			

			}

			Dbutil.closeResultSet(rs);
			Dbutil.closeStatement(st);
			Dbutil.closeConn(conn);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return t;

	}
	public ArrayList<Title> getTtilemc() {
		ArrayList<Title> titles = new ArrayList<Title>();
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			String sql = "select *  from titles where type='萌宠故事会' ";
			rs = st.executeQuery(sql);
			while (rs.next()) {

				Title t= new Title();
				t.setId(rs.getInt("id"));
				t.setPicture(rs.getString("picture"));
				t.setTime(rs.getString("time"));
				t.setTitle(rs.getString("title"));
				t.setType(rs.getString("type"));
				t.setUserid(rs.getInt("userid"));
				
			     titles.add(t);

			}

			Dbutil.closeResultSet(rs);
			Dbutil.closeStatement(st);
			Dbutil.closeConn(conn);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return titles;

	}
}
