<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="<%request.getContextPath(); %>pages/header/index2.css" />
<link rel="stylesheet" href="<%request.getContextPath(); %>pages/header/toubu1.css" />
<script src="<%request.getContextPath(); %>/pages/header/jquery-1.8.3.min.js"></script>
<script src="<%request.getContextPath(); %>/pages/header/head.js"></script>

<title>首页</title>
</head>
<body>
	
		<div class="backimg">
		<a id="borderImg" class="borderImg" hidefocus="true" href="#"></a>
		<div id="prefunction" onclick="prefunction(this)"
			style="background-image: url('image/left.png'); position: absolute; top: 350px; left: 25px; z-index: 32; background-repeat: no-repeat; overflow: hidden; display: block;rgba(0,0,0,0.1);">

			<div style="width: 90px; height: 90px;"></div>
		</div>
		<div id="nextfunction" onclick="nextfunction(this)"
			style="background-image: url('image/right.png'); position: absolute; top: 350px; right: -5px; z-index: 32; background-repeat: no-repeat; overflow: hidden; display: block;rgba(0,0,0,0.1);">
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
		<div id="primaryTitle">宠物大联盟欢迎您!</div>
		<div id="primaryTitle" style="text-align: center;">${user.username}</div>
		<div id="subTitle"></div>
	</div>


	<div class="formMiddleContent1" tabStyle="0">
		<div class="floatBtnBox1">
			<a id="module471FlBtn1"
				href='modifypassword.jsp'
				target="_self" class="middlefloatBtn">修改密码</a>
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
			<div class="formContentdiv1" style="margin-top: 80px;">宠物医院成立于1998年隶属于医疗集团股份有限公司，全国共有近百家直营分院，分布于上海、广州、深圳、长沙。</div>
			<div class="formContentdiv1">凭借阵容强大的专家团队、媲美港台的医疗设备、遵循规范、严谨的作业流程，每年为几十万只宠物提供高品质的服务。服务范围涵盖：宠物医疗保健、</div>
			<div class="formContentdiv1" style="margin-top: 50px;">美容造型、寄养、洗浴、SPA、食品及用品等。拥有一批高学历、临床经验丰富的宠物医师，其中硕士35人、</div>
			<div class="formContentdiv1">博士2人，执业兽医师328人。有完善的宠物内科、心血管科、</div>
			<div class="formContentdiv1">骨科、软组织外科、眼科、肿瘤科、牙科、皮肤科、影像科、猫科等科室，并在宠物骨科、眼科、肿瘤科、牙科、皮肤科等领域综合实力领跑全国。</div>
		</div>
		<div class="module">
			<div class="modulespan">预约医生</div>
			<div class="modulespan1">加盟咨询</div>
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

						<div class="bendiConTitle" onMouseMove="this.className='bendiConTitle1'"
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
						</div>
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

						<div class="bendiConTitle" onMouseMove="this.className='bendiConTitle1'"
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
						</div>
					</div>


				</div>
			</div>

		</div>



		<div class="stroy">
			<div class="storyTitle">萌宠故事会</div>
			<div class="storyContent">
				<c:forEach items="${titlesmcs }" var="t">
					<div class="storyCon">

						<img alt="" src="${t.picture }">
						<p>
							<a class="storyContentA"
								href="contextServlet?action=doShow&id=${t.id }">${t.title}</a>
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
						<img src="image/maomi.jpg"> 
						<img src="image/maomi1.jpg">
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

</body>
</html>