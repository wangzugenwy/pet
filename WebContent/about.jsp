<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/about/css/toubu.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>关于我们</title>
</head>
<body>
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
					<li><a href="titlesbarServlet?action=doShow">宠物吧</a></li>
					<li><a href="goodServlet?action=doShow">买卖天下</a></li>
					<li><a href="titleshspServlet?action=loadMore">宠物健康</a></li>
					<li><a href="about.jsp">关于我们</a></li>
				</ul>
			</div>
		</div>
	</div>


	<div class="fullmeasureOuterContent">
		<div class="fullmeasureOuterContentTitle">卓越团队</div>
		<div class="fullmeasureOuterCont">知人善任。系统化的团队建设是负责人首要关注的工作内容。</div>
		<div class="fullmeasureOuterCont">知人善任。系统化的团队建设是负责人首要关注的工作内容。</div>
		<div class="fullmeasureOuterCont">知人善任。系统化的团队建设是负责人首要关注的工作内容。</div>
		<div class="fullmeasureOuterCont">知人善任。系统化的团队建设是负责人首要关注的工作内容。</div>
	</div>


	<div class="fullmeasureOuterContent1">

		<img alt="" src="about/image/jisu.png">
	</div>

	<div class="fullmeasureOuterContent2">
		<div class="fullmeasureTitle">
			<div class="fullTitle">团队精神</div>
		</div>
		<div class="fullmeasureCon">
			<div class="fullCon">凭借阵容强大的专家团队、媲美港台的医疗设备、遵循规范、严谨的作业流程，每年为几十万只宠物提供高品质的服务。范围涵盖：</div>
			<div class="fullCon1">宠物医疗保健、美容造型、寄养、洗浴、SPA、食品及用品等。临床经验丰富的宠物医师，其中硕士35人、博士2人，执业兽医师328</div>
			<div class="fullCon1">人。有完善的宠物内科、心血管科、建有完善的宠物内科、心血管科、骨科、软组织外科、眼科、肿瘤科、牙科、皮肤科、影像科、</div>
			<div class="fullCon1">猫科等科室，并在宠物骨科、瘤科、牙科、皮肤科等领域综合实力领跑全国。</div>
			<div class="fullCon1" style="margin-top: 50px;">拥有一批高学历、临床经验丰富的宠物医师，其中硕士35人、博士2人，执业兽医师328人。建有完善的宠物内科、心血管科、骨科、</div>
			<div class="fullCon1">软组织外科、眼科、肿瘤科、牙科、皮肤科、影像科、猫科等科室，并在宠物骨科、眼科、肿瘤科、牙科、皮肤科等领域综合实力领</div>
			<div class="fullCon1">跑全国。</div>

		</div>
		
		<div style="width: 80%;height: 30px;"></div>

	</div>
	<div class="fullmeasureOuterContent3"></div>
	<div class="fullmeasureOuterContent4">
		<img alt="" src="about/image/jiayuan.png">
	</div>
	<div class="fullmeasureOuterContent5">
		<div class = "fullMiddleContent">
			<div class = "fullMiddleContentTitle">团队风采</div>
			<div class = "fullMiddleContentTitle1">—</div>
			<div class = "fullMiddleCon">凭借阵容强大的专家团队、媲美港台的医疗设备、遵循规范、严谨的作业流程每年为几</div>
			<div class = "fullMiddleCon">十万只宠物提供高品质的服务。拥有一批高学历、临床经验丰富的宠物医师，其中硕士</div>
			<div class = "fullMiddleCon">35人、博士2人，执业兽医师328人。</div>
			<div class = "fullMiddleCon" style="margin-top: 40px;">建有完善的宠物内科、心血管科、骨科、软组织外科、眼科、肿瘤科、牙科、皮肤科、</div>
			<div class = "fullMiddleCon">影像科、猫科等科室，并在宠物骨科、眼科、肿瘤科、牙科、皮肤科等领</div>
			<div class = "fullMiddleCon">域综合实力领跑全国。</div>
			<div class = "fullMiddleCon" style="margin-top: 40px;">范围涵盖：宠物医疗保健、美容造型、寄养、洗浴、SPA、食品及用品等。临床经验丰</div>
			<div class = "fullMiddleCon">富的宠物医师，其中硕士35人、博士2人，执业兽医师328人。有完善的宠物内科、心血</div>
			<div class = "fullMiddleCon">管科、骨科、软组织外科、眼科、肿瘤科、牙科、皮肤科、影像科、猫科等科室</div>
		
		</div>
		<div class = "fullMiddleImg">
			<img src="about/image/fencai.jpg">
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
</body>
</html>