<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%-- <link rel="stylesheet" type="text/css"
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
	src="<%=request.getContextPath()%>/bar/header/easyui-lang-zh_CN.js"></script> --%>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="header/jquery-1.8.3.min.js"></script>
<script src="header/head.js"></script>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/contexts/resources/style/main.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/contexts/resources/style/sinaFaceAndEffec.css" />

<script type="text/javascript"
	src="<%=request.getContextPath()%>/contexts/resources/js/jquery-1.8.0.min.js"></script>


<link rel="stylesheet"
	href="<%=request.getContextPath()%>/contexts/css/content.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/contexts/header/easyui.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/contexts/header/icon.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/contexts/header/demo.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/contexts/header/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/contexts/header/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/contexts/header/easyui-lang-zh_CN.js"></script>
<!-- <link rel="stylesheet" type="text/css"
	href="http://www.java1234.com/jquery-easyui-1.3.3/themes/default/easyui.css">

<link rel="stylesheet" type="text/css"
	href="http://www.java1234.com/jquery-easyui-1.3.3/themes/icon.css">

<link rel="stylesheet" type="text/css"
	href="http://www.java1234.com/jquery-easyui-1.3.3/demo/demo.css">

<script type="text/javascript"
	src="http://www.java1234.com/jquery-easyui-1.3.3/jquery.min.js"></script>

<script type="text/javascript"
	src="http://www.java1234.com/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>

<script type="text/javascript"
	src="http://www.java1234.com/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script> -->
<title>新闻评论</title>
</head>
<body>

	<div class="backimg">
		<a id="borderImg" class="borderImg" hidefocus="true" href="#"></a>
		<div id="prefunction" onclick="prefunction(this)"
			style="background-image: url('image/left.png'); position: absolute; top: 350px; left: 25px; z-index: 32; background-repeat: no-repeat; overflow: hidden; display: block;rgba(0,0,0,0.1);">
			<div style="width: 90px; height: 90px;"></div>
		</div>
		<div id="nextfunction" onclick="nextfunction(this)"
			style="background-image: url('image/right.png'); position: absolute; top: 350px; left: 1250px; z-index: 32; background-repeat: no-repeat; overflow: hidden; display: block;rgba(0,0,0,0.1);">
			<div style="width: 90px; height: 90px;"></div>
		</div>

		<script type="text/javascript">
			var i = 1;
			function nextfunction() {
				var img_arr = [ "image/jiemian.jpg", "image/border.jpg" ];
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
				var img_arr = [ "image/jiemian.jpg", "image/border.jpg" ];
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
			var img_arr1 = [ "image/jiemian.jpg", "image/border.jpg" ];
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
					<li><a href="titlesbarServlet?action=doShow">宠物吧</a></li>

					<li><a href="goodServlet?action=doShow">买卖天下</a></li>

					<li><a href="titleshspServlet?action=loadMore">宠物健康</a></li>

					<li><a href="about.jsp">关于我们</a></li>

				</ul>
			</div>
		</div>
	</div>


	<div class="fullmeasureOuterContent">
		<div class="fullmeasureOuter">
			<fieldset class="fieldset">

				<legend class="legend">新闻资讯</legend>
				<div class="fullContent">
					<div class="fullContentTitle">${title.title}</div>

					<div class="fullContentImg">
						<c:forEach items="${pies }" var="p">
							<img alt="" src="${p.picture }">
						</c:forEach>
					</div>
					<c:forEach items="${cons }" var="c">
						<div class="fullCont">

							<a href="contextServlet?action=doShow">${c.context}</a>

						</div>
					</c:forEach>
					<div class="fullImg">
						<img src="image/bubble.png" class="flip">
						<!-- id="hide" -->
						<div id="p1" class="panel" style="display: none;overflow: scroll;">
							<div class = "panelTit">评论内容</div>
							<div class = "panelContent">
							<%-- <c:forEach items="${cots }" var="t">
								<div>
									<p class="divvisitorp">${t.username}：${t.contexts}</p>
								</div>
							</c:forEach> --%>
							<div class="divfont">
								<form action="../commentServlet?action=doAdd" method="post"
									name="Message">
									<div id="content" style="width: 400px; height: auto;">
										<div class="wrap">
											<div class="comment">
												<div class="content">
													<div class="cont-box">
														<textarea class="text" placeholder="请输入..." name="comment"></textarea>
													</div>
													<div class="tools-box">
														<div class="operator-box-btn">
															<span class="face-icon">☺</span>
														</div>
														<div class="submit-btn">
															<input type="submit" onClick="out()" value="提交评论" />
														</div>
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
							
							</div>
							 <c:forEach items="${cots }" var="t">
							
							<div class = "pinglunneirong">${t.username}: ${t.contexts}</div>
							 </c:forEach>
							<%-- 
	

								<div class = "pinglunneirong">${t.username}: ${t.contexts} aaaaa</div>
							 --%>
						</div>
					</div>


				</div>


				<!-- <script type="text/javascript">
					$(document).ready(function() {

						$("#hide").click(function() {
							$("#p1").toggle(1000);
						});
					});
				</script> -->

				<script type="text/javascript">
					$(document).ready(function() {
						$(".flip").click(function() {
							$(".panel").slideToggle("slow");
						});
					});
				</script>
				<!-- <div style="display: none;" id="w1">
					<div id="w" class="easyui-window" title="评论"
						style="width: 500px; height: 200px; padding: 10px; overflow: scroll;">
						<form action="../commentServlet?action=doAdd" method="post"
							name="Message">
							<div id="content" style="width: 400px; height: auto;">
								<div class="wrap">
									<div class="comment">
										<div class="content">
											<div class="cont-box">
												<textarea class="text" placeholder="请输入..." name="comment"></textarea>
											</div>
											<div class="tools-box">
												<div class="operator-box-btn">
													<span class="face-icon">☺</span>
												</div>
												<div class="submit-btn">
													<input type="submit" onClick="out()" value="提交评论" />
												</div>
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
				</div> -->







				<script type="text/javascript"
					src="<%=request.getContextPath()%>/contexts/resources/js/main.js"></script>
				<script type="text/javascript"
					src="<%=request.getContextPath()%>/contexts/resources/js/sinaFaceAndEffec.js"></script>
				<script type="text/javascript">
					// 绑定表情
					$('.face-icon').SinaEmotion($('.text'));
					// 测试本地解析
					function out() {
						var inputText = $('.text').val();
						$('#info-show ul').append(
								reply(AnalyticEmotion(inputText)));
					}

					var html;
					function reply(content) {
						html = '<li>';
						html += '<div class="head-face">';
						html += '<img src="images/1.jpg" / >';
						html += '</div>';
						html += '<div class="reply-cont">';
						html += '<p class="username">小小红色飞机</p>';
						html += '<p class="comment-body">' + content + '</p>';
						html += '<p class="comment-footer">2016年10月5日　回复　点赞54　转发12</p>';
						html += '</div>';
						html += '</li>';
						return html;
					}
				</script>

				<div class="dashed"></div>
				<div class="fullContent1">
					<div class="fullContentImg1">
						<img alt=""
							src="<%=request.getContextPath()%>/contexts/image/P1.jpg"
							class="img"> <img alt=""
							src="<%=request.getContextPath()%>/contexts/image/p.jpeg"
							class="img1"> <img alt=""
							src="<%=request.getContextPath()%>/contexts/image/p2.jpg"
							class="img1"> <img alt=""
							src="<%=request.getContextPath()%>/contexts/image/p3.jpg"
							class="img">
					</div>
					<!-- <div class="fullContentCon1">
						<div class="Con">&nbsp;&nbsp;
							阿富汗猎犬处世老练，能应付各种环境，是豪华显贵的流行宠儿及展览珍品。然而在阿富汗猎犬，这种美丽而敏感的动物仍旧用于牧羊、猎捕狐狸和狼，又长又厚的被毛能抵御山区的严寒。必须每天梳理被毛，否则很快就会缠结成一团。
							适合居住条件良好，空闲时间充裕的爱狗人士。阿富汗猎犬处世老练，能应付各种环境，是豪华显贵的流行宠儿及展览珍品。然而在阿富汗猎犬，这种美丽而敏感的动物仍旧用于牧羊、猎捕狐狸和狼，又长又厚的被毛能抵御山区的严寒。然而作为伴侣犬，必须每天梳理被毛，否则很快就会缠结成一团。
						</div>

					</div> -->

				</div>


			</fieldset>


		</div>
		<%-- 		<div class="fullContent">
			<div class="fullContentTitle">标题</div>
			<div class="fullCon"><c:forEach items="${pies }" var="p">				 
					<img alt="" src="${p.picture }">						
				</c:forEach></div>
				<c:forEach items="${cons }" var="c">
			<div class="fullCont"><a href="contextServlet?action=doShow">${c.context}</a></div>
			</c:forEach>

			<div class="fullContFoot">
				<div class="fullContFoot1">赞</div>
				<div class="fullContFoot1" class="easyui-linkbutton" onclick="$('#w').window('open')">
					评论			
				</div>
				<div id="w" class="easyui-window" title="评论" data-options="iconCls:'icon-save'" style="width:500px;height:200px;padding:10px;overflow:scroll;">				
				<form action="../commentServlet?action=doAdd" method="post" name = "Message">
				<div id="content" style="width: 400px; height: auto;">
			<div class="wrap">
				<div class="comment">
					<div class="content">
						<div class="cont-box">
							<textarea class="text" placeholder="请输入..." name = "comment"></textarea>
						</div>
						<div class="tools-box">
							<div class="operator-box-btn"><span class="face-icon"  >☺</span></div>
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
			
	
				
				<div class = "pinglun"></div>
				<c:forEach items="${cots }" var="t">
				<div class = "pinglinUsername">${t.username}：${t.contexts}</div>
</c:forEach>
    </div>		
			<div class="fullContFoot1">转发</div>
			<div class="fullContFoot1">收藏</div>
			
			
		</div>

	</div> --%>

	</div>



	<div class="fullmeasureOuterContent1">

		<img alt="" src="<%=request.getContextPath()%>/contexts/image/tt.jpg">
	</div>
	<div class="fullmeasureOuterContent2">

		<div class="fullmeasureDog">
			<div class="fullmeasureDogContent">
				<div class="fullmeasureDogTitle">狗狗知识</div>
				<div class="fullmeasureDogTitle1">THE DOG DOG KNOWLEDGE</div>
				<div class="fullmeasureDogCon">一、饮食养护：按照狗狗的年龄和身体变化，将狗狗份儿幼儿狗狗、青年狗狗、老年狗狗三个
					阶段，不同阶段的饮食安排也是不一样的。</div>
				<div class="fullmeasureDogCon">1.幼儿时期的狗狗，多以高蛋白，高钙含量的食物为主，因为幼儿狗狗骨骼发育不完全，而
					且处于长身体的时候，需要补充狗狗身体发育的必须营养。更需要准备易消化，高吸收的食物，
					因为幼年的狗狗消化功能还不是很强，对坚硬的食物消化存在一些困难。同时幼年的狗狗每天应该少食多餐，每天为其准备3-4餐最好。</div>

				<div class="fullmeasureDogCon1">2.青年时期的狗狗，狗狗身体已经长成
					，消化功能增强，新陈代谢旺盛，此时可以为狗狗准备爱吃的狗粮，每天更换新鲜的水，供其使用。</div>
			</div>

			<div class="fullmeasureDogImg">
				<img alt=""
					src="<%=request.getContextPath()%>/contexts/image/menggou.png">

			</div>
		</div>

		<div class="aboutfoot" style="margin-top: 30px;">
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



	<%-- 

<div class = "search_logo" style = "background-image: url('images/w.png');background-repeat: no-repeat;">
			
			<!-- <!-- <a style = "color:#7B68EE;" href="registerlogin/login.jsp">登录</a>  
			<a style = "color:#7B68EE;size:20px;">/</a> -->
			<a style = "color:#7B68EE;" href="registerlogin/register.jsp">注册</a>
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




	<div class="main" style="height: 250px;">
		<div class="divmain" >
			<div class="divinfo">
				<span><p class="divinfospanp"
						onMouseMove="this.className='divinfospanp1'"
						onMouseOut="this.className='divinfospanp'" align="left">主题：</p></span>
				<hr style="border: 1px dotted #E0E0E0;" />
				<span class="divinfospan"><img alt="" src="<%=request.getContextPath()%>/contexts/images/info.png"></span>
			</div>
			
			 <div class="divcontent">
			
				<img alt="" src="<%=request.getContextPath()%>/contexts/images/s.png">
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
				
					<p class="content_p">&nbsp;&nbsp;<a href="contextServlet?action=doShow">${c.context}</a></p>
				</div> 
					</c:forEach>
				<div class="divcontentaimg">
				<a href="pages/addcomment.jsp"><img alt="" src="<%=request.getContextPath()%>/contexts/images/bubble.png" class="acontentimg"></a>
			</div>
			</div>
			
		</div>

</div>
 <c:forEach items="${cots }" var="t">
<div class = "divvisitor" onMouseMove="this.className='divvisitor1'"
						onMouseOut="this.className='divvisitor'">

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
	</c:forEach> --%>

	<%-- 
<c:forEach items="${pies }" var="p">
  
             <a href="contextServlet?action=doShow">${c.context}</a><br/><br/><br/><br/>
             
             <img src="${p.picture }">
           
        
 <c:forEach items="${cons }" var="c">
  
             <a href="contextServlet?action=doShow">${c.context}</a><br/><br/><br/><br/>          
        </c:forEach>
        <br/><br/><br/>
        <a href="pages/addcomment.jsp">加入评论</a>
        评论:
      <c:forEach items="${cots }" var="t">
  
           ${t.username}:<br/>
           ${t.contexts}        
        </c:forEach> --%>
</body>
</html>