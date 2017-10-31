<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/head1.css" />
 <link rel="stylesheet" href="./header/head1.css" />
</head>
<body>
<center><h1>各个群组</h1></center>
<div class="b-main">
<c:forEach items="${bas }" var="t">
		<div class="b-list" id="list">
			<ul>
				<li class="clearfix"><a href="barcontextServlet?action=doShowEveryqunzhu&id=${t.id }" class="b-list-img"><img
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

							<a href="barcontextServlet?action=doAddeveryqunzhu&qunzhuid=${t.id }" class="b-list-comment"> </a> <a href="#">人数:</a> <a
								href="#">${t.count }</a>
						</div>
					</div></li>
			</ul>
		</div>
		</c:forEach>
	</div>


<div><center>${pages }</center></div>


 <%-- <c:forEach items="${bas }" var="t">
           
           ${t.name }   <a href="barcontextServlet?action=doShowEveryqunzhu&id=${t.id }"><img src=${t.picture}></a><br/><br/><br/><br/>
             人数:${t.count }
             
           <a href="barcontextServlet?action=doAddeveryqunzhu&qunzhuid=${t.id }">加入该群</a>
        </c:forEach> --%>
        
        
</body>
</html>