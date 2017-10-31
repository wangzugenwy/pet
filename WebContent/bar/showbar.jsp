<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bar/css/showbar.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/bar/header//easyui.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/bar/header/icon.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/bar/header/demo.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/bar/header/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/bar/header/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/bar/header/easyui-lang-zh_CN.js"></script>


<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bar/header/toubu.css" />
<%-- <link rel="stylesheet"
	href="<%=request.getContextPath()%>/header/head1.css" /> --%>
<script src="./header/jquery-1.8.3.min.js"></script>
<script src="./header/head.js"></script>
<link href="<%=request.getContextPath()%>/bar/css/zzsc.css"
	rel="stylesheet" type="text/css" />
<title>宠物吧</title>
</head>
<body style="background-color: white;">
	<!-- <a href="titleServlet?action=doShow">显示</a> -->

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
				href='http://localhost:8080/pet/registerlogin/register.jsp'
				target="_self" class="middlefloatBtn">注册</a>
		</div>
	</div>

	<div class="find_nav">
		<div class="find_nav_left">
			<div class="find_nav_list">
				<ul>
					<li class="find_nav_cur"><a href="titleServlet?action=doShow">首页</a></li>
					<li><a href="titlesbarServlet?action=doShow"
						class="easyui-menubutton"
						data-options="menu:'#mm2',iconCls:'icon-help'"
						style="font-size: 30px; height: 60px;">宠物吧</a></li>
					<div id="mm2" style="width: 100px;">

						<div >
							<a
								href="#aa" >看帖</a>
						</div>
						<div>
							<a href="showbarvadio.jsp">视频</a>
						</div>
						<div>
							<a href="bar/showbarpicture.jsp">图片</a>
						</div>
						<div>
							<a href="barcontextServlet?action=doShowqunzhu">交流群</a>
						</div>
					</div>
					<li><a href="goodServlet?action=doShow">买卖天下</a></li>
					<li><a href="titleshspServlet?action=loadMore">宠物健康</a></li>
					<li><a href="about.jsp">关于我们</a></li>
				</ul>
			</div>
		</div>
	</div>




	<div class="fullmeasureOuterContent">

		<!-- <div class="easyui-calendar"
			style="width: 100px; height: 100px; position: absolute; margin-top: 80px; margin-left: 15px;"></div>

		<div class="easyui-calendar"
			style="width: 100px; height: 100px; position: absolute; margin-top: 230px; margin-left: 15px;"></div>

		<div class="easyui-calendar"
			style="width: 100px; height: 100px; position: absolute; margin-top: 380px; margin-left: 15px;"></div>
 -->
		<div class="fullmeasureOuterContentTitle">
			<div class="fullmeasureOuterContentTitle1">新闻资讯</div>
			<div class="fullmeasureOuterContentTitle2">NEW</div>
		</div>
		<div class="fullConten">
			<div class="fullCon">
				<div class="fullContent">
					<div class="fullContentTit">挑选纯种泰迪犬的一些实用技巧</div>
					<div class="fullContentTit1">对于现代人来说养一条狗狗已经不是什么高档消费了，特别是对于一些白领一族来说养一</div>
					<div class="fullContentTit2">条合适的狗狗是比较的容易的了！但是...</div>
				</div>
				<div class="fullContent1">
					<div class="fullContentTit">边境牧羊犬有几种颜色？！边境牧羊犬饲养技巧有哪些!?</div>
					<div class="fullContentTit1">现在饲养宠物狗已经成为了现在一类城市的办公一族的一种主要的休闲生活方式！而对于</div>
					<div class="fullContentTit2">一些饲养狗狗的人们来说养一只聪明的狗...</div>
				</div>
				<div class="fullContent2">
					<div class="fullContentTit">宠物医院特邀国内权威宠物皮肤病专家刘欣博士预约坐诊</div>
					<div class="fullContentTit1">第18届亚洲宠物展(简称亚宠展)在上海世博展览馆完美落幕。亚宠展自1997年成立以来，</div>
					<div class="fullContentTit2">伴随着中国宠物行业的飞速发展，已然成为宠物行业最具影响力的平台之一和宠物行业不容错</div>
				</div>

			</div>
			<div class="fullConImg">
				<img alt=""
					src="<%=request.getContextPath()%>/bar/images/xinwen.jpg">
				<div class="fullConImgTitle">狗狗皮肤病不能吃什么</div>
			</div>
		</div>
	</div>


	<div class="fullmeasureOuterContent1" id = "aa">
		<!-- <iframe marginwidth="0" marginheight="0"
			src="http://m.weather.com.cn/m/pn7/weather.htm" frameborder="0"
			width="100%" scrolling="no" height="20"
			allowtransparency="allowtransparency"></iframe> -->


		<div class="fullTi">宠物论坛</div>
		<div class="fullCont">
			<div class="fullCont1">
				<div class="fullConten">
					<div class="fullContenTitle">论宠之道</div>
					<div class="fullContenImg">
						<img alt=""
							src="<%=request.getContextPath()%>/bar/images/laugh.jpg" style="">
					</div>
				</div>
				<div class="fullConten1">
					<c:forEach items="${titlelczjs }" var="t">
						<div class="fullbendiCon">
							<a href="barcontextServlet?action=doShow&id=${t.id }"
								class="fullbendiCona">${t.title}</a>
						</div>
					</c:forEach>
				</div>



			</div>
			<div class="fullCont2">
				<div class="fullConten">
					<div class="fullContenTitle">宠迷之家</div>
					<div class="fullContenImg">
						<img alt=""
							src="<%=request.getContextPath()%>/bar/images/tuzi.jpeg">
					</div>
				</div>
				<div class="fullConten1">
					<c:forEach items="${titlecmjzs }" var="t">
						<div class="fullbendiCon">
							<a href="barcontextServlet?action=doShow&id=${t.id }"
								class="fullbendiCona">${t.title}</a>
						</div>
					</c:forEach>
				</div>
			</div>


			<div class="fullCont3">
				<div class="fullConten">
					<div class="fullContenTitle">发布活动</div>
					<div class="fullContenImg">
						<img alt=""
							src="<%=request.getContextPath()%>/bar/images/qinzhui.jpg">
					</div>
				</div>
				<div class="fullConten1">
					<c:forEach items="${titlefbhds }" var="t">
						<div class="fullbendiCon">
							<a href="barcontextServlet?action=doShow&id=${t.id }"
								class="fullbendiCona">${t.title}</a>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	
	
	<div class="aboutfoot">
		<div class="div_foot">
			<ul class="div_ul">
				<li class="div_li"><a href="#">首页</a></li>
				<li class="div_li"><a
					href="http://my.csdn.net/wangzugenwy">联系我们</a></li>
				<li class="div_li"><a href="#">关于我们</a></li>
				<li class="div_li"><a href="#">免责声明</a></li>
			</ul>
		</div>
	
	</div>
	</div>
</body>
</html>
<!-- 	<div class="search_logo"
		style="background-image: url('images/w.png');background-repeat: no-repeat;background-color: white;">
		<div>
			<a href="pages/findpassword.jsp"
				style="color: #7B68EE; text-align: left;">找回密码</a>
		</div>
		<a style="color: #7B68EE;" href="registerlogin/login.jsp">登录</a> <a
			style="color: #7B68EE; size: 20px;">/</a> <a style="color: #7B68EE;"
			href="registerlogin/register.jsp">注册</a>
	</div>
	
	<div class="find_nav" style="background-color: black;">
		<div class="find_nav_left">
			<div class="find_nav_list">
				<ul>
					<li class="find_nav_cur"><a href="titleServlet?action=doShow">首页</a></li>
					<li class="find_nav_cur"><a
						href="titlesbarServlet?action=doShow">宠物吧</a></li>
					<li class="find_nav_cur"><a href="goodServlet?action=doShow">买卖天下</a></li>
					<li class="find_nav_cur"><a
						href="titleshspServlet?action=loadMore">宠物健康</a></li>
				</ul>

			</div>
		</div>
	</div> -->



<!-- <div>

<a href="titleServlet?action=doShow">首页</a><a href="">宠物吧</a><a href="goodServlet?action=doShow">买卖天下</a>
<a href="titleshspServlet?action=loadMore">宠物健康</a>

<a href="registerlogin/register.jsp">注册</a><a href="registerlogin/login.jsp">登录</a>
<a href="pages/findpassword.jsp">找回密码</a>

</div> -->



<%-- 
<div class="easyui-calendar" style="width:180px;height:180px;"></div>



	 
	<div class="wrapper top-main clearfix" style="margin-left: 0px; ">
	<div class="main tab mt15">
		<!--切换图片-->
		<div class="slide">
			<ul id="bigSlideUl" class="slide-ul clearfix">
				<!--
				<li>
				<a  class="picimglink" href="#">
				<img width="230" height="300" src="images/1369383598982.jpg" alt="可爱的手机壁纸下载" />
				<span class="pic-txt">可爱的手机壁纸下载(11张)</span> </a></li>
			-->
				<li>
				
				<img width="230" height="300" src="<%=request.getContextPath()%>/bar/images/1.jpg" />
				<span class="pic-txt"> </span></li>
				<li>
				
				<img width="230" height="300" src="<%=request.getContextPath()%>/bar/images/2.jpg" />
				<span class="pic-txt"> </span></li>
				<li>
				
				<img width="230" height="300" src="<%=request.getContextPath()%>/bar/images/3.jpg" />
				<span class="pic-txt"> </span></li>
				<li>
				
				<img width="230" height="300" srch="<%=request.getContextPath()%>/bar/images/4.jpg" />
				<span class="pic-txt"> </span></li>
				<li>
				
				<img width="230" height="300" srch="<%=request.getContextPath()%>/bar/images/5.jpg" />
				<span class="pic-txt"> </span></li>
				<li>
				
				<img width="230" height="300" srch="<%=request.getContextPath()%>/bar/images/6.jpg" />
				<span class="pic-txt"> </span></li>
				<li>
				
				<img width="230" height="300" srch="<%=request.getContextPath()%>/bar/images/7.jpg" />
				<span class="pic-txt"> </span></li>
				<li>
				
				<img width="230" height="300" srch="<%=request.getContextPath()%>/bar/images/8.jpg" />
				<span class="pic-txt"> </span> </li>
				<li>
				
				<img width="230" height="300" srch="<%=request.getContextPath()%>/bar/images/9.jpg" />
				<span class="pic-txt"> </span></li>
				<li>
				
				<img width="230" height="300" srch="<%=request.getContextPath()%>/bar/images/10.jpg" />
				<span class="pic-txt"> </span> </li>
				<li>
				
				<img width="230" height="300" srch="<%=request.getContextPath()%>/bar/images/11.jpg" />
				<span class="pic-txt"> </span> </li>
				<li>
				
				<img width="230" height="300" srch="<%=request.getContextPath()%>/bar/images/12.jpg" />
				<span class="pic-txt"> </span> </li>
				<li>
				
				<img width="230" height="300" srch="<%=request.getContextPath()%>/bar/images/13.jpg" />
				<span class="pic-txt"> </span> </li>
				<li>
				
				<img width="230" height="300" srch="<%=request.getContextPath()%>/bar/images/14.jpg" />
				<span class="pic-txt"> </span> </li>
				<li>
				
				<img width="230" height="300" srch="<%=request.getContextPath()%>/bar/images/15.jpg" />
				<span class="pic-txt"> </span> </li>
				<li>
				
				<img width="230" height="300" srch="<%=request.getContextPath()%>/bar/images/16.jpg" />
				<span class="pic-txt"> </span> </li>
				<li>
				
				<img width="230" height="300" srch="<%=request.getContextPath()%>/bar/images/17.jpg" />
				<span class="pic-txt"> </span> </li>
				<li>
				
				<img width="230" height="300" srch="<%=request.getContextPath()%>/bar/images/18.jpg" />
				<span class="pic-txt"> </span> </li>
				<li>
				
				<img width="230" height="300" srch="<%=request.getContextPath()%>/bar/images/19.jpg" />
				<span class="pic-txt"> </span> </li>
				<li>
				
				<img width="230" height="300" srch="<%=request.getContextPath()%>/bar/images/20.jpg" />
				<span class="pic-txt"> </span> </li>
				<li>
				
				<img width="230" height="300" srch="<%=request.getContextPath()%>/bar/images/21.jpg" />
				<span class="pic-txt"> </span> </li>
				<li>
				
				<img width="230" height="300" srch="<%=request.getContextPath()%>/bar/images/22.jpg" />
				<span class="pic-txt"> </span> </li>
				<li>
				
				<img width="230" height="300" srch="<%=request.getContextPath()%>/bar/images/23.jpg" />
				<span class="pic-txt"> </span> </li>
				<li>
				
				<img width="230" height="300" srch="<%=request.getContextPath()%>/bar/images/24.jpg" />
				<span class="pic-txt"> </span> </li>
			</ul>
		</div>
		<!--slide 切换按钮-->
		<ul id="smallSlideUl" class="info-btn clearfix">
			<li class="info-cur" id="mypic0" sid="0"><span>1</span></li>
			<li   id="mypic1" sid="1"><span>2</span></li>
			<li  id="mypic2" sid="2"><span>3</span></li>
			<li  id="mypic3" sid="3"><span>4</span></li>
			<li  id="mypic4" sid="4"><span>5</span></li>
			<li  id="mypic5" sid="5"><span>6</span></li>
			<li  id="mypic6" sid="6"><span>7</span></li>
			<li  id="mypic7" sid="7"><span>8</span></li>
		</ul>
		<em class="tab-shadow"></em></div>

</div>
<script src="<%=request.getContextPath()%>/bar/js/jquery1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/bar/js/zzsc.js"></script>
<!-- 代码 结束 -->
<!-- 
</div> -->
		<!-- <img alt="" src="./image/2.jpg" style="height: 300px; width: 900px;"> -->
	
	
	
	
	
	
	
	
	
	
	<div class="uldiv" style="margin-top:10px;margin-left: 225px; ">
		<ul class="ul">
			<li class="uldivli" onMouseMove="this.className='uldivli1'"
				onMouseOut="this.className='uldivli'"><a>看帖</a></li>
			<li class="uldivli" onMouseMove="this.className='uldivli1'"
				onMouseOut="this.className='uldivli'"><a
				href="bar/showbarpicture.jsp">图片</a></li>
			<li class="uldivli" onMouseMove="this.className='uldivli1'"
				onMouseOut="this.className='uldivli'"><a href="">视频</a></li>
			<li class="uldivli" onMouseMove="this.className='uldivli1'"
				onMouseOut="this.className='uldivli'"><a href="">精品</a></li>
			<li class="uldivli" onMouseMove="this.className='uldivli1'"
				onMouseOut="this.className='uldivli'"><a
				href="barcontextServlet?action=doShowqunzhu">交流群</a></li>

		</ul>
	</div>

	<div class="b-main">
		<div class="b-list" onMouseMove="this.className='b-list1'"
			onMouseOut="this.className='b-list'">
			<div class="b-list-h3">
				<h3 class="h3">论宠之道</h3>
				<img alt="" src="<%=request.getContextPath()%>/bar/images/lunchong.jpg">
			</div>
		 <div class = "content">
		 <c:forEach items="${titlelczjs }" var="t">

								
							
			<p class="content-p" onMouseMove="this.className='content-p1'"
						onMouseOut="this.className='content-p'" ><a href="barcontextServlet?action=doShow&id=${t.id }">${t.title}</a></p>
		</c:forEach>
		</div>
		</div>
	</div>



	<div class="b-main1">
		<div class="b-list" onMouseMove="this.className='b-list1'"
			onMouseOut="this.className='b-list'">
			<div class="b-list-h3">
			
			
			
				<h3 class="h3">宠迷之家</h3>
				<img alt="" src="<%=request.getContextPath()%>/bar/images/lunchong1.jpg">
			</div>
		 <div class = "content">
		<c:forEach items="${titlecmjzs }" var="t">

								
							
			<p class="content-p" onMouseMove="this.className='content-p1'"
						onMouseOut="this.className='content-p'" ><a href="barcontextServlet?action=doShow&id=${t.id }">${t.title}</a></p>
		</c:forEach>
		</div>
		</div>
	</div>
	
	
	<div class="b-main2">
		<div class="b-list" onMouseMove="this.className='b-list1'"
			onMouseOut="this.className='b-list'">
			<div class="b-list-h3">			
				<h3 class="h3">发布活动</h3>
				<img alt="" src="<%=request.getContextPath()%>/bar/images/lunchong2.jpg">
			</div>
		 <div class = "content">
		<c:forEach items="${titlefbhds }" var="t">					
							
			<p class="content-p" onMouseMove="this.className='content-p1'"
						onMouseOut="this.className='content-p'" > <a href="barcontextServlet?action=doShow&id=${t.id }">${t.title}</a></p>
		</c:forEach>
		</div>
		</div>
	</div>
	
	
	
	
	<div class="foot" style="background-color: black;margin-top: 30px;">
		<div class="div_foot">
			<ul class="div_foot_ul">
				<li class="div_foot_ul_li"
					onMouseMove="this.className='div_foot_ul_li1'"
					onMouseOut="this.className='div_foot_ul_li'"><a href="titleServlet?action=doShow">首页</a></li>
				<li class="div_foot_ul_li"
					onMouseMove="this.className='div_foot_ul_li1'"
					onMouseOut="this.className='div_foot_ul_li'"><a href="http://my.csdn.net/wangzugenwy">联系我们</a></li>
				<li class="div_foot_ul_li"
					onMouseMove="this.className='div_foot_ul_li1'"
					onMouseOut="this.className='div_foot_ul_li'"><a href="#">关于我们</a></li>
				<li class="div_foot_ul_li"
					onMouseMove="this.className='div_foot_ul_li1'"
					onMouseOut="this.className='div_foot_ul_li'"><a href="#">免责声明</a></li>
			</ul>
		</div>

	</div> --%>
<%--  	<div class="b-main">
		<div class="b-list" id="list">
			<ul>
				<li class="clearfix"><a href="#" class="b-list-img"><img
						src="./image/a.jpg" width="200" height="135"></a>
					<div class="b-list-txt">
						<h5>
							<a href="#">论宠之道</a>
						</h5>
						<p>
							<c:forEach items="${titlelczjs }" var="t">

								<a href="barcontextServlet?action=doShow&id=${t.id }">${t.title}</a>
							</c:forEach>
						</p>
						<div class="b-list-tag">

							<a href="#" class="b-list-comment"> </a> <a href="#">狗狗养护</a> <a
								href="#">健康</a>
						</div>
					</div></li>
			</ul>
		</div>
	</div>

	<div class="b-main">
		<div class="b-list" id="list">
			<ul>
				<li class="clearfix"><a href="#" class="b-list-img"><img
						src="./image/a.jpg" width="200" height="135"></a>
					<div class="b-list-txt">
						<h5>
							<a href="#">宠迷之家</a>
						</h5>
						<p>
							<c:forEach items="${titlecmjzs }" var="t">

								<a href="barcontextServlet?action=doShow&id=${t.id }">${t.title}</a><br>
							</c:forEach>
						</p>
					<!-- 	<div class="b-list-tag">

							<a href="#" class="b-list-comment"> </a> <a href="#">狗狗养护</a> <a
								href="#">健康</a>
						</div> -->
					</div></li>
			</ul>
		</div>
	</div>


	<div class="b-main">
		<div class="b-list" id="list">
			<ul>
				<li class="clearfix"><a href="#" class="b-list-img"><img
						src="./image/a.jpg" width="200" height="135"></a>
					<div class="b-list-txt">
						<h5>
							<a href="#">发
							布活动</a>
						</h5>
						<p >
							<c:forEach items="${titlelczjs }" var="t">

								<a href="barcontextServlet?action=doShow&id=${t.id }">${t.title}</a>
							</c:forEach>
						</p>
						<div class="b-list-tag">

							<a href="#" class="b-list-comment"> </a> <a href="#">狗狗养护</a> <a
								href="#">健康</a>
						</div>
					</div></li>
			</ul>
		</div>
	</div>
 --%>




<%-- <div class="g">
<h1>论宠之道</h1>

        <c:forEach items="${titlelczjs }" var="t">
  
             <a href="barcontextServlet?action=doShow&id=${t.id }">${t.title}</a><br/><br/><br/><br/>
             
             
           
        </c:forEach>
     
        </article>
        </div>
        <h1>宠迷之家</h1>
        <c:forEach items="${titlecmjzs }" var="t">
           
             <a href="barcontextServlet?action=doShow&id=${t.id }">${t.title}</a><br/><br/><br/><br/>
             
             
           
        </c:forEach>
         <h1>发布活动</h1>
        <c:forEach items="${titlefbhds }" var="t">
          
             <a href="barcontextServlet?action=doShow&id=${t.id }">${t.title}</a><br/><br/><br/><br/>
             
             
           
        </c:forEach> --%>
<!-- <a href="bar/showbarpicture.jsp">图片</a> 
        <a href="">视频</a>
        <a href="">精品</a>
        <a href="barcontextServlet?action=doShowqunzhu">交流群</a> -->
