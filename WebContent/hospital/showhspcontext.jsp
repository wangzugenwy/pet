<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>狗狗详询</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/hospital/header/showhspcontext.css" />

<script src="header/jquery-1.8.3.min.js"></script>
<script src="header/head.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/hospital/resources/style/main.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/hospital/resources/style/sinaFaceAndEffec.css" />
<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.0.min.js"></script> -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/hospital/resources/js/jquery-1.8.0.min.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/hospital/css/content.css">

<script type="text/javascript">
	var img_arr1 = [ "images/a.jpg", "images/a1.jpg", "images/a2.jpg" ];
	var fiedimg = document.getElementById("fiedimg");
	var i = 1;
	setInterval(function() {

		if (i < img_arr1.length) {
			fiedimg.style.src = "url(" + img_arr1[i] + ')';
			i++;
		} else {
			i = 0;
			fiedimg.style.src = "url(" + img_arr1[i] + ')';
		}
	}, 3000);
</script>
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


	<div class="formMiddleContent2">
		<fieldset class="fieldset">
			<legend class="legend">狗狗详询</legend>
			<div class="fieldsetImg">
				<img alt=""
					src="<%=request.getContextPath()%>/hospital/images/a1.jpg"
					class="fiedimg" id="fiedimg">
				<div class="imgTitle">我们是</div>
			</div>
			<div class="dash"></div>
			<div class="fieldsetContent">
				<div class="fieldsetContentImg">
					<c:forEach items="${hdsall }" var="p">
						<img alt="" src="${p.picture }">
					</c:forEach>
				</div>

				<div class="fullContent">
					<c:forEach items="${ths }" var="c">
						<a href="contextServlet?action=doShow">&nbsp;&nbsp;&nbsp;&nbsp;${c.context}</a>
					</c:forEach>

				</div>
				<div class="pingImg">
					<a href="pages/addcomment.jsp"><img
						src="<%=request.getContextPath()%>/hospital/images/bubble.png"></a>
				</div>
				<div class="neirong" style="overflow-y: auto;">
				<c:forEach items="${hcsds }" var="t">
				<div class = "neirongContent">${t.username}：&nbsp;${t.contexts}
             
             <a class = "gen" href="hsphuifuServlet?action=doShow&id=${ t.id}" onMouseMove="this.className='gen1'"
						onMouseOut="this.className='gen'">跟帖</a><br></div>
				
				</c:forEach>
				
				<div class = "page">${pages}</div>
				</div>
				<div class = "pinglunlan">评论栏 </div>
			</div>
		</fieldset>

	</div>



	<%-- <div class="main" >
		<div class="divmain">
			<div class="divinfo">
				<span><p class="divinfospanp"
						onMouseMove="this.className='divinfospanp1'"
						onMouseOut="this.className='divinfospanp'" align="left">主题：</p></span>
				<hr style="border: 1px dotted #E0E0E0;" />
				<span class="divinfospan"><img alt="" src="<%=request.getContextPath()%>/bar/images/info.png"></span>
			</div>
			
			 <div class="divcontent">
			
				<img alt="" src="<%=request.getContextPath()%>/bar/images/s.png">
					<em>发表于</em>
				
				<hr style="border: 1px dotted #E0E0E0;" />
				<c:forEach items="${hdsall }" var="p">
				 <div class="divimg"> 
				 
					<img alt="" src="${p.picture }" class="img"
						onMouseMove="this.className='img1'"
						onMouseOut="this.className='img'">
						
				 </div></c:forEach>
				<c:forEach items="${ths }" var="c">
				<div class="content"> 
				
					<p class="content_p">&nbsp;<a href="contextServlet?action=doShow">&nbsp;&nbsp;&nbsp;&nbsp;${c.context}</a></p>
				</div> 
					</c:forEach>
				<div class="divcontentaimg">
				 <a href="showbarpinglun.jsp"><img alt="" src="<%=request.getContextPath()%>/contexts/images/bubble.png" class="acontentimg"></a> 
			</div>
			</div>
			
		</div>

</div>
<c:forEach items="${hcsds }" var="t">
<div class = "divvisitor">

			<div class="divvisitorinfo">
				<span><p class="divvisitorinfop"
						onMouseMove="this.className='divvisitorinfop1'"
						onMouseOut="this.className='divvisitorinfop'">${t.username}：</p></span>
				<hr style="border: 1px dotted #E0E0E0;" />
				<span class="divinfospan"><img alt="" src="<%=request.getContextPath()%>/contexts/images/info.png"></span>
			</div>
			
			
			<div class="divcontent">
			
				<img alt="" src="<%=request.getContextPath()%>/contexts/images/s.png">
					<em><a href="hsphuifuServlet?action=doShow&id=${ t.id}">跟帖</a></em>
				
				<hr style="border: 1px dotted #E0E0E0;" />
				<p class = "divvisitorp">${t.contexts}</p>
		</div>
		
		
	</div>
	</c:forEach>
 --%>




	<!-- <a href="titleServlet?action=doShow">首页</a><a href="">宠物吧</a><a href="goodServlet?action=doShow">买卖天下</a><a href="titleshspServlet?action=loadMore">宠物健康</a>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/> -->

	<%-- <c:forEach items="${hdsall }" var="p">
  
             <a href="contextServlet?action=doShow">${c.context}</a><br/><br/><br/><br/>
             
             <img src="${p.picture }">
           
        </c:forEach>
        <br/><br/>
 <c:forEach items="${ths }" var="c">
  
             ${c.context}<br/><br/><br/>
             
             
           
        </c:forEach>
        <br/><br/><br/>
        <!-- <a href="pages/addcomment.jsp">加入评论</a>
 -->        
      <c:forEach items="${hcsds }" var="t">
  
           ${t.username}:<br/>
           ${t.contexts}
             
             <a href="hsphuifuServlet?action=doShow&id=${ t.id}">跟帖</a>
           
        </c:forEach> --%>
	<br>
	<%--  <center>${pages}</center> --%>


	<%-- 
 
 <form action="hspcontextServlet?action=doAdd" method="post" name = "Message">
		
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
		</center>
	</form> --%>


	<!--  <form action="hspcontextServlet?action=doAdd" method="post">
 <textarea rows="40" cols="30" name="comment">
 
 
 
 </textarea>
 <input type="submit" value="发表">
 </form> -->
</body>
</html>