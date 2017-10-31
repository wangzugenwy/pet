package com.hws.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.hws.dao.CommentDao;
import com.hws.domain.Comment;
import com.hws.domain.User;
import com.hws.util.Dbutil;

/**
 * Servlet implementation class commentServlet
 */
@WebServlet("/commentServlet")
public class commentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public commentServlet() {
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
		if("doAdd".equals(action)){
			
			this.doAdd(request,response);
		}
if("doShowMore".equals(action)){
			
			this.doShowMore(request,response);
		}
	}
    int count=0;
	private void doShowMore(HttpServletRequest request, HttpServletResponse response) throws IOException {
       CommentDao cm=new CommentDao();
       HttpSession session=request.getSession();
   
		int id=(Integer)session.getAttribute("titleid");
		
		count+=3;
	
		 ArrayList<Comment> nexts=new ArrayList<Comment>();
		 
	   if(!cm.getCommentNext(id, count).isEmpty()){
	      nexts=cm.getCommentNext(id, count);
	      System.out.println(count);
	      ObjectMapper mapper =new ObjectMapper();
		/*	String jsonStr=null;*/
		/*for(int i=0;i<nexts.size();i++){
		
		 jsonStr=mapper.writeValueAsString(nexts.get(i));
		 response.setContentType("text/javascript;charset=utf-8");
		 response.getWriter().print(jsonStr);
		 System.out.println(nexts.get(i).toString());
		}*/
			
		
		


	response.setContentType("text/javascript;charset=utf-8");
	String jsonStr=mapper.writeValueAsString(nexts);
	System.out.println(jsonStr);
	 response.getWriter().print(jsonStr);
	
	}
	else{
		
        count =0;
		response.setContentType("text/javascript;charset=utf-8");
		 StringBuilder result=new StringBuilder();
		 String s="到顶了";
		 result.append("{").append("\"content\":\""+ s +"\"").append("}");
		 response.getWriter().print(result.toString());
		
	}	 
			
    
     
		 
		 
	
	}
	private void doAdd(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String comment=Dbutil.strTochinese(request.getParameter("comment"));
		HttpSession session=request.getSession();
		
		int id=(Integer)session.getAttribute("titleid");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();

	
			
		
		if(session.getAttribute("user")!=null){
			User u=(User)session.getAttribute("user");
			Comment com=new Comment(id, u.getUsername(), comment);
			CommentDao comd=new CommentDao();
			int result=comd.addcomment(com);
			if(result>0){
				
				out.print("<script type='text/javascript' language='java'>alert('评论成功');window.location.href='titleServlet?action=doShow2'</script>");	
				
				
			}
		}
		else{
			out.print("<script type='text/javascript' language='java'>alert('请您先登录，再评论');window.location.href='registerlogin/login.jsp'</script>");
		}
		
		
	}

}
