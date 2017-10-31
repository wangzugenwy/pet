package com.hws.dao;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.hws.domain.Good;
import com.hws.domain.HspHuiFu;
import com.hws.domain.QunZhu;
import com.hws.domain.TitlesHsp;
import com.hws.util.Dbutil;



public class TitleHspDao {
	public static final int pages=6;
	public ArrayList<TitlesHsp> getTtileHsp() {
	
		ArrayList<TitlesHsp> titles = new ArrayList<TitlesHsp>();
		Connection conn =  Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			String sql = "select *  from titleshsp ";
			rs = st.executeQuery(sql);
			while (rs.next()) {

				TitlesHsp t= new TitlesHsp();
				t.setId(rs.getInt("id"));
				t.setPicture(rs.getString("picture"));
				t.setTime(rs.getString("time"));
				t.setTitle(rs.getString("title"));
				t.setType(rs.getString("type"));
				t.setUserid(rs.getInt("userid"));
				t.setReadtimes(rs.getInt("readtimes"));
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
	
	
	public ArrayList<TitlesHsp> getTitlesHsp(ArrayList<TitlesHsp> arry,int showpage){
		int i=(showpage-1)*10;
		int k=(showpage-1)*10+10;
		 ArrayList<TitlesHsp> arrays=new ArrayList<TitlesHsp> ();
		 if(k>arry.size()){
			 k=arry.size();
		 }
		for(;i<k;i++){
			arrays.add(arry.get(i));
		}
		return arrays;
	}
	public int getTitlesHspPages(ArrayList<TitlesHsp> arry){
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
	//根据类型匹配
	public ArrayList<TitlesHsp> getTtileHspBylookUp(String typeone,String typetwo) {
		//"select *  from orders where date like '"+times+"' and ynpay='是'";
		String typeones="%"+typeone+"%";
		String typetwos="%"+typetwo+"%";
		ArrayList<TitlesHsp> titles = new ArrayList<TitlesHsp>();
		Connection conn =  Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			String sql = "select *  from titleshsp where type like'"+typeones+"' or type like'"+typetwos+"'";
			rs = st.executeQuery(sql);
			while (rs.next()) {

				TitlesHsp t= new TitlesHsp();
				t.setId(rs.getInt("id"));
				t.setPicture(rs.getString("picture"));
				t.setTime(rs.getString("time"));
				t.setTitle(rs.getString("title"));
				t.setType(rs.getString("type"));
				t.setUserid(rs.getInt("userid"));
				t.setReadtimes(rs.getInt("readtimes"));
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
	public int getCount(){
		
		
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		int result=0;
		try {
			st = conn.createStatement();
			String sql = "select Count(*) from titleshsp";
			rs = st.executeQuery(sql);
			if(rs.next()){
			result=rs.getInt(1);}

			Dbutil.closeResultSet(rs);
			Dbutil.closeStatement(st);
			Dbutil.closeConn(conn);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;

		
		
	}

	public int countPages(){
		if(getCount()%pages==0){
			return getCount()/pages;
		}
		else{
			return getCount()/pages+1;
		}
	}
	public TitlesHsp getcount(int id){
		//ArrayList<QunZhu> qz = new ArrayList<QunZhu>();
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		TitlesHsp t=new TitlesHsp();
		try {
			st = conn.createStatement();
			String sql = "select * from titleshsp where id ="+id+" ";
			rs = st.executeQuery(sql);
			while (rs.next()) {
				//QunZhu p=new QunZhu();
				t.setId(rs.getInt("id"));
				t.setPicture(rs.getString("picture"));
				t.setTime(rs.getString("time"));
				t.setTitle(rs.getString("title"));
				t.setType(rs.getString("type"));
				t.setUserid(rs.getInt("userid"));
				t.setReadtimes(rs.getInt("readtimes"));
				
			  //qz.add(p);

			}

			Dbutil.closeResultSet(rs);
			Dbutil.closeStatement(st);
			Dbutil.closeConn(conn);

		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return t;

		
		
	}
	
	public int modifycount(int id){
		int c=getcount(id).getReadtimes()+1;
			String sql = "UPDATE titleshsp set readtimes=" + c+" where id="+id;
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
	public ArrayList<TitlesHsp> gettitlehspBypages(int showpage) {
		ArrayList<TitlesHsp> pros = new ArrayList<TitlesHsp>();
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			String sql = "select *  from titleshsp limit "+(showpage-1)*pages+","+pages+" ";
			rs = st.executeQuery(sql);
			while (rs.next()) {

				TitlesHsp t= new TitlesHsp();
				t.setId(rs.getInt("id"));
				t.setPicture(rs.getString("picture"));
				t.setTime(rs.getString("time"));
				t.setTitle(rs.getString("title"));
				t.setType(rs.getString("type"));
				t.setUserid(rs.getInt("userid"));
				t.setReadtimes(rs.getInt("readtimes"));
			     pros.add(t);
			}

			Dbutil.closeResultSet(rs);
			Dbutil.closeStatement(st);
			Dbutil.closeConn(conn);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pros;

	}
}
