package com.hws.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.hws.domain.BuyCar;
import com.hws.util.Dbutil;



public class BuycarDao {
	public static int pages=10;
	public ArrayList<BuyCar> getBuyCarBypages(int showpage) {
		ArrayList<BuyCar> pros = new ArrayList<BuyCar>();
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			String sql = "select *  from buycar limit "+(showpage-1)*pages+","+pages+" ";
			rs = st.executeQuery(sql);
			while (rs.next()) {

				BuyCar b= new BuyCar();
				b.setGoodcount(rs.getInt("goodcount"));
				b.setGoodid(rs.getInt("goodid"));
				b.setGoodpicture(rs.getString("goodpicture"));
				b.setGoodprice(rs.getFloat("goodprice"));
				b.setGoodtype(rs.getString("goodtype"));
				b.setId(rs.getInt("id"));
				b.setUserid(rs.getInt("userid"));
			     pros.add(b);

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
	public ArrayList<BuyCar> getBuyCar(ArrayList<BuyCar> arry,int showpage){
		int i=(showpage-1)*10;
		int k=(showpage-1)*10+10;
		 ArrayList<BuyCar> arrays=new ArrayList<BuyCar> ();
		 if(k>arry.size()){
			 k=arry.size();
		 }
		for(;i<k;i++){
			arrays.add(arry.get(i));
		}
		return arrays;
	}
public ArrayList<BuyCar> getbuycarByuserId(int userid) {

		
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		ArrayList<BuyCar> pros=new ArrayList<BuyCar>();
		try {
			st = conn.createStatement();
			String sql = "select *  from  buycar where userid="+userid;
			rs = st.executeQuery(sql);
			while (rs.next()) {

				BuyCar b= new BuyCar();
				b.setGoodcount(rs.getInt("goodcount"));
				b.setGoodid(rs.getInt("goodid"));
				b.setGoodpicture(rs.getString("goodpicture"));
				b.setGoodprice(rs.getFloat("goodprice"));
				b.setGoodtype(rs.getString("goodtype"));
				b.setId(rs.getInt("id"));
				b.setUserid(rs.getInt("userid"));
			    pros.add(b);

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
public int getbuycarPages(ArrayList<BuyCar> arry){
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
	public int modifybuycarCount(BuyCar b){
		
		
		
		String sql = "UPDATE buycar set goodcount=" + b.getGoodcount()+" where id="+b.getId();
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
	public ArrayList<BuyCar> getBuyCar() {
		ArrayList<BuyCar> pros = new ArrayList<BuyCar>();
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			String sql = "select *  from buycar";
			rs = st.executeQuery(sql);
			while (rs.next()) {

				BuyCar b= new BuyCar();
				b.setGoodcount(rs.getInt("goodcount"));
				b.setGoodid(rs.getInt("goodid"));
				b.setGoodpicture(rs.getString("goodpicture"));
				b.setGoodprice(rs.getFloat("goodprice"));
				b.setGoodtype(rs.getString("goodtype"));
				b.setId(rs.getInt("id"));
				b.setUserid(rs.getInt("userid"));
			     pros.add(b);

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
	public int addbuycar(BuyCar b) {

		String sql = "insert into buycar value (null," +b.getUserid()
				+ "," + b.getGoodid() + "," + b.getGoodcount()+ ",'"
				+ b.getGoodpicture() +"',"+ b.getGoodprice()+",'"+b.getGoodtype()+"')";
		
		
		
		
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

		String sql = "delete from buycar where id=" + id;
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
	public int getCount(){
		
		
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		int result=0;
		try {
			st = conn.createStatement();
			String sql = "select Count(*) from buycar";
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
	public int getgoodPages(ArrayList<BuyCar> arry){
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
