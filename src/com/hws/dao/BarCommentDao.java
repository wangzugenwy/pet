package com.hws.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.hws.domain.BarComment;
import com.hws.domain.BuyCar;
import com.hws.domain.HspComment;
import com.hws.util.Dbutil;

public class BarCommentDao {
	public  final static int pages=10;
	public ArrayList<BarComment> getComment(int titleid){
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		BarComment com=null;
		ArrayList<BarComment> coms=new ArrayList<BarComment>();
		/*SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String time=df.format(new Date());// new Date()为获取当前系统时间
	*/	try {
			st = conn.createStatement();
			String sql = "select *  from barcomments where titleid="+titleid+" ";
			rs = st.executeQuery(sql);
			while (rs.next()) {
				com=new BarComment();
	       
	      
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
	public int getBarCommentPages(ArrayList<BarComment> arry){
		int length=0;
		if(arry.size()!=0){
			length=arry.size();
		}
		
	if(length%pages==0){
		return length/pages;

	}
	else{
		return length/pages+1;
	}
	}
	public ArrayList<BarComment> getCommentBypage(ArrayList<BarComment> arry,int showpage){
		int i=(showpage-1)*10;
		int k=(showpage-1)*10+10;
		 ArrayList<BarComment> arrays=new ArrayList<BarComment> ();
		 if(k>arry.size()){
			 k=arry.size();
		 }
		for(;i<k;i++){
			arrays.add(arry.get(i));
		}
		return arrays;
	}
	public int addcomment(BarComment c) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String time=df.format(new Date());// new Date()为获取当前系统时间
		String sql = "insert into barcomments value (null," +c.getTitleid()
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
