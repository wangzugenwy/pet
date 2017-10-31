package com.hws.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.hws.dao.BarCommentDao;
import com.hws.dao.BarPictureDao;
import com.hws.dao.BarPicturesDao;
import com.hws.dao.BarPresentpictureDao;
import com.hws.dao.CommentDao;
import com.hws.dao.ContextDao;
import com.hws.dao.EveryQunZhuDao;
import com.hws.dao.HspCommentDao;
import com.hws.dao.PictureDao;
import com.hws.dao.QunZhuCommentDao;
import com.hws.dao.QunZhuDao;
import com.hws.dao.TitleBarContextDao;
import com.hws.dao.TitleBarDao;
import com.hws.dao.UserDao;
import com.hws.domain.BarComment;
import com.hws.domain.BarPictures;
import com.hws.domain.BarPresentpicture;
import com.hws.domain.Comment;
import com.hws.domain.Context;
import com.hws.domain.EveryQunZhu;
import com.hws.domain.HspComment;
import com.hws.domain.JingPing;
import com.hws.domain.Picture;
import com.hws.domain.QunZhu;
import com.hws.domain.QunZhuComment;
import com.hws.domain.TitleBarContext;
import com.hws.domain.User;
import com.hws.util.Dbutil;

/**
 * Servlet implementation class barcontextServlet
 */

public class barcontextServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public barcontextServlet() {
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
		if("doShowpicture".equals(action)){
			this.doShowpicture(request,response);
		}
		if("doPresentimgtwo".equals(action)){
			this.doPresentimgtwo(request,response);
		}
		if("doShowpresentpicture".equals(action)){
			this.doShowpresentpicture(request,response);
		}
		if("doShowqunzhu".equals(action)){
			this.doShowqunzhu(request,response);
		}
		if("doAddeveryqunzhu".equals(action)){
			this.doAddeveryqunzhu(request,response);
		}
		if("doShowEveryqunzhu".equals(action)){
			this.doShowEveryqunzhu(request,response);
		}    
		if("doShowqunzhucomment".equals(action)){
			this.doShowqunzhucomment(request,response);
		}
		if("doAddqunzhucomment".equals(action)){
			System.out.println("dsafa");
			this.doAddqunzhucomment(request,response);
		}
		if("doAdd".equals(action)){
			this.doAdd(request, response);
		}
		if("doShowJingPing".equals(action)){
			this.doShowJingPing(request,response);
		}
	}
private void doShowJingPing(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	TitleBarContextDao td=new TitleBarContextDao();
	/*BarPictureDao pd=new BarPictureDao();
	BarCommentDao cm=new BarCommentDao();*/
	
	String type=Dbutil.strTochinese(request.getParameter("type"));
			
	//ArrayList<Picture> pie=pd.getPicture(id);
	ArrayList<JingPing> con=td.getContextJP(type);
	
	
	HttpSession session=request.getSession();
	//session.setAttribute("titleid", id);
	/*for(Title t:titles){
		System.out.println(t.getTitle());
	}*/
	/*StringBuffer pagesv=new StringBuffer();
	   
	   
	 
	   
	   pagesv.append("<a href='barcontextServlet?showpage=1&action=doShow&id="+id+"'>首页</a>");
	     if(showpage>1){
	    	 pagesv.append("<a href='barcontextServlet?showpage="+(showpage-1)+"&action=doShow&id="+id+"'>上一页</a>"); 
	     }
	     int allpages=cm.getBarCommentPages(cota);
	     //System.out.println(allpages);
	     int start=(showpage-1)/cm.pages*cm.pages+1;
		   int end=start+cm.pages-1;
	   if(end>allpages){
		   end=allpages;
	   }
	     for(int i=start;i<=end;i++){
	    	 if(showpage==i){
	    		 pagesv.append("<a href='barcontextServlet?showpage="+i+"&action=doShow&id="+id+"'>&nbsp["+i+"]&nbsp</a>");
	    	 }
	    	 else{
	    		 pagesv.append("<a href='barcontextServlet?showpage="+i+"&action=doShow&id="+id+"'>&nbsp"+i+"&nbsp</a>"); 
	    	 }
	     }
	     
	     if(showpage<allpages){
	    	 pagesv.append("<a href='barcontextServlet?showpage="+(showpage+1)+"&action=doShow&id="+id+"'>下一页</a>");  
	     }
	     pagesv.append("<a href='barcontextServlet?showpage="+allpages+"&action=doShow&id="+id+"'>尾页</a>");*/
	request.setAttribute("cons", con);
	/*request.setAttribute("pies",pie );
	request.setAttribute("cots",cot );
	request.setAttribute("pagesvs",pagesv );*/
	RequestDispatcher rd=request.getRequestDispatcher("bar/showbarcontextJP.jsp");
     rd.forward(request,response);
		
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
			BarComment com=new BarComment(id, u.getUsername(), comment);
			BarCommentDao comd=new BarCommentDao();
			int result=comd.addcomment(com);
			if(result>0){
				
				out.print("<script type='text/javascript' language='java'>alert('评论成功');window.location.href='titlesbarServlet?action=doShow'</script>");	
				
				
			}
		}
		else{
			out.print("<script type='text/javascript' language='java'>alert('请您先登录，再评论');window.location.href='registerlogin/login.jsp'</script>");
		}
		
		
		
	}

	private void doAddqunzhucomment(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session=request.getSession();
		User u=(User)session.getAttribute("user");
		int id=Integer.parseInt(request.getParameter("id"));
		//System.out.println(id);
		String comment=Dbutil.strTochinese(request.getParameter("comment"));
		QunZhuComment q=new QunZhuComment();
		q.setComment(comment);
		q.setName(u.getUsername());
		q.setPicture(u.getPicture().replaceAll("\\\\", "\\\\\\\\"));
		q.setQunzhuid(id);
		QunZhuCommentDao qd=new QunZhuCommentDao();
		qd.addcomment(q);
		 response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
	
		out.print("<script type='text/javascript' language='java'>alert('发表成功!');window.location.href='barcontextServlet?action=doShowqunzhucomment&id="+id+"'</script>");
		
	}

	private void doShowqunzhucomment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		QunZhuCommentDao q=new QunZhuCommentDao();
		ArrayList<QunZhuComment> c=q.getComment(id);
		request.setAttribute("cs", c);
		 RequestDispatcher rd=request.getRequestDispatcher("bar/showqunzhucomment.jsp");
	     rd.forward(request,response);
		
	}

	private void doShowEveryqunzhu(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int showpage=1;
		if(request.getParameter("showpage")!=null){
			showpage=Integer.parseInt(request.getParameter("showpage"));
		}
		int id=Integer.parseInt(request.getParameter("id"));
		HttpSession session=request.getSession();
		
		session.setAttribute("qunzhuid", id);//保存qunzhuid,在showeveryqunzhu.jsp哪里用得到（显示交流时要传qunzhuid）
		User u=(User)session.getAttribute("user");
		EveryQunZhuDao e=new EveryQunZhuDao();
		ArrayList<EveryQunZhu>a=e.getQunZhu(id);
		int flag=1;
		for(EveryQunZhu eu:a){
			System.out.println(eu.getName());
			if(eu.getName().equals(u.getUsername())){
				flag=0;
			}
				
		}
		
		if(u!=null&&flag==0){
		EveryQunZhuDao qd=new EveryQunZhuDao();
		ArrayList<EveryQunZhu> b=qd.getQunZhu(id);
		int allpages=qd.getqunzhuPages(b);
		//ArrayList<BarPresentpicture> ba=ud.getBarPresentpictureBypage(b, showpage);
		 StringBuffer pagesv=new StringBuffer();
		   
		   
		 
		   
		   pagesv.append("<a href='barcontextServlet?showpage=1&action=doShowEveryqunzhu&id="+id+"'>首页</a>");
		     if(showpage>1){
		    	 pagesv.append("<a href='barcontextServlet?showpage="+(showpage-1)+"&action=doShowEveryqunzhu&id="+id+"'>上一页</a>"); 
		     }
		     
		   int start=(showpage-1)/qd.pages*qd.pages+1;
		   int end=start+qd.pages-1;
		   if(end>allpages){
			   end=allpages;
		   }
		     for(int i=start;i<=end;i++){
		    	 if(showpage==i){
		    		 pagesv.append("<a href='barcontextServlet?showpage="+i+"&action=doShowEveryqunzhu&id="+id+"'>&nbsp["+i+"]&nbsp</a>");
		    	 }
		    	 else{
		    		 pagesv.append("<a href='barcontextServlet?showpage="+i+"&action=doShowEveryqunzhu&id="+id+"'>&nbsp"+i+"&nbsp</a>"); 
		    	 }
		     }
		     
		     if(showpage<allpages){
		    	 pagesv.append("<a href='barcontextServlet?showpage="+(showpage+1)+"&action=doShowEveryqunzhu&id="+id+"'>下一页</a>");  
		     }
		    /* int totalmoney=0;
		    ArrayList<Order> os=orderdao.getorderCar();
		    for(Order b:os){
		    	totalmoney+=(b.getGoodprice()*b.getGoodcount());
		    }*/
		    
		   /*  for(Book u:total){
				 System.out.println(u.getAge());
			 }*/
		    
		     pagesv.append("<a href='barcontextServlet?showpage="+allpages+"&action=doShowEveryqunzhu&id="+id+"'>尾页</a>");
		     request.setAttribute("pages",pagesv);
		     request.setAttribute("bas", b);
		     RequestDispatcher rd=request.getRequestDispatcher("bar/showeveryqunzhu.jsp");
		     rd.forward(request,response);
		
	}
		
		else{
			 response.setContentType("text/html;charset=utf-8");
				PrintWriter out=response.getWriter();
				
			
				out.print("<script type='text/javascript' language='java'>alert('请先登录或者您没有加入此群!');window.location.href='barcontextServlet?action=doShowqunzhu'</script>");
			
		}
	}

	private void doAddeveryqunzhu(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session=request.getSession();
		User u=(User)session.getAttribute("user");
		//System.out.println("dsafdsf");
		if(u!=null){
			
			int qunzhuid=Integer.parseInt(request.getParameter("qunzhuid"));
			EveryQunZhu e=new EveryQunZhu();
			e.setName(u.getUsername());
			
			e.setPicture(u.getPicture().replaceAll("\\\\", "\\\\\\\\"));
			e.setQunzhuid(qunzhuid);
			
			EveryQunZhuDao ed=new EveryQunZhuDao();
			ArrayList<EveryQunZhu> b=ed.getQunZhu(qunzhuid);
			int flag=1;
			for(EveryQunZhu c:b){
				if(c.getName().equals(e.getName())){
					 response.setContentType("text/html;charset=utf-8");
						PrintWriter out=response.getWriter();
						
						flag=0;
						out.print("<script type='text/javascript' language='java'>alert('您已加入该群!');window.location.href='barcontextServlet?action=doShowqunzhu'</script>");
				}
			}
			if(flag==1){
			ed.addEvreyqunzhu(e);
			
			 response.setContentType("text/html;charset=utf-8");
				PrintWriter out=response.getWriter();
				QunZhuDao q=new QunZhuDao();
				q.modifycount(qunzhuid);
			
				out.print("<script type='text/javascript' language='java'>alert('加入成功!');window.location.href='barcontextServlet?action=doShowqunzhu'</script>");
			
			
			
			}
		}
		else{
			 response.setContentType("text/html;charset=utf-8");
				PrintWriter out=response.getWriter();
				
			
				out.print("<script type='text/javascript' language='java'>alert('请先登录!');window.location.href='barcontextServlet?action=doShowqunzhu'</script>");
		}
		
	}

	private void doShowqunzhu(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int showpage=1;
		if(request.getParameter("showpage")!=null){
			showpage=Integer.parseInt(request.getParameter("showpage"));
		}
		QunZhuDao qd=new QunZhuDao();
		ArrayList<QunZhu> b=qd.getQunZhu();
		int allpages=qd.getqunzhuPages(b);
		//ArrayList<BarPresentpicture> ba=ud.getBarPresentpictureBypage(b, showpage);
		 StringBuffer pagesv=new StringBuffer();
		   
		   
		 
		   
		   pagesv.append("<a href='barcontextServlet?showpage=1&action=doShowqunzhu'>首页</a>");
		     if(showpage>1){
		    	 pagesv.append("<a href='barcontextServlet?showpage="+(showpage-1)+"&action=doShowqunzhu'>上一页</a>"); 
		     }
		     
		   int start=(showpage-1)/qd.pages*qd.pages+1;
		   int end=start+qd.pages-1;
		   if(end>allpages){
			   end=allpages;
		   }
		     for(int i=start;i<=end;i++){
		    	 if(showpage==i){
		    		 pagesv.append("<a href='barcontextServlet?showpage="+i+"&action=doShowqunzhu'>&nbsp["+i+"]&nbsp</a>");
		    	 }
		    	 else{
		    		 pagesv.append("<a href='barcontextServlet?showpage="+i+"&action=doShowqunzhu'>&nbsp"+i+"&nbsp</a>"); 
		    	 }
		     }
		     
		     if(showpage<allpages){
		    	 pagesv.append("<a href='barcontextServlet?showpage="+(showpage+1)+"&action=doShowqunzhu'>下一页</a>");  
		     }
		    /* int totalmoney=0;
		    ArrayList<Order> os=orderdao.getorderCar();
		    for(Order b:os){
		    	totalmoney+=(b.getGoodprice()*b.getGoodcount());
		    }*/
		    
		   /*  for(Book u:total){
				 System.out.println(u.getAge());
			 }*/
		    
		     pagesv.append("<a href='barcontextServlet?showpage="+allpages+"&action=doShowqunzhu'>尾页</a>");
		     request.setAttribute("pages",pagesv);
		     request.setAttribute("bas", b);
		     RequestDispatcher rd=request.getRequestDispatcher("bar/showqunzhu.jsp");
		     rd.forward(request,response);
		
	}

	private void doShowpresentpicture(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int showpage=1;
		if(request.getParameter("showpage")!=null){
			showpage=Integer.parseInt(request.getParameter("showpage"));
		}
		BarPresentpictureDao ud=new BarPresentpictureDao();
		ArrayList<BarPresentpicture> b=ud.getPicture();
		int allpages=ud.getBarPages(b);
		ArrayList<BarPresentpicture> ba=ud.getBarPresentpictureBypage(b, showpage);
		 StringBuffer pagesv=new StringBuffer();
		   
		   
		 
		   
		   pagesv.append("<a href='barcontextServlet?showpage=1&action=doShowpresentpicture'>首页</a>");
		     if(showpage>1){
		    	 pagesv.append("<a href='barcontextServlet?showpage="+(showpage-1)+"&action=doShowpresentpicture'>上一页</a>"); 
		     }
		     
		   int start=(showpage-1)/ud.pages*ud.pages+1;
		   int end=start+ud.pages-1;
		   if(end>allpages){
			   end=allpages;
		   }
		     for(int i=start;i<=end;i++){
		    	 if(showpage==i){
		    		 pagesv.append("<a href='barcontextServlet?showpage="+i+"&action=doShowpresentpicture'>&nbsp["+i+"]&nbsp</a>");
		    	 }
		    	 else{
		    		 pagesv.append("<a href='barcontextServlet?showpage="+i+"&action=doShowpresentpicture'>&nbsp"+i+"&nbsp</a>"); 
		    	 }
		     }
		     
		     if(showpage<allpages){
		    	 pagesv.append("<a href='barcontextServlet?showpage="+(showpage+1)+"&action=doShowpresentpicture'>下一页</a>");  
		     }
		    /* int totalmoney=0;
		    ArrayList<Order> os=orderdao.getorderCar();
		    for(Order b:os){
		    	totalmoney+=(b.getGoodprice()*b.getGoodcount());
		    }*/
		    
		   /*  for(Book u:total){
				 System.out.println(u.getAge());
			 }*/
		    
		     pagesv.append("<a href='barcontextServlet?showpage="+allpages+"&action=doShowpresentpicture'>尾页</a>");
		     request.setAttribute("pages",pagesv);
		     request.setAttribute("bas", ba);
		     RequestDispatcher rd=request.getRequestDispatcher("bar/showpresentpicture.jsp");
		     rd.forward(request,response);

	}

	private void doPresentimgtwo(HttpServletRequest request, HttpServletResponse response) throws IOException, IllegalStateException, ServletException {
		HttpSession session=request.getSession();
		User u=(User)session.getAttribute("user");
		request.setCharacterEncoding("UTF-8");
		 Part part=request.getPart("file");
		 //System.out.println(part.getName());
		   saveUpload(part);
		   String fileName = getFileName(part);
		   
		   
		String userpictures="images\\\\"+fileName;
		
		//Book b=new Book(bookname, bookcount, bookprice, bookintroduce, bookpictures);
		
		
		
		//u.setPicture(userpictures);
		
		BarPresentpicture b=new BarPresentpicture();
		b.setPicture(userpictures);
		b.setUsername(u.getUsername());
		BarPresentpictureDao ud=new BarPresentpictureDao();
		int result=ud.addpicture(b);
		if(result>0){
		 response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			
			
			out.print("<script type='text/javascript' language='java'>alert('上传成功!');window.location.href='barcontextServlet?action=doShowpresentpicture'</script>");
		}
		
	}
	private void saveUpload(Part part) {
		String fileName = getFileName(part);
		//fileName = "iotek_" + System.nanoTime() + "_" + fileName;
	
		/*ServletContext cxt = getServletContext();
		String realPath = cxt.getRealPath("/");*/
		//String realPath="F:/iotext/新建文件夹/Shopping";
		File file = new File("F:/iotext/新建文件夹/pet/WebContent/images");
		//System.out.println(realPath);
		if(!file.exists()){
			file.mkdir();
		}
		File upFile = new File(file, fileName);
		FileOutputStream fos = null;
		InputStream is = null;
		byte[] buf = new byte[1024]; 
		int flag = -1;
		try {
			fos = new FileOutputStream(upFile);
			is = part.getInputStream();
			while((flag = is.read(buf, 0, 1024)) != -1){
				fos.write(buf, 0, flag);
			}
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(fos != null){
				try {
					fos.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(is != null){
				try {
					is.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
    
		
	}

	private String getFileName(Part part) {
		String header = part.getHeader("content-disposition");
		String[] arr = header.split("filename=");
		return arr[arr.length - 1].replace("\"", "");

	}
	//根据类型查找图片（相册那里）
	private void doShowpicture(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String kind=Dbutil.strTochinese(request.getParameter("kind"));
		System.out.println(kind);
		BarPicturesDao bd=new BarPicturesDao();
		ArrayList<BarPictures> bs=bd.getPicture(kind);
		for(BarPictures b:bs){
			System.out.println(b.getId());
		}
		request.setAttribute("pies", bs);
		RequestDispatcher rd=request.getRequestDispatcher("bar/showbarpictureall.jsp");
	     rd.forward(request,response);
		
	}

	private void doShow(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TitleBarContextDao td=new TitleBarContextDao();
		BarPictureDao pd=new BarPictureDao();
		BarCommentDao cm=new BarCommentDao();
		int showpage=1;
		if(request.getParameter("showpage")!=null){
			showpage=Integer.parseInt(request.getParameter("showpage"));
		}
		int id=Integer.parseInt(request.getParameter("id"));
		ArrayList<Picture> pie=pd.getPicture(id);
		ArrayList<TitleBarContext> con=td.getContext(id);
		ArrayList<BarComment> cota=cm.getComment(id);
		ArrayList<BarComment> cot=cm.getCommentBypage(cota, showpage);
		
		
		HttpSession session=request.getSession();
		session.setAttribute("titleid", id);
		/*for(Title t:titles){
			System.out.println(t.getTitle());
		}*/
		StringBuffer pagesv=new StringBuffer();
		   
		   
		 
		   
		   pagesv.append("<a href='barcontextServlet?showpage=1&action=doShow&id="+id+"'>首页</a>");
		     if(showpage>1){
		    	 pagesv.append("<a href='barcontextServlet?showpage="+(showpage-1)+"&action=doShow&id="+id+"'>上一页</a>"); 
		     }
		     int allpages=cm.getBarCommentPages(cota);
		     //System.out.println(allpages);
		     int start=(showpage-1)/cm.pages*cm.pages+1;
			   int end=start+cm.pages-1;
		   if(end>allpages){
			   end=allpages;
		   }
		     for(int i=start;i<=end;i++){
		    	 if(showpage==i){
		    		 pagesv.append("<a href='barcontextServlet?showpage="+i+"&action=doShow&id="+id+"'>&nbsp["+i+"]&nbsp</a>");
		    	 }
		    	 else{
		    		 pagesv.append("<a href='barcontextServlet?showpage="+i+"&action=doShow&id="+id+"'>&nbsp"+i+"&nbsp</a>"); 
		    	 }
		     }
		     
		     if(showpage<allpages){
		    	 pagesv.append("<a href='barcontextServlet?showpage="+(showpage+1)+"&action=doShow&id="+id+"'>下一页</a>");  
		     }
		     pagesv.append("<a href='barcontextServlet?showpage="+allpages+"&action=doShow&id="+id+"'>尾页</a>");
		TitleBarDao tb=new TitleBarDao();
		request.setAttribute("title", tb.getTtileById(id));
		request.setAttribute("cons", con);
		request.setAttribute("pies",pie );
		request.setAttribute("cots",cot );
		request.setAttribute("pagesvs",pagesv );
		RequestDispatcher rd=request.getRequestDispatcher("bar/showbarcontext.jsp");
	     rd.forward(request,response);
		
		
	}

}
