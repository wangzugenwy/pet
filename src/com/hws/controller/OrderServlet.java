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

import com.hws.dao.GoodDao;
import com.hws.dao.OrderDao;
import com.hws.domain.BuyCar;
import com.hws.domain.Good;
import com.hws.domain.Order;
import com.hws.domain.User;
import com.hws.util.Dbutil;



/**
 * Servlet implementation class OrderServlet
 */
@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServlet() {
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
			OrderDao orderdao=new OrderDao();
			int result=orderdao.doDel(id);
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
		
			if(result>0){
				out.print("<script type='text/javascript' language='java'>alert('删除成功');window.location.href='OrderServlet?action=doShow'</script>");
			}
		
	}

	private void doAdd(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session=request.getSession();
		ArrayList<BuyCar> bu=(ArrayList<BuyCar>)session.getAttribute("goods");
	    User u=(User)session.getAttribute("user");
	    int totalmoney=0;
	    String ynpay=Dbutil.strTochinese(request.getParameter("ynpay"));
	   String useraddress=Dbutil.strTochinese(request.getParameter("useraddress"));
	   String phone=request.getParameter("phone");
	  
	   if("是".equals(ynpay)){
		   for(BuyCar b:bu){
		    	
		    	
		    	  
		    		GoodDao gd=new GoodDao();
		    	    Good g=gd.getgoodById(b.getGoodid());
		    	    g.setGoodcount(g.getGoodcount()-b.getGoodcount());
		    		gd.modifygoodCount(g);
		    		
		    } 
	   }
	    for(BuyCar b:bu){
	    	totalmoney+=(b.getGoodprice()*b.getGoodcount());
	    }
	    OrderDao orderdao=new OrderDao();
	    for(int i=0;i<bu.size();i++){
	    
	    	
	    orderdao.addorder(useraddress,phone,u,bu.get(i),ynpay);}
	     
	    
	    if("是".equals(ynpay)){
			   
			   
			   
			   
		   }
	    
	    response.setContentType("text/html;charset=utf-8");
		
		
		PrintWriter out=response.getWriter();
	    out.print("<script type='text/javascript' language='java'>alert('增加成功');window.location.href='goodServlet?action=doShow'</script>");
		
	}

	private void doShow(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int showpage=1;
		OrderDao orderdao=new OrderDao();
		HttpSession session=request.getSession();
		User u=(User)session.getAttribute("user");
		//System.out.println(u.getId());
		if(u!=null){
			if(request.getParameter("showpage")!=null){
				showpage=Integer.parseInt(request.getParameter("showpage"));
			}
		   //ArrayList<Order> total=orderdao.getorderBypages(showpage,u.getId());
			ArrayList<Order> array=orderdao.getorderByuserId(u.getId());
			ArrayList<Order> total=orderdao.getOrder(array, showpage);
			
		   //int allpages=orderdao.countPages();
		   int allpages=orderdao.getorderPages(array);
			//System.out.println(allpages);
			//ArrayList<Product> pros=billdao.getProducts();
		
			   StringBuffer pagesv=new StringBuffer();
			   
			   
			 
			   
			   pagesv.append("<a href='OrderServlet?showpage=1&action=doShow'>首页</a>");
			     if(showpage>1){
			    	 pagesv.append("<a href='OrderServlet?showpage="+(showpage-1)+"&action=doShow'>上一页</a>"); 
			     }
			     
			   int start=(showpage-1)/orderdao.pages*orderdao.pages+1;
			   int end=start+orderdao.pages-1;
			   if(end>allpages){
				   end=allpages;
			   }
			     for(int i=start;i<=end;i++){
			    	 if(showpage==i){
			    		 pagesv.append("<a href='OrderServlet?showpage="+i+"&action=doShow'>&nbsp["+i+"]&nbsp</a>");
			    	 }
			    	 else{
			    		 pagesv.append("<a href='OrderServlet?showpage="+i+"&action=doShow'>&nbsp"+i+"&nbsp</a>"); 
			    	 }
			     }
			     
			     if(showpage<allpages){
			    	 pagesv.append("<a href='OrderServlet?showpage="+(showpage+1)+"&action=doShow'>下一页</a>");  
			     }
			     int totalmoney=0;
			    ArrayList<Order> os=orderdao.getorderCar();
			    for(Order b:os){
			    	totalmoney+=(b.getGoodprice()*b.getGoodcount());
			    }
			    
			   /*  for(Book u:total){
					 System.out.println(u.getAge());
				 }*/
			    
			     pagesv.append("<a href='OrderServlet?showpage="+allpages+"&action=doShow'>尾页</a>");
			     request.setAttribute("pages",pagesv);
			     request.setAttribute("totalmoneys",totalmoney);
					request.setAttribute("order", total);
					 RequestDispatcher rd=request.getRequestDispatcher("order/showorder.jsp");
				     rd.forward(request,response);

		
		
	}
		else{
			
			
			
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			
			
			out.print("<script type='text/javascript' language='java'>alert('请先登录!');window.location.href='goodServlet?action=doShow'</script>");
		
		}
	}
		
	}


