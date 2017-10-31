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

import com.hws.dao.HspHuiFuDao;
import com.hws.dao.HuFuDao;
import com.hws.domain.HspHuiFu;
import com.hws.domain.HuiFu;
import com.hws.domain.User;
import com.hws.util.Dbutil;

/**
 * Servlet implementation class hsphuifuServlet
 */
@WebServlet("/hsphuifuServlet")
public class hsphuifuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public hsphuifuServlet() {
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
			this.doAdd(request, response);
		}
	}
	private void doAdd(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int  id=Integer.parseInt(request.getParameter("id"));
		String yourhuifu=Dbutil.strTochinese(request.getParameter("yourhuifu"));
		HspHuiFuDao hd=new HspHuiFuDao();
		HttpSession session=request.getSession();
		User u=(User)session.getAttribute("user");
		HspHuiFu hf=new HspHuiFu();
		
		if(u!=null){
			
			hf.setUsername(u.getUsername());
			hf.setComment(yourhuifu);
			hf.setHspcommentid(id);
			hf.setUserpicture(u.getPicture());
			int result=hd.addhuifu(hf);
			if(result>0){
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out=response.getWriter();
				
				
				out.print("<script type='text/javascript' language='java'>alert('发表成功!');window.location.href='hsphuifuServlet?action=doShow&id="+id+"'</script>");
			}
			
		}
		else{
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			
			
			out.print("<script type='text/javascript' language='java'>alert('请先登录!');window.location.href='hsphuifuServlet?action=doShow&id="+id+"'</script>");
		
		}
		
	}

	private void doShow(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		int showpage=1;
		HspHuiFuDao hfdao=new HspHuiFuDao();
		HttpSession session=request.getSession();
		session.setAttribute("hspcommentid", id);//保存回复第几条评论的id,在提交自己的评论时可以用到
		/*HttpSession session=request.getSession();
		User u=(User)session.getAttribute("user");*/
		//System.out.println(u.getId());
		
			if(request.getParameter("showpage")!=null){
				showpage=Integer.parseInt(request.getParameter("showpage"));
			}
		   //ArrayList<Order> total=orderdao.getorderBypages(showpage,u.getId());
			ArrayList<HspHuiFu> array=hfdao.getorderById(id);
			ArrayList<HspHuiFu> total=hfdao.gethuifus(array, showpage);
			
		   //int allpages=orderdao.countPages();
		   int allpages=hfdao.getHuiFuPages(array);
			//System.out.println(allpages);
			//ArrayList<Product> pros=billdao.getProducts();
		
			   StringBuffer pagesv=new StringBuffer();
			   
			   
			 
			   
			   pagesv.append("<a href='hsphuifuServlet?showpage=1&action=doShow&id="+id+"'>首页</a>");
			     if(showpage>1){
			    	 pagesv.append("<a href='hsphuifuServlet?showpage="+(showpage-1)+"&action=doShow&id="+id+"'>上一页</a>"); 
			     }
			     
			   int start=(showpage-1)/hfdao.pages*hfdao.pages+1;
			   int end=start+hfdao.pages-1;
			   if(end>allpages){
				   end=allpages;
			   }
			     for(int i=start;i<=end;i++){
			    	 if(showpage==i){
			    		 pagesv.append("<a href='hsphuifuServlet?showpage="+i+"&action=doShow&id="+id+"'>&nbsp["+i+"]&nbsp</a>");
			    	 }
			    	 else{
			    		 pagesv.append("<a href='hsphuifuServlet?showpage="+i+"&action=doShow&id="+id+"'>&nbsp"+i+"&nbsp</a>"); 
			    	 }
			     }
			     
			     if(showpage<allpages){
			    	 pagesv.append("<a href='hsphuifuServlet?showpage="+(showpage+1)+"&action=doShow&id="+id+"'>下一页</a>");  
			     }
			    /* int totalmoney=0;
			    ArrayList<Order> os=orderdao.getorderCar();
			    for(Order b:os){
			    	totalmoney+=(b.getGoodprice()*b.getGoodcount());
			    }*/
			    
			   /*  for(Book u:total){
					 System.out.println(u.getAge());
				 }*/
			    
			     pagesv.append("<a href='hsphuifuServlet?showpage="+allpages+"&action=doShow&id="+id+"'>尾页</a>");
			     request.setAttribute("pages",pagesv);
			     //request.setAttribute("totalmoneys",totalmoney);
					request.setAttribute("huifu", total);
					 RequestDispatcher rd=request.getRequestDispatcher("hospital/huifu.jsp");
				     rd.forward(request,response);

		
		
	}
		
		
	}


