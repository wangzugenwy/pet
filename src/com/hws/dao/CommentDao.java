package com.hws.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.hws.domain.Comment;
import com.hws.util.Dbutil;



public class CommentDao {
	public ArrayList<Comment> getComment(int titleid){
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		Comment com=null;
		ArrayList<Comment> coms=new ArrayList<Comment>();
		/*SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String time=df.format(new Date());// new Date()为获取当前系统时间
	*/	try {
			st = conn.createStatement();
			String sql = "select *  from comments where titleid="+titleid+" ";
			rs = st.executeQuery(sql);
			while (rs.next()) {
				com=new Comment();
	       
	      
	       com.setId(rs.getInt("id"));
	       com.setTitleid(rs.getInt("titleid"));
	       com.setContexts(rs.getString("contexts"));
	       com.setUsername(rs.getString("username"));
	       com.setTime(rs.getString("time"));
	       
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
	public ArrayList<Comment> getCommentNext(int titleid,int count){
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		Comment com=null;
		ArrayList<Comment> coms=new ArrayList<Comment>();
		/*SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String time=df.format(new Date());// new Date()为获取当前系统时间
	*/	try {
			st = conn.createStatement();
			String sql = "select *  from comments where titleid="+titleid+" limit "+count+",3";
			rs = st.executeQuery(sql);
			while (rs.next()) {
				com=new Comment();
	       
	      
	       com.setId(rs.getInt("id"));
	       com.setTitleid(rs.getInt("titleid"));
	       com.setContexts(rs.getString("contexts"));
	       com.setUsername(rs.getString("username"));
	       com.setTime(rs.getString("time"));
	       
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
	public int addcomment(Comment c) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String time=df.format(new Date());// new Date()为获取当前系统时间
		String sql = "insert into comments value (null," +c.getTitleid()
				+ ",'" + c.getUsername() + "','"+c.getContexts()+"','" + time+ "')";
		
		
		
		
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
