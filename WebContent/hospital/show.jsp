<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/hospital/header/toubu.css" />
<script src="header/jquery-1.8.3.min.js"></script>
<script src="header/head.js"></script>
<title>宠物健康</title>
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


	<div class="fullmeasureOuterContent">
		<div class="fullContent">
			<div class="fullContentImg">
				<img alt=""
					src="<%=request.getContextPath()%>/hospital/images/doctor.png">
			</div>
			<div class="fullCon">
				<div class="fullConTitle">健康常识</div>
				<div class="Content">金毛犬的换毛时间一般多出现在春秋季节，由于气候的明显变化而导致金毛生理性的换毛。</div>

				<div class="Content">如今，这两种狗在中国逐渐普遍起来，深得大家的喜爱，可有很多人都不会区分这两种狗。</div>
				<div class="Content">作为狗狗的家长，可能面对最多的问题之一就是狗毛的护理和清洁问题。</div>
				<div class="Content" style="margin-top: 40px;">注意你的狗狗的一些潜台词，比如有时候发出不正常的叫声的时候
					，可能是你的狗狗憋着啦 。</div>
				<div class="Content">如果在家没有养成良好的习惯，那么注意实时调整遛弯时间，确保在外出时间解决生理问题。</div>
				<div class="Content">注意养宠物 一点要花时间，花精力，宠物的寿命相对人类来说很短。珍惜它。</div>
				<div class="Content" style="margin-top: 40px;">
					狗狗营养性贫血是指缺乏某些造血物质，影响红细胞和血红蛋白的生成而发生的贫血。</div>
				<div class="Content">母犬怀孕生产后哺乳期间，有时会不停的颤抖，抽搐，表现不安。</div>
			</div>
		</div>
	</div>


	<div class="fullmeasureOuterContent1">
		<img alt=""
			src="<%=request.getContextPath()%>/hospital/images/hospital.png">
	</div>
	<div class="fullmeasureOuterContent2">
		<div class="bendiTitle">狗狗系列</div>
		<div class="bendiCon">
		<c:forEach items="${total }" var="t">
			<div class="bendiContent">
			
			
  
         <%--   <img src= ${t.picture }>  
           <a href="hspcontextServlet?action=doShow&id=${t.id }">${t.title}</a>  
            ${t.readtimes } 
            <a href="">${t.type}</a><br/><br/><br/><br/>
             
              --%>
           
        
			
			
			
			
				<div class = "bendiContentImg">
					<img src= ${t.picture }> 
				</div>
			
				<div class="bendiContentTitle">
				<a href="hspcontextServlet?action=doShow&id=${t.id }">${t.title}</a> 
				</div>
				
			</div>
			</c:forEach> 
			
		</div>
		<div class="bendifenlei">${pages}</div>


	</div>
	<div class="fullmeasureOuterContent3">
		<img alt=""
			src="<%=request.getContextPath()%>/hospital/images/home.png">
	</div>


	<div class="fullmeasureOuterContent4">
		<div class="keepTitle">养宠问答</div>
		<div class="keepContent">
			<div class="keepConRight">
				<div class="keepConRightTitle">
					<div class="keepConRightTitle1">问</div>
					<div class="keepCon">训练哈瓦那棕猫不咬人的几招实用技巧</div>
				</div>
				<div class="keepConRighthuifu">
					<div class="keepConRighthuifu1">答</div>
					<div class="keepCon1">一般人都认为猫咪性格比较温顺，其实不然！
						虽然说经常听到狗狗咬人事件，但其实猫咪也是会咬...</div>

				</div>

				<div class="keepConRightTitle2">
					<div class="keepConRightTitle1">问</div>
					<div class="keepCon">美国刚毛猫生活习性和饲养技巧大公开</div>
				</div>

				<div class="keepConRighthuifu2">
					<div class="keepConRighthuifu1">答</div>
					<div class="keepCon1">一般人都认为猫咪性格比较温顺，其实不然！
						虽然说经常听到狗狗咬人事件，但其实猫咪也是会咬...</div>

				</div>

			</div>
			<div class="keepConCenter">
				<img alt=""
					src="<%=request.getContextPath()%>/hospital/images/wenda.png">
			</div>
			<div class="keepConLeft">

				<div class="keepConRightTitle">
					<div class="keepConRightTitle1">问</div>
					<div class="keepCon">奥西猫的价格和饲养技巧</div>
				</div>
				<div class="keepConRighthuifu">
					<div class="keepConRighthuifu1">答</div>
					<div class="keepCon1">一般人都认为猫咪性格比较温顺，其实不然！
						虽然说经常听到狗狗咬人事件，但其实猫咪也是会咬...</div>

				</div>

				<div class="keepConRightTitle2">
					<div class="keepConRightTitle1">问</div>
					<div class="keepCon">猫咪有哪些不可以吃的啊?!求解!</div>
				</div>

				<div class="keepConRighthuifu2">
					<div class="keepConRighthuifu1">答</div>
					<div class="keepCon1">一般人都认为猫咪性格比较温顺，其实不然！
						虽然说经常听到狗狗咬人事件，但其实猫咪也是会咬...</div>

				</div>


			</div>
		</div>
</div>

		<div class="aboutfoot">
			<div class="div_foot">
				<ul class="div_ul">
					<li class="div_li"><a href="#">首页</a></li>
					<li class="div_li"><a href="http://my.csdn.net/wangzugenwy">联系我们</a></li>
					<li class="div_li"><a href="#">关于我们</a></li>
					<li class="div_li"><a href="#">免责声明</a></li>
				</ul>
			</div>

		</div>

		<!-- <div class="search_logo"
		style="background-image: url('images/w.png'); background-repeat: no-repeat;background-color: white;">
		<div style="text-align: right;">
			<a style="color: #7B68EE;" href="pages/findpassword.jsp">找回密码</a>
		</div>
		<a style="color: #7B68EE;" href="../registerlogin/login.jsp">登录</a> <a
			style="color: #7B68EE; size: 20px;">/</a> <a style="color: #7B68EE;"
			href="../registerlogin/register.jsp">注册</a>
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


		<!-- <div>

<a href="titleServlet?action=doShow">首页</a><a href="">宠物吧</a><a href="goodServlet?action=doShow">买卖天下</a>
<a href="titleshspServlet?action=loadMore">宠物健康</a>

<a href="registerlogin/register.jsp">注册</a><a href="registerlogin/login.jsp">登录</a>
<a href="pages/findpassword.jsp">找回密码</a>

</div> -->

		<%-- <div class="b-main" style="height: 175px;">
		<div class="b-list" id="list">
			<ul>
				<c:forEach items="${total }" var="t">

					<li class="clearfix"><a href="#" class="b-list-img"><img
							src=${t.picture } width="200" height="135"></a>
						<div class="b-list-txt">
							<h5>
								<!-- <a href="#">论宠之道</a> -->
							</h5>
							<p>
								<c:forEach items="${titlelczjs }" var="t">

								<a href="hspcontextServlet?action=doShow&id=${t.id }">${t.title}</a>

							</p>
							<div class="b-list-tag">

								<a href="#" class="b-list-comment"> </a> <a href="#">${t.readtimes}</a>
								<a href="#">${t.type}</a>
							</div>
						</div></li>
				</c:forEach>
			</ul>
		</div>		
		<div>
	</div>
		
	</div>
 --%>



		<!-- <!--<div class="g">
<h1></h1>

        <c:forEach items="${total }" var="t">
  
           <img src= ${t.picture }>  
           <a href="hspcontextServlet?action=doShow&id=${t.id }">${t.title}</a>  
            ${t.readtimes } 
            <a href="">${t.type}</a><br/><br/><br/><br/>
             
             
           
        </c:forEach> 
     
        </article>
        </div>-->
		<!--       
   <div class="pageTest"></div>
    <script type="text/javascript" src="rescourse/jquery.js"></script>
    <script type="text/javascript" src="rescourse/page.js"></script>
    <script type="text/javascript">
    $('.pageTest').page({
      leng: 66,//分页总数
      activeClass: 'activP' , //active 类样式定义
    })
    </script>
         -->
</body>
</html>