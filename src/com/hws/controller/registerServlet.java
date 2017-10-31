package com.hws.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.hws.dao.UserDao;
import com.hws.domain.User;
import com.hws.util.Dbutil;

/**
 * Servlet implementation class registerServlet
 */
@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registerServlet() {
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
	String name=Dbutil.strTochinese(request.getParameter("name"));
	String password=request.getParameter("password");
	String phone=request.getParameter("phone");
	UserDao userdao=new UserDao();
	User u=new User();
	u.setPhone(phone);
	u.setUserpassword(password);
	u.setUsername(name);
    int result=userdao.adduser(u);

	response.setContentType("text/html;charset=utf-8");
	PrintWriter out=response.getWriter();

	if(result>0){
		out.print("<script type='text/javascript' language='java'>alert('×¢²á³É¹¦');window.location.href='registerlogin/login.jsp'</script>");
	}
	}

}
