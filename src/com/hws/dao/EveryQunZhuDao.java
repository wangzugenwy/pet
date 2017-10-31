package com.hws.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.hws.domain.EveryQunZhu;
import com.hws.domain.QunZhu;
import com.hws.util.Dbutil;

public class EveryQunZhuDao {
	public static final int pages=10;
	public ArrayList<EveryQunZhu> getQunZhu(int id) {
		ArrayList<EveryQunZhu> qz = new ArrayList<EveryQunZhu>();
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			String sql = "select *  from everyqunzhu  where qunzhuid="+id+"";
			rs = st.executeQuery(sql);
			while (rs.next()) {
				EveryQunZhu p=new EveryQunZhu();
				p.setId(rs.getInt("id"));
				p.setQunzhuid(rs.getInt("qunzhuid"));
				p.setPicture(rs.getString("picture"));
				p.setName(rs.getString("name"));
				p.setTime(rs.getString("time"));
			  qz.add(p);

			}

			Dbutil.closeResultSet(rs);
			Dbutil.closeStatement(st);
			Dbutil.closeConn(conn);

		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return qz;

	}
public int addEvreyqunzhu(EveryQunZhu e) {
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
	String time=df.format(new Date());
	String sql = "insert into everyqunzhu value (null,"+e.getQunzhuid()+",'"+e.getName()+"','"+e.getPicture()+"','"+time+"')";
	
	
	
	
	int result = 0;
	Connection conn = Dbutil.getConn();
	Statement st = null;
	try {
		st = conn.createStatement();
		result = st.executeUpdate(sql);
		Dbutil.closeStatement(st);
		Dbutil.closeConn(conn);
	} catch (Exception e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}

	return result;

}
	public int getqunzhuPages(ArrayList<EveryQunZhu> arry){
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
}
