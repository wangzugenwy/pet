package com.hws.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hws.dao.TitleBarDao;
import com.hws.dao.TitleDao;
import com.hws.domain.Title;

/**
 * Servlet implementation class titlesbarServlet
 */
@WebServlet("/titlesbarServlet")
public class titlesbarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public titlesbarServlet() {
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
			
			
			this.doShow(request,response);
		}
	}
//
	private void doShow(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TitleBarDao td=new TitleBarDao();
		ArrayList<Title> titlecmjz=td.getTtilecmzj();
		ArrayList<Title> titlefbhd=td.getTtilefbhd();
		ArrayList<Title> titlelczj=td.getTtilelczd();
		request.setAttribute("titlecmjzs", titlecmjz);
		/*for(Title t:titles){
			System.out.println(t.getTitle());
		}*/
		request.setAttribute("titlefbhds",titlefbhd);
		request.setAttribute("titlelczjs",titlelczj);
		RequestDispatcher rd=request.getRequestDispatcher("bar/showbar.jsp");
	     rd.forward(request,response);
		
	}

}
