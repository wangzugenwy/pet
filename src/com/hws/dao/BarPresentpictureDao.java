package com.hws.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.hws.domain.BarComment;
import com.hws.domain.BarPresentpicture;
import com.hws.domain.User;
import com.hws.util.Dbutil;

public class BarPresentpictureDao {
	public static final int pages=10;
	public ArrayList<BarPresentpicture> getPicture() {
		ArrayList<BarPresentpicture> pictures = new ArrayList<BarPresentpicture>();
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			String sql = "select *  from barpresentpicture  ";
			rs = st.executeQuery(sql);
			while (rs.next()) {
				BarPresentpicture p=new BarPresentpicture();
				p.setUsername(rs.getString("username"));
                p.setId(rs.getInt("id"));
                p.setPicture(rs.getString("picture"));
				p.setTime(rs.getString("time"));
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
	public int getBarPages(ArrayList<BarPresentpicture> arry){
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
	public ArrayList<BarPresentpicture> getBarPresentpictureBypage(ArrayList<BarPresentpicture> arry,int showpage){
		int i=(showpage-1)*10;
		int k=(showpage-1)*10+10;
		 ArrayList<BarPresentpicture> arrays=new ArrayList<BarPresentpicture> ();
		 if(k>arry.size()){
			 k=arry.size();
		 }
		for(;i<k;i++){
			arrays.add(arry.get(i));
		}
		return arrays;
	}
	public int addpicture(BarPresentpicture b) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String time=df.format(new Date());
		String sql = "insert into barpresentpicture value (null,'" +b.getUsername()
				+ "','" + b.getPicture()+ "','"+ time+"')";
		
		
		
		
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
