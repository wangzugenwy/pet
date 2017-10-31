package com.hws.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.hws.dao.CommentDao;
import com.hws.dao.ContextDao;
import com.hws.dao.PictureDao;
import com.hws.dao.TitleDao;
import com.hws.domain.Comment;
import com.hws.domain.Context;
import com.hws.domain.Picture;
import com.hws.domain.Title;

/**
 * Servlet implementation class contextServlet
 */
@WebServlet("/contextServlet")
public class contextServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public contextServlet() {
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
		if("doShow".equals(action)){
			//System.out.println("dajsf");
			this.doShow(request, response);
		}
		
	}
	
	    
	private void doShow(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ContextDao cd=new ContextDao();
		PictureDao pd=new PictureDao();
		CommentDao cm=new CommentDao();
		
		int id=Integer.parseInt(request.getParameter("id"));
		TitleDao dao=new TitleDao();
		Title t=dao.getTtileById(id);
		
		ArrayList<Picture> pie=pd.getPicture(id);
		ArrayList<Context> con=cd.getContext(id);
		ArrayList<Comment> cot=cm.getComment(id);
		HttpSession session=request.getSession();
		session.setAttribute("titleid", id);//在添加评论时需要titleid，所以保存
		/*for(Title t:titles){
			System.out.println(t.getTitle());
		}*/
		request.setAttribute("title", t);
		request.setAttribute("cons", con);
		request.setAttribute("pies",pie );
		request.setAttribute("cots",cot );
		RequestDispatcher rd=request.getRequestDispatcher("contexts/showcontext.jsp");
	     rd.forward(request,response);
		
		
	}

}
