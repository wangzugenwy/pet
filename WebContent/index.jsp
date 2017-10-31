<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="header/toubu.css" />
<link rel="stylesheet" href="header/index.css" />
<script src="header/jquery-1.8.3.min.js"></script>
<script src="header/head.js"></script>
<title>首页</title>

</head>
<body style="background-color: white;">
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



	<div class="fullmeasureOuterContent"
		style="background-color: white; height: 600px;">
		<div class="formContent">
			<div class="formContentdiv">我们是谁</div>
			<div class="formContentdiv2">WHO&nbsp;WE&nbsp;ARE</div>
			<div class="formContentdiv1" style="margin-top: 80px;">宠物网站是针对广大爱宠青年量身打造的网站。</div>
			<div class="formContentdiv1">　如今的我们风华正茂,时代的步伐要求我们要在团队合作中健康成长,把新绿小心栽种,用梦想去施肥。</div>
			<div class="formContentdiv1" style="margin-top: 50px;">团队合作是人生中最大的财富!就让我们把自己融入集体,在集体中发挥自己的力量,让团队展翅,助我们飞翔!</div>
			<div class="formContentdiv1">团队无时无刻不在我们身边演绎着它的力量、</div>
			<div class="formContentdiv1"></div>
		</div>
		<div class="module">
			<div class="modulespan"><a href="http://map.baidu.com">预约医生</a></div>
			<div class="modulespan1"><a href = "about1.jsp">加盟咨询</a></div>
		</div>
	</div>



	<div class="fullmeasureOuterContent1"
		style="height: 1100px; background-color: #E9E9E9;">
		<div class="formIndex">
			<div class="formIndeximg">
				<img src="image/doctor.png">
			</div>
			<div class="formIndexContent">
				<div class="formIndexContentTitle">- 精英国际兽医 -</div>
				<div class="formIndexCon">拥有一批高学历、临床经验丰富的宠物医师，其中硕士35人、博士2人，执业兽医师328人。</div>
				<div class="formIndexCon">有完善的宠物内科、心血管科、骨科、软组织外科、眼科、肿瘤科、牙科、皮肤科、影像科、猫科等科室，并在宠物骨科、眼科、肿瘤科、牙科、</div>
				<div class="formIndexCon">皮肤科等领域综合实力领跑全国。</div>
			</div>

			<div class="formIndexbenCon">
				<div class="formIndexbendiCon">
					<div class="bendiCon">
						<div class="bendiConImg1">
							<img alt="" src="image/title.png">
						</div>
						<div class="bendiConBigTitle">宠物咨询</div>

						<!-- <div class="bendiConImg1">
							<img alt="" src="image/title.png">
						</div> -->
						<c:forEach items="${titlezxs }" var="t">
							<div class="bendiConTitle" onMouseMove="this.className='bendiConTitle1'"
						onMouseOut="this.className='bendiConTitle'">
								<a href="contextServlet?action=doShow&id=${t.id }">${t.title}</a>
							</div>
						</c:forEach>




						<!-- <div class="bendiConTitle" onMouseMove="this.className='bendiConTitle1'"
						onMouseOut="this.className='bendiConTitle'">
							<a href="http://www.chinapet.com/article-22231-1.html">2016中国昆明国际宠物博览会</a>
						</div>
						<div class="bendiConTitle" onMouseMove="this.className='bendiConTitle1'"
						onMouseOut="this.className='bendiConTitle'">
							<a href="http://www.chinapet.com/article-22217-1.html">冠能助力敏捷犬中国队出征世界杯</a>
						</div>
						<div class="bendiConTitle" onMouseMove="this.className='bendiConTitle1'"
						onMouseOut="this.className='bendiConTitle'">
							<a href="http://www.chinapet.com/article-22221-1.html">RedDog红狗来华建厂并设立研究院</a>
						</div>
						<div class="bendiConTitle" onMouseMove="this.className='bendiConTitle1'"
						onMouseOut="this.className='bendiConTitle'">
							<a href="http://www.chinapet.com/article-22221-1.html">高科技定位防宠物走失PetCare定位</a>
						</div>
						<div class="bendiConTitle" onMouseMove="this.className='bendiConTitle1'"
						onMouseOut="this.className='bendiConTitle'">
							<a href="http://www.chinapet.com/article-22229-1.html">龟孙子跑得比兔子还快,龟鳖价格上扬</a>
						</div>
						<div class="bendiConTitle" onMouseMove="this.className='bendiConTitle1'"
						onMouseOut="this.className='bendiConTitle'">
							<a href="http://www.chinapet.com/article-22231-1.html">2016中国昆明国际宠物博览会</a>
						</div>
						<div class="bendiConTitle" onMouseMove="this.className='bendiConTitle1'"
						onMouseOut="this.className='bendiConTitle'">
							<a href="http://www.chinapet.com/article-22231-1.html">2016中国昆明国际宠物博览会</a>
						</div>
						<div class="bendiConTitle" onMouseMove="this.className='bendiConTitle1'"
						onMouseOut="this.className='bendiConTitle'">
							<a href="http://www.chinapet.com/article-22231-1.html">2016中国昆明国际宠物博览会</a>
						</div> -->
					</div>

					<div class="bendiCon1">
						<div class="bendiConImg1">
							<img alt="" src="image/title.png">
						</div>
						<div class="bendiConBigTitle">宠物新鲜事</div>
						<c:forEach items="${titles }" var="t">
							<div class="bendiConTitle" onMouseMove="this.className='bendiConTitle1'"
						onMouseOut="this.className='bendiConTitle'">
								<a href="contextServlet?action=doShow&id=${t.id }">${t.title}</a>
							</div>
						</c:forEach>
					</div>
					<div class="bendiCon2">
						<div class="bendiConImg1">
							<img alt="" src="image/title.png">
						</div>
						<div class="bendiConBigTitle">推荐TOP8</div>

						<c:forEach items="${titlestop }" var="t">
							<div class="bendiConTitle" onMouseMove="this.className='bendiConTitle1'"
						onMouseOut="this.className='bendiConTitle'">
								<a href="contextServlet?action=doShow&id=${t.id }">${t.title}</a>
							</div>
						</c:forEach>
						<!-- <div class="bendiConTitle" onMouseMove="this.className='bendiConTitle1'"
						onMouseOut="this.className='bendiConTitle'">
							<a href="http://pet.pclady.com.cn/160/1605177.html">小宠物约克夏犬的性格特点</a>
						</div>
						<div class="bendiConTitle" onMouseMove="this.className='bendiConTitle1'"
						onMouseOut="this.className='bendiConTitle'">
							<a href="#">小花猫眼睛亮光的特点</a>
						</div>
						<div class="bendiConTitle" onMouseMove="this.className='bendiConTitle1'"
						onMouseOut="this.className='bendiConTitle'">
							<a href="#">狗狗打瞌睡</a>
						</div>
						<div class="bendiConTitle" onMouseMove="this.className='bendiConTitle1'"
						onMouseOut="this.className='bendiConTitle'">
							<a href="#">宠物丢失怎么办？</a>
						</div>
						<div class="bendiConTitle" onMouseMove="this.className='bendiConTitle1'"
						onMouseOut="this.className='bendiConTitle'">
							<a href="http://pet.pclady.com.cn/159/1592003.html">白色仓鼠的品种</a>
						</div>
						<div class="bendiConTitle" onMouseMove="this.className='bendiConTitle1'"
						onMouseOut="this.className='bendiConTitle'">
							<a href="http://pet.pclady.com.cn/160/1605122.html">小猫半夜骚扰我们怎么办?</a>
						</div>
						<div class="bendiConTitle" onMouseMove="this.className='bendiConTitle1'"
						onMouseOut="this.className='bendiConTitle'">
							<a href="http://pet.pclady.com.cn/160/1605205.html">狗狗螨虫病症状是什么？</a>
						</div>
						<div class="bendiConTitle" onMouseMove="this.className='bendiConTitle1'"
						onMouseOut="this.className='bendiConTitle'">
							<a href="http://pet.pclady.com.cn/160/1605308.html">金毛受伤了怎么办？</a>
						</div> -->
					</div>


				</div>
			</div>

		</div>



		<div class="stroy">
			<div class="storyTitle">萌宠故事会</div>
			<div class="storyContent">
				<c:forEach items="${titlesmcs }" var="t">
					<div class="storyCon" onMouseMove="this.className='storyCon1'"
						onMouseOut="this.className='storyCon'">

						<img class = "storyConImg" alt="" src="${t.picture }" style=""
						onMouseMove="this.className='storyConImg1'"
						onMouseOut="this.className='storyConImg'">
						<p>
							<a class="storyContentA"
								href="contextServlet?action=doShow&id=${t.id }">${t.title}
						</p>
					</div>
				</c:forEach>
			</div>
		</div>


		<div class="fullMark">
			<div class="fullMarkTitle">宠物百科</div>
			<div class="fullMarkContent">
				<div class="fullMarkCon">
					<div>
						<img alt="" src="image/baike.png">
					</div>

				</div>
				<div class="fullMarkCon1">
					<div class="fullMarkImg">
						<img src="image/taidi.jpg"> <img src="image/gougoubukai.jpg">
					</div>
					<div class="fullMarkImg1">
						<img src="image/maomi.jpg"> <img src="image/maomi1.jpg">
					</div>
				</div>
			</div>


			<div class="fullMarkKnowledge">

				<div class="fullMarkKnowledgeContent">
					<div class="fullMarkKnowledgeCon">
						<div class="fullMarkKnowledgeConTitle">幼犬为什么容易得犬瘟和细小</div>
						<div class="fullMarkKnowledgeCon1">幼犬身体性的原因很多性的犬瘟和细小，常常会发生在幼犬之间，也有预先天的的原因，更何况犬瘟和细</div>
						<div class="fullMarkKnowledgeCon1">小能进行传染，下面从一些具体的原因分析下幼犬为什么
							容易得犬瘟和细小...</div>
					</div>
					<div class="fullMarkKnowledgeCon">
						<div class="fullMarkKnowledgeConTitle">给狗狗免疫时需要注意什么</div>
						<div class="fullMarkKnowledgeCon1">一、经过这个免疫计划后，每年注射一针六联疫苗和一针狂犬疫苗，这样就可以让狗狗和传染病说拜了。</div>
						<div class="fullMarkKnowledgeCon1">二、给怀孕母犬注射疫苗是绝对禁止的，否则可造成母犬流产...</div>
					</div>
					<div class="fullMarkKnowledgeCon">
						<div class="fullMarkKnowledgeConTitle">猫咪绝育后的日常护理</div>
						<div class="fullMarkKnowledgeCon1">绝育后的猫咪身体相对要虚弱很多，所以猫咪的护理工作需要我们做的很全面，猫咪手术后性格可能会</div>
						<div class="fullMarkKnowledgeCon1">有些变化，这个时候主人应该照顾猫咪的感受，在饮食上为猫咪准备营养的食物，尽快让猫咪恢复...</div>
					</div>

				</div>
				<div class="fullMarkKnowledgeContent1">
					<div class="fullMarkKnowledgeCon">
						<div class="fullMarkKnowledgeConTitle">狗狗抑郁症的原因及解决办法</div>
						<div class="fullMarkKnowledgeCon1">抑郁症这个词对于我们来说并不陌生，它是一种心理障碍。可是你知道吗？狗狗也是会的抑郁症的！下面</div>
						<div class="fullMarkKnowledgeCon1">就带大家了解狗狗抑郁症产生的原因及解决办法。狗狗抑郁症产生抑郁症的原因大概有两个方面...</div>
					</div>
					<div class="fullMarkKnowledgeCon">
						<div class="fullMarkKnowledgeConTitle">如何给猫咪驱虫</div>
						<div class="fullMarkKnowledgeCon1">猫咪定期驱虫，是保障猫咪身体健康的一个重要的环节。尤其是刚进家的流浪猫、散养的猫咪、以肉为主</div>
						<div class="fullMarkKnowledgeCon1">食的猫咪，为猫咪进行体内体外驱虫更是一件必须完成的事...</div>
					</div>
					<div class="fullMarkKnowledgeCon">
						<div class="fullMarkKnowledgeConTitle">如何通过牙齿推断猫咪的年龄</div>
						<div class="fullMarkKnowledgeCon1">猫咪的年龄，主要以犬牙齿的生长情况、齿峰及牙齿的磨损程度、外形、颜色等综合判定。为了便於掌</div>
						<div class="fullMarkKnowledgeCon1">握，现将猫咪的齿龄介绍如下：成年猫咪的牙齿共30枚
							...</div>
					</div>
				</div>
			</div>

		</div>
		
		<div class="indexfoot">
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


	

	<!-- 
 	  <div class="search_logo"
		style="background-image: url('images/w.png'); background-repeat: no-repeat;background-color: white;">

		<a style="color: #7B68EE;" href="registerlogin/login.jsp">登录</a> <a
			style="color: #7B68EE; size: 20px;">/</a> <a style="color: #7B68EE;"
			href="registerlogin/register.jsp">注册</a>
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

	<%-- <div class="picture">
		<img alt="" src="images/7.jpg" id="img"> <br>
		<div class="mainmore">
			<span class="spanimg"><img alt="" src="images/danghang.png"></span>

			<span class="span_li">
				<ul>
					<li class="span_ul_li" onMouseMove="this.className='span_ul_li1'"
						onMouseOut="this.className='span_ul_li'"><a
						href="http://www.chinapet.com/article-22231-1.html">2016中国昆明国际宠物博览会</a></li>
					<li class="span_ul_li" onMouseMove="this.className='span_ul_li1'"
						onMouseOut="this.className='span_ul_li'"><a
						href="http://www.chinapet.com/article-22217-1.html">冠能助力敏捷犬中国队出征世界杯</a></li>
					<li class="span_ul_li" onMouseMove="this.className='span_ul_li1'"
						onMouseOut="this.className='span_ul_li'"><a
						href="http://www.chinapet.com/article-22221-1.html">RedDog红狗来华建厂并设立临床营养研究院</a></li>
					<li class="span_ul_li" onMouseMove="this.className='span_ul_li1'"
						onMouseOut="this.className='span_ul_li'"><a
						href="http://www.chinapet.com/article-22221-1.html">高科技定位防宠物走失PetCare四重定位显威</a></li>
					<li class="span_ul_li" onMouseMove="this.className='span_ul_li1'"
						onMouseOut="this.className='span_ul_li'"><a
						href="http://www.chinapet.com/article-22229-1.html">龟孙子跑得比兔子还快,龟鳖价格有望上扬</a></li>
					<li class="span_ul_li" onMouseMove="this.className='span_ul_li1'"
						onMouseOut="this.className='span_ul_li'"><a
						href="http://www.chinapet.com/article-22231-1.html">2016中国昆明国际宠物博览会</a></li>
					<li class="span_ul_li" onMouseMove="this.className='span_ul_li1'"
						onMouseOut="this.className='span_ul_li'"><a
						href="http://www.chinapet.com/article-22231-1.html">2016中国昆明国际宠物博览会</a></li>
					<li class="span_ul_li" onMouseMove="this.className='span_ul_li1'"
						onMouseOut="this.className='span_ul_li'"><a
						href="http://www.chinapet.com/article-22231-1.html">2016中国昆明国际宠物博览会</a></li>
					<li class="span_ul_li" onMouseMove="this.className='span_ul_li1'"
						onMouseOut="this.className='span_ul_li'"><a
						href="http://www.chinapet.com/article-22231-1.html">2016中国昆明国际宠物博览会</a></li>

				</ul>
			</span>
		</div>
	</div>
	<div class="mainhelp">
		<span class="spanhelp1"><img alt="" src="images/c.png"></span>
		<div>
			<span class="spanhelp2"><img alt="" src="images/d.png"></span>

			<ul class="span_ul_title">
				<li class="span_ul_title_li"
					onMouseMove="this.className='span_ul_title_li1'"
					onMouseOut="this.className='span_ul_title_li'"><a
					href="http://pet.pclady.com.cn/160/1605177.html"><span>小宠物约克夏犬的性格特点</span><br>
						<span>身材娇小的约克夏犬可是宠物界的知名人士，一起来了解下...</span></a></li>
				<li class="span_ul_title_li"
					onMouseMove="this.className='span_ul_title_li1'"
					onMouseOut="this.className='span_ul_title_li'"><a
					href="http://pet.pclady.com.cn/159/1592003.html"><span>白色仓鼠
					</span><br> <span>大家都知道仓鼠有很多品种也有很多颜色，白颜色的仓鼠就...</span></a></li>
				<li class="span_ul_title_li"
					onMouseMove="this.className='span_ul_title_li1'"
					onMouseOut="this.className='span_ul_title_li'"><a
					href="http://pet.pclady.com.cn/160/1605122.html"><span>小猫半夜骚扰我们怎么办?
					</span><br> <span>小猫每天要睡很久很久，最痛苦的是，白天你想和他玩一会...</span></a></li>
				<li class="span_ul_title_li"
					onMouseMove="this.className='span_ul_title_li1'"
					onMouseOut="this.className='span_ul_title_li'"><a
					href="http://pet.pclady.com.cn/160/1605205.html"><span>狗狗螨虫病症状是什么？</span><br>
						<span>螨虫也是宠物狗最容易感染的一种寄生虫，情况严重的话会... </span></a></li>
				<li class="span_ul_title_li"
					onMouseMove="this.className='span_ul_title_li1'"
					onMouseOut="this.className='span_ul_title_li'"><a
					href="http://pet.pclady.com.cn/160/1605308.html"><span>金毛受伤了怎么办？</span><br>
						<span> 金毛犬是一种非常温顺的狗狗，经过训练可以成为优秀的导... </span></a></li>
			</ul>


		</div>
	</div>


	<script type="text/javascript">
		var img_arr = [ "images/7.jpg", "images/8.jpg", "images/9.jpg" ];
		var img_elem = document.getElementById("img");
		var i = 1;
		setInterval(function() {

			if (i < img_arr.length) {
				document.getElementById("img").src = img_arr[i];
				i++;
			} else {
				i = 0;
			}
		}, 2000);
	</script>

	<div class="main">
		<div class="main_ul">
			<center>
				<h2>宠物新鲜事</h2>
			</center>
			<hr>
			<br>
			<ul>
				<c:forEach items="${titles }" var="t">

					<li class="ul_li" onMouseMove="this.className='ul_li1'"
						onMouseOut="this.className='ul_li'"><a
						href="contextServlet?action=doShow&id=${t.id }">${t.title}</a></li>

				</c:forEach>
			</ul>
		</div>
	</div>

	<div class="mainother">
		<span><img alt="" src="images/b.png"></span>
		<div class="mainnei">
			<ul class="mainnei_ul">
				<li class="mainnei_ul_li"
					onMouseMove="this.className='mainnei_ul_li1'"
					onMouseOut="this.className='mainnei_ul_li'"><a
					href="http://www.mypethome.com/forum.php?mod=viewthread&tid=10178282">宝贝狗狗可卡犬求好心人领养</a></li>
				<li class="mainnei_ul_li"
					onMouseMove="this.className='mainnei_ul_li1'"
					onMouseOut="this.className='mainnei_ul_li'"><a href="">[爱心领养]
						可爱猫咪 只送有缘人领养喜</a></li>
				<li class="mainnei_ul_li"
					onMouseMove="this.className='mainnei_ul_li1'"
					onMouseOut="this.className='mainnei_ul_li'"><a href="">【北京】两只三月大熊猫兔求领养</a></li>
				<li class="mainnei_ul_li"
					onMouseMove="this.className='mainnei_ul_li1'"
					onMouseOut="this.className='mainnei_ul_li'"><a href="">可爱猫咪
						只送有缘人领养喜欢的联系我</a></li>
				<li class="mainnei_ul_li"
					onMouseMove="this.className='mainnei_ul_li1'"
					onMouseOut="this.className='mainnei_ul_li'"><a href="">5000元酬谢，寻找浙江走丢的雪纳瑞可</a></li>
			</ul>
		</div>

	</div>
	<div class="divpicture">
		<div class="divpicture1">
			<span class="divpicturespan"><img alt=""
				src="images/shishang.png"></span>

			<c:forEach items="${titlesmcs }" var="t">
				<div class="divpicturezixun">
					<img alt="" src="${t.picture }" class="divpicturezixunimg"
						onMouseMove="this.className='divpicturezixunimg1'"
						onMouseOut="this.className='divpicturezixunimg'">
					<p class="divpicturespanp"
						onMouseMove="this.className='divpicturespanp1'"
						onMouseOut="this.className='divpicturespanp'">
						<a href="contextServlet?action=doShow&id=${t.id }">${t.title}</a>
					</p>
				</div>
			</c:forEach>
		</div>

	</div>




	<div class="foot" style="margin-top: 442px; background-color: #2B2B2B;">
		<div class="div_foot">
			<ul class="div_foot_ul">
				<li class="div_foot_ul_li"
					onMouseMove="this.className='div_foot_ul_li1'"
					onMouseOut="this.className='div_foot_ul_li'"><a href="#">首页</a></li>
				<li class="div_foot_ul_li"
					onMouseMove="this.className='div_foot_ul_li1'"
					onMouseOut="this.className='div_foot_ul_li'"><a
					href="http://my.csdn.net/wangzugenwy">联系我们</a></li>
				<li class="div_foot_ul_li"
					onMouseMove="this.className='div_foot_ul_li1'"
					onMouseOut="this.className='div_foot_ul_li'"><a href="#">关于我们</a></li>
				<li class="div_foot_ul_li"
					onMouseMove="this.className='div_foot_ul_li1'"
					onMouseOut="this.className='div_foot_ul_li'"><a href="#">免责声明</a></li>
			</ul>
		</div>

	</div>
</body>
 --%>









	<!-- <a href="titleServlet?action=doShow">显示</a> -->

	<!-- 
<div class = "search_logo" style = "background-image: url('images/c.png');background-repeat: no-repeat;">
			
			<a style = "color:#7B68EE;" href="registerlogin/login.jsp">登录</a> 
			<a style = "color:#7B68EE;size:20px;">/</a>
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
 -->


	<!-- <div>

<a href="titleServlet?action=doShow">首页</a>
<a href="titlesbarServlet?action=doShow">宠物吧</a>
<a href="goodServlet?action=doShow">买卖天下</a>
<a href="titleshspServlet?action=loadMore">宠物健康</a>

<a href="registerlogin/register.jsp">注册</a><a href="registerlogin/login.jsp">登录</a>
<a href="pages/findpassword.jsp">找回密码</a>

</div> -->
	<%-- 
<div class="b-main">
		<div class="b-list" id="list">
			<ul>
				<li class="clearfix"><a href="#" class="b-list-img"><img
						src="./image/a.jpg" width="200" height="135"></a>
					<div class="b-list-txt">
						<h5>
							<a href="#">最新资讯</a>
						</h5>
						<p>
							<c:forEach items="${titles }" var="t">

								<a href="contextServlet?action=doShow&id=${t.id }">${t.title}</a>
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
			<ul><c:forEach items="${titlesmcs }" var="t">
				<li class="clearfix"><a href="#" class="b-list-img"><img
						src="${t.picture }" width="200" height="135"></a>
					<div class="b-list-txt">
						<h5>
							<a href="#">萌宠故事会</a>
						</h5>
						<p>
							

								<a href="contextServlet?action=doShow&id=${t.id }">${t.title}</a>
							
						</p>
						<div class="b-list-tag">

							<a href="#" class="b-list-comment"> </a> <a href="#">狗狗养护</a> <a
								href="#">健康</a>
						</div>
					</div></li>
					</c:forEach>
			</ul>
		</div>
	</div>


 --%>




	<%-- 
<div class="g">
<h1>最新资讯</h1>

        <c:forEach items="${titles }" var="t">
  
             <a href="contextServlet?action=doShow&id=${t.id }">${t.title}</a><br/><br/><br/><br/>
             
             
           
        </c:forEach>
     
        </article>
        </div>
        <h1>萌宠故事会</h1><br/>
        <c:forEach items="${titlesmcs }" var="t">
            <img src="${t.picture }">
             <a href="contextServlet?action=doShow&id=${t.id }">${t.title}</a><br/><br/><br/><br/>  
        </c:forEach>
         --%>
</html>