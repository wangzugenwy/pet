<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>回复</title>
<link rel="stylesheet" href="header/head.css" />
<link rel="stylesheet" href="header/head1.css" />
<script src="header/jquery-1.8.3.min.js"></script>
<script src="header/head.js"></script>
<link  rel="stylesheet" href="<%=request.getContextPath()%>/hospital/resources/style/main.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/hospital/resources/style/sinaFaceAndEffec.css" />
<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.0.min.js"></script> -->
<script type="text/javascript" src="<%=request.getContextPath()%>/hospital/resources/js/jquery-1.8.0.min.js"></script>


<link  rel="stylesheet" href="header/4.css" />
<script src="header/jquery-1.8.3.min.js"></script>
<script src="header/head.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/hospital/resources/js/main.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/hospital/resources/js/sinaFaceAndEffec.js"></script>
	<script type="text/javascript">
		// 绑定表情
		$('.face-icon').SinaEmotion($('.text'));
		// 测试本地解析
		function out() {
			var inputText = $('.text').val();
			$('#info-show ul').append(reply(AnalyticEmotion(inputText)));
		}
		
		var html;
		function reply(content){
			html  = '<li>';
			html += '<div class="head-face">';
			html += '<img src="images/1.jpg" / >';
			html += '</div>';
			html += '<div class="reply-cont">';
			html += '<p class="username">小小红色飞机</p>';
			html += '<p class="comment-body">'+content+'</p>';
			html += '<p class="comment-footer">2016年10月5日　回复　点赞54　转发12</p>';
			html += '</div>';
			html += '</li>';
			return html;
		}
	</script>
</head>
<body>
<div class = "search_logo" style = "background-image: url('images/w.png');background-repeat: no-repeat;">
			
			<!-- <a style = "color:#7B68EE;" href="registerlogin/login.jsp">登录</a> 
			<a style = "color:#7B68EE;size:20px;">/</a>
			<a style = "color:#7B68EE;" href="registerlogin/register.jsp">注册</a> -->
		</div>
	<div class="find_nav">
		<div class="find_nav_left">
			<div class="find_nav_list">
				<ul>
					<li class="find_nav_cur"><a href="titleServlet?action=doShow">首页</a></li>
					<li><a href="titlesbarServlet?action=doShow">宠物吧</a></li>
					<li><a href="goodServlet?action=doShow">买卖天下</a></li>
					<li><a href="titleshspServlet?action=loadMore">宠物健康</a></li>
				</ul>
				
			</div>
		</div>
		

	</div>

 <c:forEach items="${huifu }" var="h">
<div class="main">

		<div class="feng" onMouseMove="this.className='feng1'"
		onMouseOut="this.className='feng'">
		<p class = "p1">${h.username }</p>
		<p class = "p2">${h.comment }</p>
		<p class = "p3">${h.time }</p>
		</div>
		
	</div>
</c:forEach>

<!-- <a href="titleServlet?action=doShow">首页</a><a href="titlesbarServlet?action=doShow">宠物吧</a><a href="goodServlet?action=doShow">买卖天下</a><a href="">医疗救助</a> -->
  <%-- <c:forEach items="${huifu }" var="h">
  
       ${h.username }: ${h.comment }<br/>
  
      ${h.time }
        </c:forEach> --%>
  <br/>
  <center>${pages }</center>
    <center>

  <form action="HuFuServlet?action=doAdd&id=${barcommentid }" method="post" name = "Message">
		
		<div id="content" style="width: 700px; height: auto;">
			<div class="wrap">
				<div class="comment">
					<div class="content">
						<div class="cont-box">
							<textarea class="text" placeholder="请输入..." name = "comment"></textarea>
						</div>
						<div class="tools-box">
							<div class="operator-box-btn"><span class="face-icon"  >☺</span><span class="img-icon">▧</span></div>
							<div class="submit-btn"><input type="submit" onClick="out()"value="提交评论" /></div>
						</div>
					</div>
				</div>
				<div id="info-show">
					<ul></ul>
				</div>
			</div>
		</div>
		
	</form>
  </center>
  
  
  
  <%-- <form action="HuFuServlet?action=doAdd&id=${barcommentid }" method="post">
  <textarea name="yourhuifu">
  </textarea>
  <input type="submit" value="提交">
  </form> --%>

</body>
</html>