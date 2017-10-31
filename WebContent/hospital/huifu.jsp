<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="<%=request.getContextPath()%>/hospital/header/hufu.css" />
<!--<link rel="stylesheet" href="header/head1.css" /> -->
<script src="header/jquery-1.8.3.min.js"></script>
<script src="header/head.js"></script>
<link  rel="stylesheet" href="<%=request.getContextPath()%>/hospital/resources/style/main.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/hospital/resources/style/sinaFaceAndEffec.css" />
<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.0.min.js"></script> -->
<script type="text/javascript" src="<%=request.getContextPath()%>/hospital/resources/js/jquery-1.8.0.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/hospital/css/content.css">
</head>
<body onload="window.scrollTo(500,500)">

<div class="backimg">
		<a class="borderImg" hidefocus="true" href="#"></a>
		<div onclick="prefunction()"
			style="background-image: url('image/left.png'); position: absolute; top: 300px; left: 5px; z-index: 32; background-repeat: no-repeat; overflow: hidden; display: block;">
			<div>
				<a class="next" onclick="nextfunction()"
					style="background-image: url('iamge/right.png'); position: absolute; top: 300px; right: 5px; z-index: 32; background-repeat: no-repeat; overflow: hidden; display: block;"></a>
			</div>
		</div>




		<!-- <a class = "pre" onclick="prefunction()" style="background-image: url('image/left.png');position: absolute;top: 300px;left: 5px;z-index: 32;background-repeat: no-repeat;overflow: hidden; display: block;"></a> -->
	</div>

	<div id="corpTitle" class="corpTitle">
		<div id="primaryTitle">宠物大联盟</div>
		<div id="subTitle"></div>
	</div>


	<div class="formMiddleContent" tabStyle="0" style="">
		<div class="floatBtnBox">
			<a id="module471FlBtn"
				href='http://localhost:8080/pet/registerlogin/login.jsp'
				target="_self" class="middlefloatBtn">登录</a>
		</div>
	</div>
	<div class="formMiddleContent1" tabStyle="0">
		<div class="floatBtnBox1">
			<a id="module471FlBtn1"
				href='http://localhost:8080/pet/registerlogin/login.jsp'
				target="_self" class="middlefloatBtn">注册</a>
		</div>
	</div>

	<div class="find_nav">
		<div class="find_nav_left">
			<div class="find_nav_list">
				<ul>
					<li class="find_nav_cur"><a href="titleServlet?action=doShow">首页</a></li>
					<li><a href="titlesbarServlet?action=doShow">宠物吧</a></li>
					<li><a href="goodServlet?action=doShow">买卖天下</a></li>
					<li><a href="titleshspServlet?action=loadMore">宠物健康</a></li>
					<li><a href="about.jsp">关于我们</a></li>
				</ul>
			</div>
		</div>
	</div>













<!-- <div class = "search_logo" style = "background-image: url('images/w.png');background-repeat: no-repeat;background-color: white;">
			
			<!-- <a style = "color:#7B68EE;" href="registerlogin/login.jsp">登录</a>  
			<a style = "color:#7B68EE;size:20px;">/</a>
			<a style = "color:#7B68EE;" href="registerlogin/register.jsp">注册</a>
		</div>
	<div class="find_nav" style="background-color: black;">
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
 -->



<!-- <a href="titleServlet?action=doShow">首页</a><a href="titlesbarServlet?action=doShow">宠物吧</a><a href="goodServlet?action=doShow">买卖天下</a><a href="">医疗救助</a> -->
 <center><p style="margin-top: 30px;">${pages }</p></center> 
 
 <div class="main" style="margin-top: 40px;margin-left: 310px;">
 <c:forEach items="${huifu }" var="h">
 <div class = "divvisitor">

			<div class="divvisitorinfo">
				<span><p class="divvisitorinfop"
						onMouseMove="this.className='divvisitorinfop1'"
						onMouseOut="this.className='divvisitorinfop'">${h.username }：</p></span>
				<hr style="border: 1px dotted #E0E0E0;" />
				<span class="divinfospan"><img alt="" src="<%=request.getContextPath()%>/contexts/images/info.png"></span>
			</div>			
			<div class="divcontent">
			
				<img alt="" src="<%=request.getContextPath()%>/contexts/images/s.png">
					<em>评论于&nbsp;&nbsp;&nbsp;&nbsp;${h.time }</em>
				
				<hr style="border: 1px dotted #E0E0E0;" />
				<p class = "divvisitorp">${h.comment }</p>
		</div>
		
		
	</div>
	</c:forEach>
 </div>
 
 
  <%-- <c:forEach items="${huifu }" var="h">
  
       ${h.username }: ${h.comment }<br/>
  
      ${h.time }
        </c:forEach> --%>
  <br/>
  
 
  <%-- 添加您的回复:
  <form action="hsphuifuServlet?action=doAdd&id=${hspcommentid }" method="post">
  <textarea name="yourhuifu">
  </textarea>
  <input type="submit" value="提交">
  </form> --%>
  <center>
<div>
   <form action="hsphuifuServlet?action=doAdd&id=${hspcommentid }" method="post" name = "Message">
		
		<div id="content" style="width: 900px; height: auto;">
			<div class="wrap">
				<div class="comment" >
					<div class="content" style="margin-top: 2050px;">
						<div class="cont-box">
							<textarea class="text" placeholder="请输入..." name = "comment"></textarea>
						</div>
						<div class="tools-box">
							<div class="operator-box-btn"><span class="face-icon"  >☺</div>
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
	
	</div>
	</center>
	</body>
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
</html>