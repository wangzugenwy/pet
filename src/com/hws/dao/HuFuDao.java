package com.hws.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.hws.domain.BuyCar;
import com.hws.domain.HuiFu;
import com.hws.domain.Order;
import com.hws.domain.User;
import com.hws.util.Dbutil;



public class HuFuDao {
	public static final int pages=10;
public ArrayList<HuiFu> getorderById(int id) {

		
		Connection conn = Dbutil.getConn();
		Statement st = null;
		ResultSet rs = null;
		ArrayList<HuiFu> pros=new ArrayList<HuiFu>();
		try {
			st = conn.createStatement();
			String sql = "select *  from huifu where barcommentid="+id;
			rs = st.executeQuery(sql);
			while (rs.next()) {
                 HuiFu hf=new HuiFu();
				 //Order o =new Order();
					hf.setBarcommentid(rs.getInt("barcommentid"));
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
public ArrayList<HuiFu> gethuifus(ArrayList<HuiFu> arry,int showpage){
	int i=(showpage-1)*10;
	int k=(showpage-1)*10+10;
	 ArrayList<HuiFu> arrays=new ArrayList<HuiFu> ();
	 if(k>arry.size()){
		 k=arry.size();
	 }
	for(;i<k;i++){
		arrays.add(arry.get(i));
	}
	return arrays;
}
public int getHuiFuPages(ArrayList<HuiFu> arry){
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
public int addhuifu(HuiFu hf) {
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
	String time=df.format(new Date());// new Date()为获取当前系统时间
	String sql = "insert into huifu value (null,"+hf.getBarcommentid()+",'"+hf.getComment()+"','"+hf.getUsername()+"','"+hf.getUserpicture()+"','"+time+"')";
	
	
	
	
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
