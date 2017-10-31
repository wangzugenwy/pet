package com.hws.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.hws.domain.Good;
import com.hws.util.Dbutil;



public class GoodDao {
	public static int pages=8;
	
	
	
	public int getCount(){
			
		
			Connection conn = Dbutil.getConn();
			Statement st = null;
			ResultSet rs = null;
			int result=0;
			try {
				st = conn.createStatement();
				String sql = "select Count(*) from good";
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
		public int doDel(int id) {

			String sql = "delete from good where id=" + id;
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
		//进行分页处理
		public ArrayList<Good> getgoodBypages(int showpage) {
			ArrayList<Good> pros = new ArrayList<Good>();
			Connection conn = Dbutil.getConn();
			Statement st = null;
			ResultSet rs = null;
			try {
				st = conn.createStatement();
				String sql = "select *  from good limit "+(showpage-1)*pages+","+pages+" ";
				rs = st.executeQuery(sql);
				while (rs.next()) {

					Good g= new Good();
					g.setGoodcount(rs.getInt("goodcount"));
					g.setGoodintroduce(rs.getString("goodintroduce"));
					g.setGoodname(rs.getString("goodname"));
					g.setGoodpicture(rs.getString("goodpicture"));
					g.setGoodprice(rs.getFloat("goodprice"));
					g.setGoodtype(rs.getString("goodtype"));
					g.setId(rs.getInt("id"));
				     pros.add(g);

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
		//从一个集合中得到他的页数
		public int getgoodPages(ArrayList<Good> arry){
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
		public ArrayList<Good> getgood(ArrayList<Good> arry,int showpage){
			int i=(showpage-1)*10;
			int k=(showpage-1)*10+10;
			 ArrayList<Good> arrays=new ArrayList<Good> ();
			 if(k>arry.size()){
				 k=arry.size();
			 }
			for(;i<k;i++){
				arrays.add(arry.get(i));
			}
			return arrays;
		}
		public int modifygoodCount(Good b){
			
			
			
			String sql = "UPDATE good set goodcount=" +b.getGoodcount()+" where id="+b.getId();
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
		/*public int addgood(Good g) {

			String sql = "insert into good value (null,'" +g.getBookname()
					+ "'," + b.getBookcount() + "," + b.getBookprice()+ ",'"
					+ b.getBookintroduce() +"','"+ b.getBookpicture()+"')";
			
			
			
			
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
		public Good getgoodById(int id) {

			Good g=new Good();
			Connection conn = Dbutil.getConn();
			Statement st = null;
			ResultSet rs = null;
			try {
				st = conn.createStatement();
				String sql = "select *  from  good where id="+id+"";
				rs = st.executeQuery(sql);
				while (rs.next()) {

					
				
					g.setGoodcount(rs.getInt("goodcount"));
					g.setGoodintroduce(rs.getString("goodintroduce"));
					g.setGoodname(rs.getString("goodname"));
					g.setGoodpicture(rs.getString("goodpicture"));
					g.setGoodprice(rs.getFloat("goodprice"));
					g.setGoodtype(rs.getString("goodtype"));
					g.setId(rs.getInt("id"));
					

				}

				Dbutil.closeResultSet(rs);
				Dbutil.closeStatement(st);
				Dbutil.closeConn(conn);

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return g;

		}
		
		public ArrayList<Good> getgoodBytype(String type) {

			
			Connection conn = Dbutil.getConn();
			Statement st = null;
			ResultSet rs = null;
			ArrayList<Good> goods=new ArrayList<Good>();
			try {
				st = conn.createStatement();
				String sql = "select *  from  good where goodtype='"+type+"'";
				rs = st.executeQuery(sql);
				while (rs.next()) {

					Good g=new Good();
				
					g.setGoodcount(rs.getInt("goodcount"));
					g.setGoodintroduce(rs.getString("goodintroduce"));
					g.setGoodname(rs.getString("goodname"));
					g.setGoodpicture(rs.getString("goodpicture"));
					g.setGoodprice(rs.getFloat("goodprice"));
					g.setGoodtype(rs.getString("goodtype"));
					g.setId(rs.getInt("id"));
					goods.add(g);

				}

				Dbutil.closeResultSet(rs);
				Dbutil.closeStatement(st);
				Dbutil.closeConn(conn);

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return goods;

		}

		/*public ArrayList<Book> getbookByName(String name) {

			ArrayList<Book> pros = new ArrayList<Book>();
			Connection conn = Dbutil.getConn();
			Statement st = null;
			ResultSet rs = null;
			try {
				st = conn.createStatement();
				String sql = "select *  from  book where bookname='"+name+"'";
				rs = st.executeQuery(sql);
				while (rs.next()) {

					
					Book b = new Book();
					b.setBookcount(rs.getInt("bookcount"));
					b.setBookintroduce(rs.getString("bookintroduce"));
					b.setBookname(rs.getString("bookname"));
					b.setBookpicture(rs.getString("bookpicture"));
					b.setBookprice(rs.getFloat("bookprice"));
					b.setId(rs.getInt("id"));
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
*/
}
