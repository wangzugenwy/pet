<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style>
body{
background-size:100%;
background: url('images/imgs/bookbj.jpg') 

}
.h{
margin:0 auto;
text-align:center;
width:600px;
margin-top:50px;
margin-left:150px;
background: url('images/imgs/zhanshi01.jpg') 
}
.j{float:right;
text-align:center;
margin-right: 70px;
height:500px;
width:300px;
/* border:1px solid #0FF; */
background: url('images/imgs/liuyan01.jpg') 
}
.y{
margin-left:10px;

}

</style>
</head>
<body>
<div class="y">
<!-- <image src="images/imgs/bt.jpg"><br>
<image src="images/imgs/js.jpg"><br> -->

</div>
<div class="j"><br><br>
<h2>加入购物车</h2>
<h3>评论栏</h3>
  <c:forEach items="${gcds}" var="c">
   ${c.date}<br/>
   ${c.username}: ${c.comment}<br/>
        </c:forEach>


</div>
<div class="h">

<div>
<img  src=${total.goodpicture} width=150px;height=200px;>
</div>
<br/>

   名称: ${total.goodname}<br/><br/><br/> 
数量: ${total.goodcount}<br/><br/><br/>
 价格: ${total.goodprice}<br/><br/><br/>
介绍:${total.goodintroduce}<br/><br/><br/>

</div>


</body>
</html>