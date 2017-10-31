package com.hws.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.hws.domain.BuyCar;
import com.hws.domain.QunZhu;
import com.hws.domain.User;
import com.hws.util.Dbutil;

public class QunZhuDao {
	public static final int pages=10;
	public ArrayList<QunZhu> getQunZhu() {
		ArrayList<QunZhu> qz = new ArrayList<QunZhu>();
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			String sql = "select *  from qunzhu  ";
			rs = st.executeQuery(sql);
			while (rs.next()) {
				QunZhu p=new QunZhu();
				p.setId(rs.getInt("id"));
				p.setCount(rs.getInt("count"));
				p.setPicture(rs.getString("picture"));
				p.setName(rs.getString("name"));
				
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
	
	//得到某群的人数
	public QunZhu getcount(int qunzhuid){
		//ArrayList<QunZhu> qz = new ArrayList<QunZhu>();
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		QunZhu p=new QunZhu();
		try {
			st = conn.createStatement();
			String sql = "select * from qunzhu where id ="+qunzhuid+" ";
			rs = st.executeQuery(sql);
			while (rs.next()) {
				//QunZhu p=new QunZhu();
				p.setId(rs.getInt("id"));
				p.setCount(rs.getInt("count"));
				p.setPicture(rs.getString("picture"));
				p.setName(rs.getString("name"));
				
			  //qz.add(p);

			}

			Dbutil.closeResultSet(rs);
			Dbutil.closeStatement(st);
			Dbutil.closeConn(conn);

		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return p;

		
		
	}
	
	
	//改变某群的具体人数
public int modifycount(int qunzhuid){
	int c=getcount(qunzhuid).getCount()+1;
		String sql = "UPDATE qunzhu set count=" + c+" where id="+qunzhuid;
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

	//创建群组
	/*public int addqunzhu(int count,User u) {

		String sql = "insert into qunzhu value (null,"+count+",'"+u.getUsername()+"',"+u.getp+")";
		
		
		
		
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

	}*/

	
	
	
	
	
	
	public int getqunzhuPages(ArrayList<QunZhu> arry){
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
