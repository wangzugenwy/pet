<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>图片展示</title>
<link rel="stylesheet" href="css/3.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/bar/css/showbarpicture.css">
<script src="js/showbarpicture.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script src="<%=request.getContextPath()%>/header/jquery-1.8.3.min.js"></script>
<script src="<%=request.getContextPath()%>/header/head.js"></script>
<script type="text/javascript">



$(".divmain dt").css({"background-color":"#3992d0"});

$(function(){
	$(".divmain dd").hide();
	$(".divmain dt").click(function(){
		$(".divmain dt").css({"background-color":"#3992d0"})
		$(this).css({"background-color": "#317eb4"});
		$(this).parent().find('dd').removeClass("menu_chioce");
		$(".divmain dt img").attr("src","images/select_xl01.png");
		$(this).parent().find('img').attr("src","images/select_xl.png");
		$(".menu_chioce").slideUp(); 
		$(this).parent().find('dd').slideToggle();
		$(this).parent().find('dd').addClass("menu_chioce");
	});
})


 var p=document.getElementsByTagName("iframe");
 
function show(n)
{
   p[0].src=n;
}    

 function open1(){
     one.style.display="block"
 }
 function dd1(){
     one.style.display="none";
 }

</script>
<script type="text/javascript">
 function load(){
	 var oInput = document.getElementById("strName");
	 document.getElementById("strName").style.backgroundColor="#317EB4"; 
	 }</script>

</head>
<body style="background-color: white;">

	<div class="backimg">
		<a id="borderImg" class="borderImg" hidefocus="true" href="#"></a>
		<div id="prefunction" onclick="prefunction(this)"
			style="background-image: url('images/left.png'); position: absolute; top: 350px; left: 25px; z-index: 32; background-repeat: no-repeat; overflow: hidden; display: block;rgba(0,0,0,0.1);">

			<div style="width: 90px; height: 90px;"></div>
		</div>
		<div id="nextfunction" onclick="nextfunction(this)"
			style="background-image: url('images/right.png'); position: absolute; top: 350px; left: 1250px; z-index: 32; background-repeat: no-repeat; overflow: hidden; display: block;rgba(0,0,0,0.1);">
			<div style="width: 90px; height: 90px;"></div>
		</div>

		<script type="text/javascript">
			var i = 1;
			function nextfunction() {

				var img_arr = [ "images/jiemian.jpg", "images/border.jpg" ];
				var borderImg = document.getElementById("borderImg");

				if (i < img_arr.length) {
					borderImg.style.backgroundImage = "url(" + img_arr[i] + ')';
					i++;

				} else {
					borderImg.style.backgroundImage = "url(" + img_arr[0] + ')';
					i = 1;
				}
			};

			function prefunction() {
				var borderImg = document.getElementById("borderImg");
				var img_arr = [ "images/jiemian.jpg", "images/border.jpg" ];
				var borderImg = document.getElementById("borderImg");

				if (i < img_arr.length) {
					borderImg.style.backgroundImage = "url(" + img_arr[i] + ')';
					i++;
				} else {
					borderImg.style.backgroundImage = "url(" + img_arr[0] + ')';
					i = 1;
				}
			};
		</script>

		<script type="text/javascript">
			var img_arr1 = [ "images/jiemian.jpg", "images/border.jpg" ];
			var borderImg = document.getElementById("borderImg");
			var i = 1;
			setInterval(function() {

				if (i < img_arr1.length) {
					borderImg.style.backgroundImage = "url(" + img_arr1[i]
							+ ')';
					i++;
				} else {
					i = 0;
					borderImg.style.backgroundImage = "url(" + img_arr1[i]
							+ ')';
				}
			}, 3000);
		</script>
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


					<li><a href="../titleServlet?action=doShow">宠物吧</a></li>

					<li><a href="../goodServlet?action=doShow">买卖天下</a></li>

					<li><a href="../titleshspServlet?action=loadMore">宠物健康</a></li>

					<li><a href="../about.jsp">关于我们</a></li>

				</ul>
			</div>
		</div>
	</div>





<!-- <div class="search_logo"
		style="background-image: url('images/w.png');position: fixed; background-repeat: no-repeat;">

		<a style="color: #7B68EE;" href="registerlogin/login.jsp">登录</a> <a
			style="color: #7B68EE; size: 20px;">/</a> <a style="color: #7B68EE;"
			href="registerlogin/register.jsp">注册</a>
	</div>

 -->
	<!-- <div class="find_nav" style=" position: fixed; background-color: black;">
		<div class="find_nav_left">
			<div class="find_nav_list">
				<ul>
					<li class="find_nav_cur"><a href="../titleServlet?action=doShow">首页</a></li>
					<li><a href="../titlesbarServlet?action=doShow">宠物吧</a></li>
					<li><a href="../goodServlet?action=doShow">买卖天下</a></li>
					<li><a href="../titleshspServlet?action=loadMore">宠物健康</a></li>
				</ul>

			</div>
		</div>
	</div> -->




	<div class="divmain">
		<div class="divline"></div>
		<dl class="system_log">
			<dt onClick="changeImage()">
				小狗的相册<img src="images/select_xl01.png">
			</dt>

			<dd onmouseover=show("1.html") onMouseOut="dd1()">哈气狗</dd>
			
				<!--  </dd> 
			<ul>
			<li><a href="../barcontextServlet?action=doShowpicture&kind=时尚小狗"><img
		src="../dogimages/1.jpg"></li>
			<li><a href="../barcontextServlet?action=doShowpicture&kind=迷惑的小狗"><img
		src="../dogimages/2.jpg"></a></li>
			<li><a href="../barcontextServlet?action=doShowpicture&kind=可爱的小狗"><img
		src="../dogimages/3.jpg"></a></li>
			</ul>
			<dd><a href="../barcontextServlet?action=doShowpicture&kind=时尚小狗"><img
		src="../dogimages/1.jpg"></a></dd>
			<dd><a href="../barcontextServlet?action=doShowpicture&kind=迷惑的小狗"><img
		src="../dogimages/2.jpg"></a></dd> -->
		</dl>

		<dl class="custom">
			<dt onClick="changeImage()">
				猫咪相册<img src="images/select_xl01.png">
			</dt>
			<dd onmouseover=show("2.html") onMouseOut="dd1()">小猫</dd>
		</dl>
		<dl class="channel">
			<dt onClick="changeImage()">
				其他<img src="images/select_xl01.png">
			</dt>
			<dd onmouseover=show("3.html") onMouseOut="dd1()">luotuo</dd>
		</dl>
		<dl class="app">
			<dt onClick="changeImage()">
				吧友天地<img src="images/select_xl01.png">
			</dt>
			<dd onmouseover=show("4.html") onMouseOut="dd1()">haouyou</dd>
		</dl>

		<dl class="cloud" id="cloud" onmouseover=show("quanbu.html") onMouseOut="dd1()">
			<dt>
				全部<img src="images/select_xl01.png">
			</dt>
			<dd class="first_dd">
				
			</dd>
		</dl>
		 <script type="text/javascript">
		   window.onload = function() {
			 document.getElementById('cloud').onmouseover();
			 document.getElementById('cloud').style.backgroundColor="#317EB4";
		   }

		</script>
	</div>
	<iframe class="iframesrc" src=#></iframe>
	<!-- 
 <h1>小狗的相册</h1>
	<a href="../barcontextServlet?action=doShowpicture&kind=时尚小狗&a=ko"><img
		src="../dogimages/1.jpg"></a>
	<a href="../barcontextServlet?action=doShowpicture&kind=迷惑的小狗"><img
		src="../dogimages/2.jpg"></a>
	<a href="../barcontextServlet?action=doShowpicture&kind=可爱的小狗"><img
		src="../dogimages/3.jpg"></a>
	<h1>猫咪的相册</h1>
	<a href="../barcontextServlet?action=doShowpicture&kind=萌萌的"><img
		src="../catimages/1.jpg"></a>
	<a href="../barcontextServlet?action=doShowpicture&kind=帅猫的世界"><img
		src="../catimages/2.jpg"></a>
	<a href="../barcontextServlet?action=doShowpicture&kind=淘气的猫咪"><img
		src="../catimages/3.jpg"></a>
	<h1>其他</h1>
	<h1>吧友天地</h1>  -->






	<!-- 请上传你的图片
	<form action="../barcontextServlet?action=doPresentimgtwo"
		method="post" enctype="multipart/form-data">
		<center>
			<h3>传上您的最美图片</h3>
		</center> -->
	<!-- <div class="uploader white">
<input type="text" class="filename" readonly="readonly"/>
<input type="" name="file" class="button" value="Browse..."/>
<input type="file" name = "file" size="30"/>
</div> -->


	<!--  <div class="uploader white">
		<input type="text" class="filename" readonly="readonly" />
		<input type="submit" class="button" value="Browse..." /> 
		<input type="file" name = "file" size="40" />
	</div>
 -->

	<!-- <h1>
			上传:<input type="file" name="file" style="width: 200; height: 30px;">
			<span class='state1'>请选择图片</span>
		</h1>
		<h2>
			<input type="submit" value="提交" class="submit">&nbsp; &nbsp;
			<input type="reset" value="重置">
		</h2>


	</form>
	<a href="../barcontextServlet?action=doShowpresentpicture">查看上传的图片</a> -->
</body>
</html>