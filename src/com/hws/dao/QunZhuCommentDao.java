package com.hws.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.hws.domain.Comment;
import com.hws.domain.QunZhuComment;
import com.hws.util.Dbutil;

public class QunZhuCommentDao {
	public ArrayList<QunZhuComment> getComment(int qunzhuid){
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		QunZhuComment com=null;
		ArrayList<QunZhuComment> coms=new ArrayList<QunZhuComment>();
		/*SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String time=df.format(new Date());// new Date()为获取当前系统时间
	*/	try {
			st = conn.createStatement();
			String sql = "select *  from qunzhucomment where qunzhuid="+qunzhuid+" ";
			rs = st.executeQuery(sql);
			while (rs.next()) {
				com=new QunZhuComment();
	       
	      
	       com.setId(rs.getInt("id"));
	      com.setComment(rs.getString("comment"));
	      com.setName(rs.getString("name"));
	      com.setPicture(rs.getString("picture"));
	      com.setQunzhuid(rs.getInt("qunzhuid"));
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
	public int addcomment(QunZhuComment c) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String time=df.format(new Date());// new Date()为获取当前系统时间
		String sql = "insert into qunzhucomment value (null,"+ c.getQunzhuid()+",'"+c.getName()+"','"+c.getPicture()+"','"+c.getComment()+"','"+time+"')";
		
		
		
		
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
