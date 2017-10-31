<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./header/head2.css">
</head>
<body>
<center><h1>群成员</h1></center>

<div class="b-main">
<c:forEach items="${bas }" var="t">
		<div class="b-list" id="list">
			<ul>
				<li class="clearfix"><a href="barcontextServlet?action=doShowqunzhucomment&id=${qunzhuid}" class="b-list-img"><img
						src=${t.picture} width="200" height="135"></a>
					<div class="b-list-txt">
						<h5>
							<a href="#">${t.name }</a>
						</h5>
						<p>
							<%-- <c:forEach items="${title }" var="t">
								<a href="contextServlet?action=doShow&id=${t.id }">${t.title}</a>
							</c:forEach> --%>
						</p>
						<div class="b-list-tag">

							<a href="barcontextServlet?action=doShowqunzhucomment&id=${qunzhuid}">查看群消息 </a> <a href="#"></a> <a
								href="barcontextServlet?action=doAdddqunzhu">加入该群</a>
						</div>
					</div></li>
			</ul>
		</div>
		</c:forEach>
	</div>







 <%-- <c:forEach items="${bas }" var="t">
           
           ${t.name }   <a href="barcontextServlet?action=doShow&id=${t.id }"><img src=${t.picture}></a><br/><br/><br/><br/>
          
             
           <!-- <a href="barcontextServlet?action=doAdddqunzhu">加入该群</a> -->
        </c:forEach> --%>
       <%--  <a href="barcontextServlet?action=doShowqunzhucomment&id=${qunzhuid}">查看群消息</a> --%>
        <center>${pages }</center>
</body>
</html>