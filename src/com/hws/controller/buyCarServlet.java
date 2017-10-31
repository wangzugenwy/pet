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


import com.hws.dao.BuycarDao;
import com.hws.domain.BuyCar;
import com.hws.domain.User;
import com.hws.util.Dbutil;



/**
 * Servlet implementation class buyCarServlet
 */
@WebServlet("/buyCarServlet")
public class buyCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public buyCarServlet() {
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
		if("doAdd".equals(action)){
			this.doAdd(request,response);
		}
		if("doDel".equals(action)){
			this.doDel(request, response);
		}
	}

	private void doDel(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		BuycarDao buycardao=new BuycarDao();
		int result=buycardao.doDel(id);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
	
		if(result>0){
			out.print("<script type='text/javascript' language='java'>alert('删除成功');window.location.href='buyCarServlet?action=doShow'</script>");
		}
		
	}

	private void doAdd(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session=request.getSession();
	User u=(User)	session.getAttribute("user");
	if(u!=null){
		int userid=Integer.parseInt(request.getParameter("userid"));
		int goodid=Integer.parseInt(request.getParameter("goodid"));
		int goodcount=Integer.parseInt(request.getParameter("goodcount"));
		String goodpicture=request.getParameter("goodpicture");
		String a=goodpicture.replaceAll( "\\\\", "\\\\\\\\");
		//System.out.println(a);
		String goodtype=Dbutil.strTochinese(request.getParameter("goodtype"));
		Float goodprice=Float.parseFloat(request.getParameter("goodprice"));
		BuycarDao buycardao=new BuycarDao();
		ArrayList<BuyCar> bu=buycardao.getBuyCar();
		BuyCar c=null;
		int flag=0;
		for(BuyCar b:bu){
			if(b.getGoodid()==goodid&&b.getGoodpicture().equals(goodpicture)&&b.getGoodtype().equals(goodtype)&&b.getUserid()==userid){
				flag=1;
				c=b;
				//System.out.println("fdadsa");
			}
			
		}
		
		
		if(flag==0){
		BuyCar b=new BuyCar(userid, goodid, goodcount, a, goodprice, goodtype);
		
	
		response.setContentType("text/html;charset=utf-8");
	
		//User u=new User(name,password,authority,age,job,phone,email);
	    int result=buycardao.addbuycar(b);
		PrintWriter out=response.getWriter();
		
		if(result>0){
			out.print("<script type='text/javascript' language='java'>alert('增加成功');window.location.href='buyCarServlet?action=doShow'</script>");
		}
		}
		else{
			c.setGoodcount(c.getGoodcount()+1);
			buycardao.modifybuycarCount(c);
			
			
			
			response.sendRedirect("buyCarServlet?action=doShow");
			
		
	}
		
	}
	else{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		
		out.print("<script type='text/javascript' language='java'>alert('请先登录!');window.location.href='goodServlet?action=doShow'</script>");
	
	}
	}
	private void doShow(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 int showpage=1;
		    BuycarDao buycardao=new BuycarDao();
			HttpSession session=request.getSession();
			User u=(User)session.getAttribute("user");
			
			if(request.getParameter("showpage")!=null){
				showpage=Integer.parseInt(request.getParameter("showpage"));
			}
			if(u!=null){
		   //ArrayList<BuyCar> total=buycardao.getBuyCarBypages(showpage);
			ArrayList<BuyCar> array=buycardao.getbuycarByuserId(u.getId());
			ArrayList<BuyCar> total=buycardao.getBuyCar(array, showpage);
		   //int allpages=buycardao.countPages();
		    int allpages=buycardao.getbuycarPages(array);
			//System.out.println(allpages);
			//ArrayList<Product> pros=billdao.getProducts();
		
			StringBuffer pagesv=new StringBuffer();
			   
			   
			 
			   
			   pagesv.append("<a href='BuyCarServlet?showpage=1&action=doShow'>首页</a>");
			     if(showpage>1){
			    	 pagesv.append("<a href='BuyCarServlet?showpage="+(showpage-1)+"&action=doShow'>上一页</a>"); 
			     }
			     
			   int start=(showpage-1)/buycardao.pages*buycardao.pages+1;
			   int end=start+buycardao.pages-1;
			   if(end>allpages){
				   end=allpages;
			   }
			     for(int i=start;i<=end;i++){
			    	 if(showpage==i){
			    		 pagesv.append("<a href='BuyCarServlet?showpage="+i+"&action=doShow'>&nbsp["+i+"]&nbsp</a>");
			    	 }
			    	 else{
			    		 pagesv.append("<a href='BuyCarServlet?showpage="+i+"&action=doShow'>&nbsp"+i+"&nbsp</a>"); 
			    	 }
			     }
			     
			     if(showpage<allpages){
			    	 pagesv.append("<a href='BuyCarServlet?showpage="+(showpage+1)+"&action=doShow'>下一页</a>");  
			     }
			     int totalmoney=0;
			    ArrayList<BuyCar>bu=buycardao.getbuycarByuserId(u.getId());
			    for(BuyCar b:bu){
			    	totalmoney+=(b.getGoodprice()*b.getGoodcount());
			    }
			    
			   /*  for(Book u:total){
					 System.out.println(u.getAge());
				 }*/
			  
			    session.setAttribute("goods",total);
			     pagesv.append("<a href='BuyCarServlet?showpage="+allpages+"&action=doShow'>尾页</a>");
			     request.setAttribute("pages",pagesv);
			     request.setAttribute("totalmoneys",totalmoney);
					request.setAttribute("buycar", total);
					 RequestDispatcher rd=request.getRequestDispatcher("buycar/showbuycar.jsp");
				     rd.forward(request,response);

		
	}
			else{
				 response.setContentType("text/html;charset=utf-8");
					PrintWriter out=response.getWriter();
					
					
					out.print("<script type='text/javascript' language='java'>alert('请先登录!');window.location.href='goodServlet?action=doShow'</script>");
				
				
			}
	}
	
}
