package com.hws.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hws.dao.CommentDao;
import com.hws.dao.GoodcommentDao;
import com.hws.domain.Comment;
import com.hws.domain.Goodcomment;
import com.hws.domain.User;
import com.hws.util.Dbutil;

/**
 * Servlet implementation class goodcommentServlet
 */
@WebServlet("/goodcommentServlet")
public class goodcommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public goodcommentServlet() {
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
		
		if("doShowgoodcomment".equals(action))
		{
			
			
			this.doShowgoodcomment(request,response);
			
			
			
		}
		if("doAdd".equals(action)){
			this.doAdd(request,response);
		}
		if("doAddtwo".equals(action)){
			this.doAddtwo(request,response);
		}

}

	private void doAddtwo(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session=request.getSession();
		int goodid=(int)session.getAttribute("goodids");
		//String goodtypes=(String)session.getAttribute("goodtypes");
		//System.out.println(goodtypes);
		//String goodtype=Dbutil.strTochinese(goodtypes);
	
		User u=(User)session.getAttribute("user");
		String comment=Dbutil.strTochinese(request.getParameter("comment"));
		
		Goodcomment c=new Goodcomment( u.getUsername(), comment, goodid);
		GoodcommentDao gd=new GoodcommentDao();
		int result=gd.addcomment(c);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
	
		if(result>0){
			out.print("<script type='text/javascript' language='java'>alert('评论成功');window.location.href='goodServlet?action=doShow'</script>");
		}
		
	}

	private void doAdd(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int goodid=Integer.parseInt(request.getParameter("goodid"));
		
		String ynpay=Dbutil.strTochinese(request.getParameter("ynpay"));
		HttpSession session=request.getSession();
		session.setAttribute("goodids", goodid);
		
		if("是".equals(ynpay)){
			response.sendRedirect("order/comment.jsp");
			
			
			
			
			
			
			
		}
		else{
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
		
			
				out.print("<script type='text/javascript' language='java'>alert('购买后才能评论，谢谢！');window.location.href='goodServlet?action=doShow'</script>");
			
		}
		
		
		
	}

	private void doShowgoodcomment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int goodid=Integer.parseInt(request.getParameter("goodid"));
	   GoodcommentDao gd=new GoodcommentDao();
	  ArrayList<Goodcomment>gcd= gd.getComment(goodid);
	  request.setAttribute("gcds", gcd);
	  RequestDispatcher rd=request.getRequestDispatcher("pages/showgooddetail.jsp");
	     rd.forward(request,response);
	}
}
