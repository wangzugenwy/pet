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
import com.hws.dao.HspCommentDao;
import com.hws.dao.HspPictureDao;
import com.hws.dao.TitleHspContextDao;
import com.hws.dao.TitleHspDao;
import com.hws.domain.Comment;
import com.hws.domain.HspComment;
import com.hws.domain.HspPicture;
import com.hws.domain.TitleHspContext;
import com.hws.domain.User;
import com.hws.util.Dbutil;

/**
 * Servlet implementation class hspcontextServlet
 */
@WebServlet("/hspcontextServlet")
public class hspcontextServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public hspcontextServlet() {
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
	}
//添加评论
	private void doAdd(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String comment=Dbutil.strTochinese(request.getParameter("comment"));
		HttpSession session=request.getSession();
		int id=(Integer)session.getAttribute("titleid");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();

	
			
		
		if(session.getAttribute("user")!=null){
			User u=(User)session.getAttribute("user");
			HspComment com=new HspComment(id, u.getUsername(), comment);
			HspCommentDao comd=new HspCommentDao();
			int result=comd.addcomment(com);
			if(result>0){
				
				out.print("<script type='text/javascript' language='java'>alert('评论成功');window.location.href='titleshspServlet?action=doShow'</script>");	
				
				
			}
		}
		else{
			out.print("<script type='text/javascript' language='java'>alert('请您先登录，再评论');window.location.href='registerlogin/login.jsp'</script>");
		}
		
		
	}


	private void doShow(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//int id=Integer.parseInt(request.getParameter("id"));
		int showpage=1;
		if(request.getParameter("showpage")!=null){
			showpage=Integer.parseInt(request.getParameter("showpage"));
		}
		int id=Integer.parseInt(request.getParameter("id"));
		TitleHspContextDao td=new TitleHspContextDao();
		HspPictureDao hd=new HspPictureDao();
		HspCommentDao hc=new HspCommentDao();
		ArrayList<HspComment> hcs=hc.getComment(id);
		ArrayList<HspComment> hcsd=hc.getCommentBypage(hcs, showpage);
		ArrayList<HspPicture> hds=hd.getPicture(id);
		
		TitleHspDao thd=new TitleHspDao();
		thd.modifycount(id);//改变阅读次数
		StringBuffer pagesv=new StringBuffer();
		   
		HttpSession session=request.getSession();
		session.setAttribute("titleid", id);
		 
		   
		   pagesv.append("<a href='hspcontextServlet?showpage=1&action=doShow&id="+id+"'>首页</a>");
		     if(showpage>1){
		    	 pagesv.append("<a href='hspcontextServlet?showpage="+(showpage-1)+"&action=doShow&id="+id+"'><<</a>"); 
		     }
		     int allpages=hc.getHspCommentPages(hcs);
		     //System.out.println(allpages);
		     int start=(showpage-1)/hc.pages*hc.pages+1;
			   int end=start+hc.pages-1;
		   if(end>allpages){
			   end=allpages;
		   }
		     for(int i=start;i<=end;i++){
		    	 if(showpage==i){
		    		 pagesv.append("<a href='hspcontextServlet?showpage="+i+"&action=doShow&id="+id+"'>&nbsp["+i+"]&nbsp</a>");
		    	 }
		    	 else{
		    		 pagesv.append("<a href='hspcontextServlet?showpage="+i+"&action=doShow&id="+id+"'>&nbsp"+i+"&nbsp</a>"); 
		    	 }
		     }
		     
		     if(showpage<allpages){
		    	 pagesv.append("<a href='hspcontextServlet?showpage="+(showpage+1)+"&action=doShow&id="+id+"'>>></a>");  
		     }
		     pagesv.append("<a href='hspcontextServlet?showpage="+allpages+"&action=doShow&id="+id+"'>尾页</a>");
		ArrayList<TitleHspContext> th=td.getContext(id);
		request.setAttribute("hdsall", hds);
		request.setAttribute("ths", th);
		request.setAttribute("hcsds", hcsd);
		request.setAttribute("pages", pagesv);
		RequestDispatcher rd=request.getRequestDispatcher("hospital/showhspcontext.jsp");
	     rd.forward(request,response);
	}

}
