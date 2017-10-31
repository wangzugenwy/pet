package com.hws.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.hws.domain.BuyCar;
import com.hws.domain.Order;
import com.hws.domain.User;
import com.hws.util.Dbutil;



public class OrderDao {
	public static int pages=10;
	public int getCount(){
		
		
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		int result=0;
		try {
			st = conn.createStatement();
			String sql = "select Count(*) from orders";
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
	public ArrayList<Order> getOrderBytime(String time){
		String times=time+"%";
		ArrayList<Order> pros = new ArrayList<Order>();
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			String sql = "select *  from orders where date like '"+times+"' and ynpay='是'";
			rs = st.executeQuery(sql);
			while (rs.next()) {

			    Order o =new Order();
				o.setDate(rs.getString("date"));
				o.setGoodcount(rs.getInt("goodcount"));
				o.setGoodid(rs.getInt("goodid"));
				o.setGoodprice(rs.getFloat("goodprice"));
				
				o.setId(rs.getInt("id"));
				o.setPhone(rs.getString("phone"));
				
				o.setUseraddress(rs.getString("useraddress"));
			    o.setUsername(rs.getString("username"));
			    o.setYnpay(rs.getString("ynpay"));
			 
			    o.setUserid(rs.getInt("userid"));
			     pros.add(o);

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
	public ArrayList<Order> getOrderBymonth(String time,String month){
		String times=time+"-"+month+"%";
		System.out.println(times);
		ArrayList<Order> pros = new ArrayList<Order>();
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			String sql = "select *  from orders where date like '"+times+"' and ynpay='是'";
			rs = st.executeQuery(sql);
			while (rs.next()) {

			    Order o =new Order();
				o.setDate(rs.getString("date"));
				o.setGoodcount(rs.getInt("goodcount"));
				o.setGoodid(rs.getInt("goodid"));
				o.setGoodprice(rs.getFloat("goodprice"));
				
				o.setId(rs.getInt("id"));
				o.setPhone(rs.getString("phone"));
				
				o.setUseraddress(rs.getString("useraddress"));
			    o.setUsername(rs.getString("username"));
			    o.setYnpay(rs.getString("ynpay"));
			  
			    o.setUserid(rs.getInt("userid"));
			     pros.add(o);

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
	public ArrayList<Order> getOrderByday(String time,String month,String day){
		String times=time+"-"+month+"-"+day+"%";
		System.out.println(times);
		ArrayList<Order> pros = new ArrayList<Order>();
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			String sql = "select *  from orders where date like '"+times+"' and ynpay='是'";
			rs = st.executeQuery(sql);
			while (rs.next()) {

			    Order o =new Order();
				o.setDate(rs.getString("date"));
				o.setGoodcount(rs.getInt("goodcount"));
				o.setGoodid(rs.getInt("goodid"));
				o.setGoodprice(rs.getFloat("goodprice"));
				
				o.setId(rs.getInt("id"));
				o.setPhone(rs.getString("phone"));
				
				o.setUseraddress(rs.getString("useraddress"));
			    o.setUsername(rs.getString("username"));
			    o.setYnpay(rs.getString("ynpay"));
			    
			    o.setUserid(rs.getInt("userid"));
			     pros.add(o);

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
	public ArrayList<Order> getorderCar() {
		ArrayList<Order> pros = new ArrayList<Order>();
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			String sql = "select *  from orders";
			rs = st.executeQuery(sql);
			while (rs.next()) {

				    Order o =new Order();
					o.setDate(rs.getString("date"));
					o.setGoodcount(rs.getInt("goodcount"));
					o.setGoodid(rs.getInt("goodid"));
					o.setGoodprice(rs.getFloat("goodprice"));
					
					o.setId(rs.getInt("id"));
					o.setPhone(rs.getString("phone"));
					
					o.setUseraddress(rs.getString("useraddress"));
				    o.setUsername(rs.getString("username"));
				    o.setYnpay(rs.getString("ynpay"));
				    
				    o.setUserid(rs.getInt("userid"));
			     pros.add(o);

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
	public int addorder(String useraddress,String phone,User u,BuyCar b,String ynpay) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String time=df.format(new Date());// new Date()为获取当前系统时间
		String sql = "insert into orders value (null,'" +u.getUsername()
				+ "','" +useraddress + "','" + u.getPhone()+ "',"+ b.getGoodid()+","+b.getGoodprice()+","+b.getGoodcount()+",'"+time+"','"+ynpay+"','"+u.getId()+"')";
		
		
		
		
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
	public int doDel(int id) {

		String sql = "delete from orders where id=" + id;
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
	public int getorderPages(ArrayList<Order> arry){
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
	public ArrayList<Order> getOrder(ArrayList<Order> arry,int showpage){
		int i=(showpage-1)*10;
		int k=(showpage-1)*10+10;
		 ArrayList<Order> arrays=new ArrayList<Order> ();
		 if(k>arry.size()){
			 k=arry.size();
		 }
		for(;i<k;i++){
			arrays.add(arry.get(i));
		}
		return arrays;
	}
public ArrayList<Order> getorderByuserId(int userid) {

		
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		ArrayList<Order> pros=new ArrayList<Order>();
		try {
			st = conn.createStatement();
			String sql = "select *  from  orders where userid="+userid;
			rs = st.executeQuery(sql);
			while (rs.next()) {

				 Order o =new Order();
					o.setDate(rs.getString("date"));
					o.setGoodcount(rs.getInt("goodcount"));
					o.setGoodid(rs.getInt("goodid"));
					o.setGoodprice(rs.getFloat("goodprice"));
					
					o.setId(rs.getInt("id"));
					o.setPhone(rs.getString("phone"));
					
					o.setUseraddress(rs.getString("useraddress"));
				    o.setUsername(rs.getString("username"));
				    o.setYnpay(rs.getString("ynpay"));
				   
				    o.setUserid(rs.getInt("userid"));
			     pros.add(o);
				

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

public int getOrderPages(ArrayList<Order> arry){
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
//
public ArrayList<Order> getOrders(ArrayList<Order> arry,int showpage){
	int i=(showpage-1)*10;
	int k=(showpage-1)*10+10;
	 ArrayList<Order> arrays=new ArrayList<Order> ();
	 if(k>arry.size()){
		 k=arry.size();
	 }
	for(;i<k;i++){
		arrays.add(arry.get(i));
	}
	return arrays;
}
	public ArrayList<Order> getorderBypages(int showpage) {
		ArrayList<Order> pros = new ArrayList<Order>();
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			String sql = "select *  from orders limit "+(showpage-1)*pages+","+pages+"";
			rs = st.executeQuery(sql);
			while (rs.next()) {

			    Order o =new Order();
				o.setDate(rs.getString("date"));
				o.setGoodcount(rs.getInt("goodcount"));
				o.setGoodid(rs.getInt("goodid"));
				o.setGoodprice(rs.getFloat("goodprice"));
				
				o.setId(rs.getInt("id"));
				o.setPhone(rs.getString("phone"));
		
				o.setUseraddress(rs.getString("useraddress"));
			    o.setUsername(rs.getString("username"));
			    o.setYnpay(rs.getString("ynpay"));
			   
			    o.setUserid(rs.getInt("userid"));
			     pros.add(o);

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
