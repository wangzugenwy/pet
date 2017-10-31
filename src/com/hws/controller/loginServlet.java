package com.hws.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hws.dao.UserDao;
import com.hws.domain.User;
import com.hws.util.Dbutil;


/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
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
		System.out.println("jdsakf");
		User u=new User();
		u.setUsername(name);
		u.setUserpassword(password);
	    UserDao userdao=new UserDao();
	    User us=userdao.check(u);
     System.out.println(us.getId());
		   if(us!=null){
			   HttpSession session=request.getSession();
		       session.setAttribute("user",us );
			   response.sendRedirect("titleServlet?action=doShow2");
		   }
	}

}
