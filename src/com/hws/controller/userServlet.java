package com.hws.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.hws.dao.UserDao;
import com.hws.domain.User;
import com.hws.util.Dbutil;

/**
 * Servlet implementation class userServlet
 */

public class userServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if("doFindpassword".equals(action)){
			this.doFindpassword(request,response);
			
		}
		if("doPresentimg".equals(action)){
			this.doPresentimg(request, response);
			
		}
		if("doPresentimgtwo".equals(action)){
			this.doPresentimgtwo(request, response);
			
		}
		if("doModifypassword".equals(action)){
			this.doModifypassword(request,response);
		}
		
	}
	private void doModifypassword(HttpServletRequest request, HttpServletResponse response) throws IOException {
		 HttpSession session=request.getSession();
	     User ua=(User)session.getAttribute("user");
	     UserDao userdao=new UserDao();
		String name=Dbutil.strTochinese(request.getParameter("name"));
		String password=request.getParameter("password");
		String repass=request.getParameter("repass");
		System.out.println(repass);
		if(ua.getUsername().equals(name)&&ua.getUserpassword().equals(password)){
			ua.setUserpassword(repass);
		    userdao.modifyPassword(ua);
		    response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			
			
			out.print("<script type='text/javascript' language='java'>alert('修改成功!');window.location.href='titleServlet?action=doShow'</script>");
		}
		else{
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			out.print("<script type='text/javascript' language='java'>alert('输入错误!');window.location.href='titleServlet?action=doShow'</script>");
		}
	}

	private void doPresentimg(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		response.sendRedirect("pages/addinputuserpicture.jsp");
	}
	private void doPresentimgtwo(HttpServletRequest request, HttpServletResponse response) throws IOException, IllegalStateException, ServletException {
		HttpSession session=request.getSession();
		User u=(User)session.getAttribute("user");
		request.setCharacterEncoding("UTF-8");
		 Part part=request.getPart("file");
		 //System.out.println(part.getName());
		   saveUpload(part);
		   String fileName = getFileName(part);
		   
		   
		String userpictures="images\\\\"+fileName;
		
		//Book b=new Book(bookname, bookcount, bookprice, bookintroduce, bookpictures);
		
		
		
		u.setPicture(userpictures);
		
		
		UserDao userdao=new UserDao();
		int result=userdao.modifyheaderpicture(u);
		if(result>0){
		 response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			
			
			out.print("<script type='text/javascript' language='java'>alert('上传成功!');window.location.href='titleServlet?action=doShow2'</script>");
		}
		
	}
	private void saveUpload(Part part) {
		String fileName = getFileName(part);
		//System.out.println(fileName);输出2.jpg,分割了父目录
		
		//fileName = "iotek_" + System.nanoTime() + "_" + fileName;
	
		/*ServletContext cxt = getServletContext();
		String realPath = cxt.getRealPath("/");*/
		//String realPath="F:/iotext/新建文件夹/Shopping";
		File file = new File("F:/iotext/新建文件夹/pet/WebContent/images");
		//System.out.println(realPath);
		if(!file.exists()){
			file.mkdir();
		}
		File upFile = new File(file, fileName);
		FileOutputStream fos = null;
		InputStream is = null;
		byte[] buf = new byte[1024]; 
		int flag = -1;
		try {
			fos = new FileOutputStream(upFile);
			is = part.getInputStream();
			while((flag = is.read(buf, 0, 1024)) != -1){
				fos.write(buf, 0, flag);
			}
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(fos != null){
				try {
					fos.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(is != null){
				try {
					is.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
    
		
	}

	private String getFileName(Part part) {
		String header = part.getHeader("content-disposition");
		String[] arr = header.split("filename=");
		return arr[arr.length - 1].replace("\"", "");

	}

	private void doFindpassword(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name=Dbutil.strTochinese(request.getParameter("name"));
		String phone=request.getParameter("phone");
		
		UserDao ud=new UserDao();
		User u=ud.findpassword(name, phone);
		if(u!=null){
			String ph=u.getUserpassword();
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
           
			
				out.print("<script type='text/javascript' language='java'>alert("+ph+");window.location.href='registerlogin/login.jsp'</script>");
			
		}
		else{
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
           
			
				out.print("<script type='text/javascript' language='java'>alert('无此人');window.location.href='registerlogin/login.jsp'</script>");
		}
	}

}
