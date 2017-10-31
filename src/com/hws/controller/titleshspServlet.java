package com.hws.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.hws.dao.TitleHspDao;

import com.hws.domain.TitlesHsp;
import com.hws.util.Dbutil;

/**
 * Servlet implementation class titleshspServlet
 */
@WebServlet("/titleshspServlet")
public class titleshspServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public titleshspServlet() {
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
		if("loadMore".equals(action)){
			this.loadMore(request,response);
		}
		
		if("lookUp".equals(action)){
			
			
			this.lookUp(request,response);
		}
		
	}

	private void lookUp(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type=Dbutil.strTochinese(request.getParameter("type"));
		String []type1=type.split("\\s+");
		String typeone=new String(type1[0]);
		String typetwo=new String(type1[1]);
		TitleHspDao td=new TitleHspDao();
		int showpage=1;
		if(request.getParameter("showpage")!=null){
			showpage=Integer.parseInt(request.getParameter("showpage"));
		}
		ArrayList<TitlesHsp> arry= td.getTtileHspBylookUp(typeone, typetwo);
		ArrayList<TitlesHsp> total=td.getTitlesHsp(arry, showpage);
		 int allpages=td.getTitlesHspPages(arry);
		   StringBuffer pagesv=new StringBuffer();
		   
		   
			  /* pagesv.append("<a href='titleshspServlet?showpage="+(showpage+1)+"&action=loadMore'>加载更多</a>");  */
			   
			   pagesv.append("<a href='titleshspServlet?showpage=1&action=lookUp&type="+type+"'>首页</a>");
			     if(showpage>1){
			    	 pagesv.append("<a href='titleshspServlet?showpage="+(showpage-1)+"&action=lookUp&type="+type+"'><<</a>"); 
			     }
			     
			   int start=(showpage-1)/td.pages*td.pages+1;
			   int end=start+td.pages-1;
			   if(end>allpages){
				   end=allpages;
			   }
			     for(int i=start;i<=end;i++){
			    	 if(showpage==i){
			    		 pagesv.append("<a href='titleshspServlet?showpage="+i+"&action=lookUp&type="+type+"'>&nbsp["+i+"]&nbsp</a>");
			    	 }
			    	 else{
			    		 pagesv.append("<a href='titleshspServlet?showpage="+i+"&action=lookUp&type="+type+"'>&nbsp"+i+"&nbsp</a>"); 
			    	 }
			     }
			     
			     if(showpage<allpages){
			    	 pagesv.append("<a href='titleshspServlet?showpage="+(showpage+1)+"&action=lookUp&type="+type+"'></a>");  
			     }
			     
			    
			   
			    
			     pagesv.append("<a href='titleshspServlet?showpage="+allpages+"&action=lookUp&type="+type+"'>尾页</a>");
			     request.setAttribute("pages",pagesv);
					request.setAttribute("total", total);
					 RequestDispatcher rd=request.getRequestDispatcher("hospital/show.jsp");
				     rd.forward(request,response);
	}

	private void loadMore(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TitleHspDao td=new TitleHspDao();
		//ArrayList<TitlesHsp> ths=td.getTtileHsp();
		int showpage=1;
		
			
			if(request.getParameter("showpage")!=null){
				showpage=Integer.parseInt(request.getParameter("showpage"));
			}
		   ArrayList<TitlesHsp> total=td.gettitlehspBypages(showpage);
		
		   int allpages=td.countPages();
		   
			//System.out.println(allpages);
			//ArrayList<Product> pros=billdao.getProducts();
		
			   StringBuffer pagesv=new StringBuffer();
			   
			   
			  /* pagesv.append("<a href='titleshspServlet?showpage="+(showpage+1)+"&action=loadMore'>加载更多</a>");  */
			   
			   pagesv.append("<a href='titleshspServlet?showpage=1&action=loadMore' style = 'text-decoration: none;color:black;'>首页</a>");
			     if(showpage>1){
			    	 pagesv.append("<a href='titleshspServlet?showpage="+(showpage-1)+"&action=loadMore' style = 'text-decoration: none;color:black;'><<</a>"); 
			     }
			     
			   int start=(showpage-1)/td.pages*td.pages+1;
			   int end=start+td.pages-1;
			   if(end>allpages){
				   end=allpages;
			   }
			     for(int i=start;i<=end;i++){
			    	 if(showpage==i){
			    		 pagesv.append("<a style = 'text-decoration: none;color:red;' href='titleshspServlet?showpage="+i+"&action=loadMore'>&nbsp["+i+"]&nbsp</a>");
			    	 }
			    	 else{
			    		 pagesv.append("<a style = 'text-decoration: none;color:black;' href='titleshspServlet?showpage="+i+"&action=loadMore'>&nbsp"+i+"&nbsp</a>"); 
			    	 }
			     }
			     
			     if(showpage<allpages){
			    	 pagesv.append("<a  href='titleshspServlet?showpage="+(showpage+1)+"&action=loadMore' style = 'text-decoration: none;color:black;'>>></a>");  
			     }
			     
			    
			   
			    
			     pagesv.append("<a  href='titleshspServlet?showpage="+allpages+"&action=loadMore' style = 'text-decoration: none;color:black;'>尾页</a>");
			     request.setAttribute("pages",pagesv);
					request.setAttribute("total", total);
					 RequestDispatcher rd=request.getRequestDispatcher("hospital/show.jsp");
				     rd.forward(request,response);
		
	}
		
	

	private void doShow(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		TitleHspDao td=new TitleHspDao();
		ArrayList<TitlesHsp> ths=td.getTtileHsp();
		request.setAttribute("thsall",ths);
		
		RequestDispatcher rd=request.getRequestDispatcher("hospital/show.jsp");
	     rd.forward(request,response);
		
	}

}
