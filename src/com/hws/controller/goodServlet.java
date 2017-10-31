package com.hws.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.hws.dao.GoodDao;
import com.hws.dao.GoodcommentDao;
import com.hws.domain.Good;
import com.hws.domain.Goodcomment;
import com.hws.util.Dbutil;

/**
 * Servlet implementation class goodServlet
 */
@WebServlet("/goodServlet")
public class goodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public goodServlet() {
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
		if("doFindgoodbytype".equals(action)){
			this.doFindgoodbytype(request,response);
		}
		if("doLoad".equals(action)){
			this.doLoad(request,response);
		}
	}

	private void doLoad(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		
		GoodDao gd=new GoodDao();
		Good g=gd.getgoodById(id);
		request.setAttribute("total", g);
		/*int goodid=Integer.parseInt(request.getParameter("goodid"));*/
		   GoodcommentDao gds=new GoodcommentDao();
		  ArrayList<Goodcomment>gcd= gds.getComment(id);
		  request.setAttribute("gcds", gcd);
		 RequestDispatcher rd=request.getRequestDispatcher("pages/showgooddetail.jsp");
	     rd.forward(request,response);
		
	}

	private void doFindgoodbytype(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int showpage=1;
		GoodDao gooddao=new GoodDao();
			
			if(request.getParameter("showpage")!=null){
				showpage=Integer.parseInt(request.getParameter("showpage"));
			}
			String type=Dbutil.strTochinese(request.getParameter("type"));
			
		   ArrayList<Good> arry=gooddao.getgoodBytype(type);

		   ArrayList<Good> total=gooddao.getgood(arry, showpage);
		   //int allpages=gooddao.countPages();
		   int allpages=gooddao.getgoodPages(total);
			//System.out.println(allpages);
			//ArrayList<Product> pros=billdao.getProducts();
		
			   StringBuffer pagesv=new StringBuffer();
			   
			   
			 
			   
			   pagesv.append("<a  href='goodServlet?showpage=1&action=doFindgoodbytype&type="+type+"' style = 'font-size: 20px;color:black;text-align:center;'>首页</a>");
			     if(showpage>1){
			    	 pagesv.append("<a href='goodServlet?showpage="+(showpage-1)+"&action=doFindgoodbytype&type="+type+"' style = 'font-size: 20px;color:black;text-align:center;'>上一页</a>"); 
			     }
			     
			   int start=(showpage-1)/gooddao.pages*gooddao.pages+1;
			   int end=start+gooddao.pages-1;
			   if(end>allpages){
				   end=allpages;
			   }
			     for(int i=start;i<=end;i++){
			    	 if(showpage==i){
			    		 pagesv.append("<a href='goodServlet?showpage="+i+"&action=doFindgoodbytype&type="+type+"' style = 'font-size: 20px;color:red;text-align:center;'>&nbsp["+i+"]&nbsp</a>");
			    	 }
			    	 else{
			    		 pagesv.append("<a href='goodServlet?showpage="+i+"&action=doFindgoodbytype&type="+type+"' style = 'font-size: 20px;color:black;text-align:center;'>&nbsp"+i+"&nbsp</a>"); 
			    	 }
			     }
			     
			     if(showpage<allpages){
			    	 pagesv.append("<a href='goodServlet?showpage="+(showpage+1)+"&action=doFindgoodbytype&type="+type+"' style = 'font-size: 20px;color:black;text-align:center;'>下一页</a>");  
			     }
			     
			    
			   /*  for(Book u:total){
					 System.out.println(u.getAge());
				 }*/
			     pagesv.append("<a href='goodServlet?showpage="+allpages+"&action=doFindgoodbytype&type="+type+"' style = 'font-size: 20px;color:black;text-align:center;'>尾页</a>");
			     request.setAttribute("pages",pagesv);
					request.setAttribute("total", total);
					 RequestDispatcher rd=request.getRequestDispatcher("pages/showgoodbytype.jsp");
				     rd.forward(request,response);
		
	}

		
		
	

	private void doShow(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int showpage=1;
		GoodDao gooddao=new GoodDao();
			
			if(request.getParameter("showpage")!=null){
				showpage=Integer.parseInt(request.getParameter("showpage"));
			}
		   ArrayList<Good> total=gooddao.getgoodBypages(showpage);
		
		   int allpages=gooddao.countPages();
		   
			//System.out.println(allpages);
			//ArrayList<Product> pros=billdao.getProducts();
		
			   StringBuffer pagesv=new StringBuffer();
			   
			   
			 
			   
			   pagesv.append("<a href='goodServlet?showpage=1&action=doShow'>首页</a>");
			     if(showpage>1){
			    	 pagesv.append("<a href='goodServlet?showpage="+(showpage-1)+"&action=doShow'>上一页</a>"); 
			     }
			     
			   int start=(showpage-1)/gooddao.pages*gooddao.pages+1;
			   int end=start+gooddao.pages-1;
			   if(end>allpages){
				   end=allpages;
			   }
			     for(int i=start;i<=end;i++){
			    	 if(showpage==i){
			    		 pagesv.append("<a href='goodServlet?showpage="+i+"&action=doShow'>&nbsp["+i+"]&nbsp</a>");
			    	 }
			    	 else{
			    		 pagesv.append("<a href='goodServlet?showpage="+i+"&action=doShow'>&nbsp"+i+"&nbsp</a>"); 
			    	 }
			     }
			     
			     if(showpage<allpages){
			    	 pagesv.append("<a href='goodServlet?showpage="+(showpage+1)+"&action=doShow'>下一页</a>");  
			     }
			     
			    
			   /*  for(Book u:total){
					 System.out.println(u.getAge());
				 }*/
			     pagesv.append("<a href='goodServlet?showpage="+allpages+"&action=doShow'>尾页</a>");
			     request.setAttribute("pages",pagesv);
					request.setAttribute("total", total);
					 RequestDispatcher rd=request.getRequestDispatcher("pages/showgood.jsp");
				     rd.forward(request,response);
		
	}

}
