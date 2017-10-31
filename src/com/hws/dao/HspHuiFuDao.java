package com.hws.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.hws.domain.HspHuiFu;
import com.hws.domain.HuiFu;
import com.hws.util.Dbutil;

public class HspHuiFuDao {
	public static final int pages=10;
	public ArrayList<HspHuiFu> getorderById(int id) {

			
			Connection conn = Dbutil.getConn();
			Statement st = null;
			ResultSet rs = null;
			ArrayList<HspHuiFu> pros=new ArrayList<HspHuiFu>();
			try {
				st = conn.createStatement();
				String sql = "select *  from hsphuifu where hspcommentid="+id;
				rs = st.executeQuery(sql);
				while (rs.next()) {
					HspHuiFu hf=new HspHuiFu();
					 //Order o =new Order();
						hf.setHspcommentid(rs.getInt("hspcommentid"));
						hf.setComment(rs.getString("comment"));
						hf.setId(rs.getInt("id"));
						hf.setTime(rs.getString("time"));
						hf.setUsername(rs.getString("username"));
						hf.setUserpicture(rs.getString("userpicture"));
				     pros.add(hf);
					

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
	public ArrayList<HspHuiFu> gethuifus(ArrayList<HspHuiFu> arry,int showpage){
		int i=(showpage-1)*10;
		int k=(showpage-1)*10+10;
		 ArrayList<HspHuiFu> arrays=new ArrayList<HspHuiFu> ();
		 if(k>arry.size()){
			 k=arry.size();
		 }
		for(;i<k;i++){
			arrays.add(arry.get(i));
		}
		return arrays;
	}
	public int getHuiFuPages(ArrayList<HspHuiFu> arry){
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
	public int addhuifu(HspHuiFu hf) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String time=df.format(new Date());// new Date()为获取当前系统时间
		String sql = "insert into hsphuifu value (null,"+hf.getHspcommentid()+",'"+hf.getComment()+"','"+hf.getUsername()+"','"+hf.getUserpicture()+"','"+time+"')";
		
		
		
		
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
