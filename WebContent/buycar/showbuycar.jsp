<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style>
/*
index layout
*/
article{
    width:100%;
    
}
article header{
    border: 1px solid #999;
    border-radius:10px;
    margin-top:-1px;
    padding-left:20px;
}
article figure{
    float: left;
    display: inline;
    text-align: center;
    margin:10px 20px;
    height:150px;
    overflow: hidden;
}
article figure img{
    width:100px;
    height:118px;
}
article figure figcaption{
    position: relative;
    bottom:40px;
    color:#00f;
    display:none;
}
article figure:hover figcaption{
    display:block;
}




.h{
margin:0 auto;
width:600px;
text-align:center;
border:1px solid #00F;

}
.a{
text-align:center;
 width:100px; height:200px; 
border:1px solid #00F;
}
.g{

text-align:center;
 width:800px; height:500px; 
border:1px solid #00F;



}

.t{
margin-bottom:10px;}
.u{
margin-right:200px;
float: right;
}
</style>
</head>
<body>
<h1 class="h">购物车列表</h1>

  <div class="r">
  <div class="u">
 <h2>欢迎您!${user.username}</h2> 
 <br>
 <br>
  <h2>个人信息</h2>
 <h3>
 <%-- <a href="UserServlet?action=doLook&id=${ user.id}">详细信息</a><br/><br>
  <a href="detail/alterpassword.jsp">修改密码</a><br/><br>
  <a href="UserServlet?action=domodify">上传头像</a><br/>
 </h3> --%>
 <a href="goodServlet?action=doShow">返回</a>
</div>
  
  <h3><a href="BuyCarServlet?action=doShow">购物车</a></h3>
  
  <div class="g">
<article>
<header>
 购物车列表
      </header>
        <c:forEach items="${buycar}" var="b">
   <figure>
         <%--   <a href="BookServlet?action=doLoad&id=${b.goodid }"> --%>
            	<img src="${b.goodpicture }">
           <!--  </a> -->
         <footer>
            	${b.goodcount } 
          </footer>
          <figcaption>
          <a href="buyCarServlet?action=doDel&id=${b.id}">删除</a>
                         单价:${b.goodprice}
           
         </figcaption>  
      </figure>
        </c:forEach>
     
        </article>
        <div class="t">
                    总价: ${totalmoneys}<br/>
                    <a href="order/addinputmessage.jsp">提交</a>
             </div>
        </div>
           
      ${pages }
  
  
  
  </div>

		
</body>
</html>