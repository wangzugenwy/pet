<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="./header/head.css" />
<link rel="stylesheet" href="./header/head1.css" />
<script src="./header/jquery-1.8.3.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {

		$("#hide").click(function() {
			$("#p1").toggle(1000);
		});
	});
</script>

<script src="./header/head.js"></script>
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
	href="<%=request.getContextPath()%>/bar/css/content.css">
<title>贴吧贴</title>
</head>
<body style="background-color: white;">


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
		<div id="primaryTitle" style="font-size: 24px;">宠物大联盟</div>
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

						<div>
							<a
								href="http://localhost:8080/pet/titlesbarServlet?action=doShow">看帖</a>
						</div>
						<div>
							<a href="">视频</a>
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
		<fieldset class="fieldset">
			<legend class="legend">
				贴吧<em class="legendem">NEW</em>
			</legend>

			<div class="barContent">
				<div class="barContentTitle">${title.title }</div>
				<div class="barContentconImg">
					<c:forEach items="${pies }" var="p">

						<img alt="" src="${p.picture }">
					</c:forEach>
				</div>
				<div class="barContentcon">
					<c:forEach items="${cons }" var="c">
		&nbsp;<a href="contextServlet?action=doShow">&nbsp;${c.context}</a>
					</c:forEach>
				</div>
				<div class="barpinglunImg">

					<button id="hide" type="button"
						style="border: 1px solid white; border-radius: 5px; width: 30px; float: left; margin-left: 30px; text-align: center;">
						<img alt=""
							src="<%=request.getContextPath()%>/bar/css/images/share.png">
					</button>
					<a href="pages/addcomment.jsp"><img alt=""
						src="<%=request.getContextPath()%>/bar/css/images/bubble.png"></a>
					<div id="p1"
						style="display: none; overflow: scroll; border: 1px solid; height: 150px; text-align: left; margin-left: 100px; z-index: 32; width: 300px; box-shadow: 3px 3px 3px; border-radius: 5px; margin-top: -20px;">
						<div
							style="height: 20px; width: 300px; border: 1px solid; text-align: center; color: white; background-color: black; border-radius: 5px;">评论内容</div>

						<c:forEach items="${cots }" var="t">
							<div>
								<p class="divvisitorp">${t.username}：${t.contexts}</p>
							</div>
						</c:forEach>
	<div class = "divfont"><center> ${pagesvs}</center></div>
					</div>
				</div>





			</div>
			<div class="bardashed"></div>
			<div class="barNew">
				<img
					src="<%=request.getContextPath()%>/bar/css/images/xiaohuagou.jpg">
				<div class="imgTit">你见过在花海中的秋田犬吗？</div>
			</div>
		</fieldset>


	</div>

	<div class="fullmeasureOuterContent1">
		<img src="<%=request.getContextPath()%>/bar/css/images/mao.jpg">
	</div>

	<div class="fullmeasureOuterContent2">

		<div class="fullmTitle">猫猫知识</div>
		<div class="fullmTitle1">THE CAT CAT KNOWLEDGE</div>
		<div class="fullmeasureOuterCon">
			<div class="fullmeasurImg">
				<img src="<%=request.getContextPath()%>/bar/images/maomi.png">
			</div>

			<div class="fullContent">
				<div class="fullContent1">猫咪的性情活泼可爱，喜欢干净，不论公猫还是母猫，
					都很容易与主人建立深厚的感情，是理想的家庭伴侣动物。 但家庭养猫究竟是选择养母猫还是养公猫， 这是每一个主人在养猫前都会考虑的问题。
				</div>
				<div class="fullContent2">一般来说，公猫好动，活泼可爱，也比较聪明，接受训练的能力比母猫强，经过训练可以学会很多有趣的动作，饲养要求相对讲比母猫低些，
					体格健壮，抗病力强。较适合老年人或性格比较内向的人饲养。但有时公猫性情比较暴躁，攻击性强，有可能抓伤人或其他小动物。在性成熟以后，如果未做绝育手术的话，在发情期有些公猫会到处乱尿以划出自己的范围。如果看管不好它就有可能会离家去找母猫或是可能为争母猫在外面跟其它公猫打得鼻青脸肿的回家。</div>
				<div class="fullContent3">母猫性情温顺,感情丰富,喜欢亲近主人，也容易和主人建立起深厚的感情。但在繁殖季节，母猫每隔3～4周就</div>
			</div>
			<div class="fullCon">母猫性情温顺,感情丰富,喜欢亲近主人，也容易和主人建立起深厚的感情。但在繁殖季节，母猫每隔3～4周就并有可能引发邻居投诉。如果任其与公猫交配，则要怀孕和产仔，产仔后需要主人的精心照料，小猫长大后也要做处理，如是自养还是送人，是否能找到适合的新主人，这些都是要考虑的问题。母猫的抗病力较公猫差，未绝育的母猫特别易得产科病。</div>
			<div class="fullCon1">一般建议对猫作绝育手术处理，这样会使猫咪成为更好养护的宠物，因为这时母猫已不存在发情和妊娠的过程。公猫在幼小时即予阉割，就不会因到处撤尿而破坏家里的卫生，同时还可使公猫安心地呆在家里，不会再出去四处寻觅母猫。</div>
			<div class="fullCon2">如果绝育的话：公猫是在蛋蛋上做手术，一般几天就恢复了，麻药过了带个伊丽莎白圈吃点好的基本上就不用怎么操心了；母猫是开膛取出子宫及其附件，刀口大概有四公分左右。这个术后照顾起来比较麻烦，前几天要一直有人看着她不要到处乱跳，否则有伤口开裂的可能，照顾得不好还容易有积水和发炎。如果你是从小猫养起的话建议在第一次发情前就做绝育。因为有些猫发过情做绝育之后还会有类似发情的表现。一般公猫5个月、母猫8个月左右比较好。绝育后要注意营养，因为激素分泌跟以往不同，尤其要注意钙的补充。</div>
		</div>



		<div class="indexfoot">
			<div class="div_foot">
				<ul class="div_ul">
					<li class="div_li"><a href="#">首页</a></li>
					<li class="div_li"><a href="http://my.csdn.net/wangzugenwy">联系我们</a></li>
					<li class="div_li"><a href="#">关于我们</a></li>
					<li class="div_li"><a href="#">免责声明</a></li>
				</ul>
			</div>

		</div>

	</div>

	<!-- 
<div class="search_logo"
		style="background-image: url('images/w.png'); background-repeat: no-repeat;background-color: white;">
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
	</div>
 -->

	<%-- 
<div class="main" style="height: 350px;">
		<div class="divmain">
			<div class="divinfo">
				<span><p class="divinfospanp"
						onMouseMove="this.className='divinfospanp1'"
						onMouseOut="this.className='divinfospanp'" align="left">楼主：</p></span>
				<hr style="border: 1px dotted #E0E0E0;" />
				<span class="divinfospan"><img alt="" src="<%=request.getContextPath()%>/bar/images/info.png"></span>
			</div>
			
			 <div class="divcontent">
			
				<img alt="" src="<%=request.getContextPath()%>/bar/images/s.png">
					<em>发表于</em>
				
				<hr style="border: 1px dotted #E0E0E0;" />
				<c:forEach items="${pies }" var="p">
				 <div class="divimg"> 
				 
					<img alt="" src="${p.picture }" class="img"
						onMouseMove="this.className='img1'"
						onMouseOut="this.className='img'">
						
				 </div></c:forEach>
				 <c:forEach items="${cons }" var="c">
				<div class="contentc"> 
				
					<p class="content_p">&nbsp;<a href="contextServlet?action=doShow">&nbsp;${c.context}</a></p>
				</div> 
					</c:forEach>
				<div class="divcontentaimg">
				<a href="pages/addcomment.jsp"><img alt="" src="<%=request.getContextPath()%>/contexts/images/bubble.png" class="acontentimg"></a>
			</div>
			</div>
			
		</div>

</div>
 <c:forEach items="${cots }" var="t">
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
					<em>评论于</em>
				
				<hr style="border: 1px dotted #E0E0E0;" />
				<p class = "divvisitorp">${t.contexts}</p>
		</div>
		
		
	</div>
	</c:forEach>

<br>
<div class = "divfont"><center> ${pagesvs}</center></div> --%>






	<!-- <a href="titleServlet?action=doShow">首页</a><a href="">宠物吧</a><a href="goodServlet?action=doShow">买卖天下</a>
<a href="titleshspServlet?action=loadMore">宠物健康</a> -->
	<%-- <c:forEach items="${pies }" var="p">
  
             <a href="contextServlet?action=doShow">${c.context}</a><br/><br/><br/><br/>
             
             <img src="${p.picture }">
           
        </c:forEach>
 <c:forEach items="${cons }" var="c">
  
             ${c.context}<br/><br/><br/>
             
             
           
        </c:forEach>
        <br/><br/><br/>
        <!-- <a href="pages/addcomment.jsp">加入评论</a>
 -->        
      <c:forEach items="${cots }" var="t">
  
           ${t.username}:<br/>
           ${t.contexts}
             
             <a href="HuFuServlet?action=doShow&id=${ t.id}">回复</a>
           
        </c:forEach>
 ${pagesvs}
  <form action="barcontextServlet?action=doAdd" method="post">
 <textarea rows="40" cols="30" name="comment">
 
 
 
 </textarea>
 <input type="submit" value="发表">
 </form> --%>
</body>
</html>