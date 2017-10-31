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

import com.hws.dao.TitleDao;
import com.hws.domain.Title;

/**
 * Servlet implementation class titleServlet
 */
@WebServlet("/titleServlet")
public class titleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public titleServlet() {
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
		if("doShow2".equals(action)){
			//System.out.println("dajsf");
			this.doShow2(request, response);
		}
		
	}

	private void doShow2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TitleDao td=new TitleDao();
		ArrayList<Title> titles=td.getTtile();
		ArrayList<Title> titlesmc=td.getTtilemc();
		request.setAttribute("titlesmcs", titlesmc);
		/*for(Title t:titles){
			System.out.println(t.getTitle());
		}*/
		ArrayList<Title> titlestop=td.getTtileTop();
		
		request.setAttribute("titlestop", titlestop);
		ArrayList<Title> titleszx=td.getTtilezx();
		
		
		request.setAttribute("titlezxs", titleszx);
		request.setAttribute("titles", titles);
		
		
		RequestDispatcher rd=request.getRequestDispatcher("pages/index2.jsp");
	     rd.forward(request,response);
		
		
	}

	private void doShow(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		TitleDao td=new TitleDao();
		ArrayList<Title> titles=td.getTtile();
	 
		ArrayList<Title> titlesmc=td.getTtilemc();
		ArrayList<Title> titleszx=td.getTtilezx();
		ArrayList<Title> titlestop=td.getTtileTop();
		request.setAttribute("titles", titles);
		request.setAttribute("titlestop", titlestop);
		request.setAttribute("titlesmcs", titlesmc);
		request.setAttribute("titlezxs", titleszx);
		RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");
	     rd.forward(request,response);
		
		
		
		
	}

}
