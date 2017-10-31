<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">



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
	href="<%=request.getContextPath()%>/pages/header/toubu.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>买卖天地</title>
</head>
<body onload="window.scrollTo(900,1300)">

<div class="backimg" >
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
		<div class="fullmeasureOuterContentTitle">选宠技巧</div>
		<div class="fullmeasureOuterCon">
			<div class="fullmeasureOuterConImg" id="fullmeasureOuterConImg">
				<%-- <img alt="" src="<%=request.getContextPath()%>/pages/image/niu.jpg"> --%>
			</div>
			<div class="fullmeasureOuterCont">
				<div class="fullmeasureOuterCont1" id="fullmeasureOuterCont1">
					<div class="fullTitle">挑选健康的牛头梗犬</div>
					<div class="fullCon">每位饲养狗狗的朋友，都希望自己的狗狗健康漂</div>
					<div class="fullCon">亮。对于牛头梗犬来说，每位饲养的主人都希望</div>
					<div class="fullCon">那个它有着硕...</div>
				</div>
				<div class="fullmeasureOuterCont1" id="fullmeasureOuterCont2">
					<div class="fullTitle">加菲猫不是理想异国短毛猫</div>
					<div class="fullCon">说道加菲猫我们大家对这个名称肯定都非常的熟</div>
					<div class="fullCon">悉，它是人们追逐喜爱的宠物猫品种之一。但是</div>
					<div class="fullCon">也有人说加菲...</div>
				</div>
				<div class="fullmeasureOuterCont1" id="fullmeasureOuterCont3">
					<div class="fullTitle">挑选健康仓鼠需看七个要素</div>
					<div class="fullCon">选择一只健康仓鼠，要选择眼睛有神没有眼屎的</div>
					<div class="fullCon">鼠鼠；看看鼠鼠有没有流鼻水，有的话不要挑；</div>
					<div class="fullCon">耳朵的形状是...</div>
				</div>
			</div>
		</div>

		<script>
			var btn = document.getElementById("fullmeasureOuterCont1");
			var bj = document.getElementById("fullmeasureOuterConImg");
			btn.onmouseover = function() { //悬浮的更换背景
				bj.style.backgroundImage = "url(" + image / niu.jpg + ')';
			}
		</script>
		<script>
			var btn = document.getElementById("fullmeasureOuterCont2");
			var bj = document.getElementById("fullmeasureOuterConImg");
			btn.onmouseover = function() { //悬浮的更换背景
				bj.style.backgroundImage = "url(" + image / mao.jpg + ')';
			}
			btn.onmouseover = function() {
				btn.style.backgroundColor = red;
			}
		</script>
		<script>
			var btn = document.getElementById("fullmeasureOuterCont3");
			var bj = document.getElementById("fullmeasureOuterConImg");
			btn.onmouseover = function() { //悬浮的更换背景
				bj.style.backgroundImage = "url(" + image / su.jpg + ')';
			}
		</script>

	</div>


	<div class="fullmeasureOuterContent1">

		<div class="easyui-layout"
			style="width: 1300px; height: 500px; margin: 0 auto; margin-top: 20px;">

			<!--  <div data-options="region:'north'" style="height:50px"></div>

        <div data-options="region:'south',split:true" style="height:50px;"></div> -->

			<div data-options="region:'east',split:true" title="个人信息"
				style="width: 200px;">
				<div class="info">
					<marquee style="font-size: 20px;">欢迎您！</marquee>
				</div>
				<div class="infoImg">
					<img src="${user.picture}">
					<div class="infoname">${user.username}</div>
				</div>
				<div class="info1">
					<a href="buyCarServlet?action=doShow">购物车</a>
				</div>
				<div class="info1">
					<a href="OrderServlet?action=doShow">查看订单</a>
				</div>


			</div>

			<div data-options="region:'west',split:true" title="商品分类"
				style="width: 200px;">
				<div class="shopfenlei">
					<!-- <!-- 	<div style="margin:10px 0;"></div> 
   		 <input class="easyui-searchbox" data-options="prompt:'请输入...',searcher:doSearch" style="width:100px;text-align: center;"></input>
    	<script>
        function doSearch(value){
            alert('您输入的是: ' + value);
        }
    </script>	 -->
					搜索
				</div>
				<div class="shopfenlei">
					<a href="goodServlet?action=doFindgoodbytype&type=狗粮">狗粮</a>
				</div>
				<div class="shopfenlei">
					<a href="goodServlet?action=doFindgoodbytype&type=猫粮">猫粮</a>
				</div>
				<div class="shopfenlei">
					<a href="goodServlet?action=doFindgoodbytype&type=其他">其他</a>
				</div>


			</div>

			<div data-options="region:'center',iconCls:'icon-ok'" title="商品展示">
				<div class="shopCon">
	
	
				    <c:forEach items="${total }" var="good">
   
    <%--        
            </a>
         <footer>
            	${good.goodname } 
          </footer>
          <figcaption>
          
             单价:${good.goodprice}
            <a href="buyCarServlet?goodid=${good.id }&action=doAdd&userid=${user.id}&goodcount=1&goodpicture=${good.goodpicture}&goodtype=${good.goodtype }&goodprice=${good.goodprice}">加入购物车</a>
         </figcaption>  
      </figure>
        </c:forEach>
	 --%>
	
	
	
					
						<div class="shopInfo">
							<a href="goodServlet?action=doLoad&id=${good.id }" name="here">
            	<img src="${good.goodpicture }"></a>
						</div>
					</c:forEach>
					<%-- 				<a href="BookServlet?action=doLoad&id=${b.id }">
            	<img src="${b.goodpicture }">
            </a>
         <footer>
            	${b.goodcount } 
          </footer>
          <figcaption>
          
               总价:${b.goodtotalmoney}
           
         </figcaption>  
      </figure> --%>

					<!-- <div class="shopInfo"></div>
					<div class="shopInfo"></div>
					<div class="shopInfo"></div>
					<div class="shopInfo"></div>
					<div class="shopInfo"></div>
					<div class="shopInfo"></div>
					<div class="shopInfo"></div> -->
				</div>
				<div class="shopTit">${pages }</div>
			</div>

		</div>

	</div>


	<div class="fullmeasureOuterContent2">
		<div class="storyTitle">萌宠故事</div>
		<div class="story">
			<div class="storyImg">
				<img alt=""
					src="<%=request.getContextPath()%>/pages/image/dongyao.jpg">
				<div class="storyImgTitle">动摇哈士奇犬界地位的就是它</div>
			</div>
			<div class="storyImg1">
				<img alt="" src="<%=request.getContextPath()%>/pages/image/zhu.jpg">
				<div class="storyImgTitle1">这只猪每天把自己当成狗</div>
				<img alt=""
					src="<%=request.getContextPath()%>/pages/image/caiquan.jpg">
				<div class="storyImgTitle2">柴犬按每次洗澡的时候，总摆出一副很帅的样子</div>
				<img alt=""
					src="<%=request.getContextPath()%>/pages/image/zhuren.jpg">
				<div class="storyImgTitle3">主人从小就喜欢阿拉斯加抱起来，可长大</div>
				<img alt=""
					src="<%=request.getContextPath()%>/pages/image/maimeng.jpg">
				<div class="storyImgTitle4">卖萌犯规！你们这些小奶汪，以为呲个牙就</div>
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
	</div>


















<%-- <h1 class="h">宠粮购物城</h1>

  <div class="r">
  <div class="u">
   <img src="${user.picture}" class="p"><br>欢迎您!${user.username}
  </div>
  <div class="y">
  <h2>个人信息</h2>
 <h3>
 
  
  <h3><a href="buyCarServlet?action=doShow">购物车</a></h3>
   <h3><a href="OrderServlet?action=doShow">查看订单</a></h3>
   </div>
  <div class="a">
<article>
<!-- <header>
 购物车列表 
      </header> -->
        <c:forEach items="${buycar }" var="b">
   <figure>
           <a href="BookServlet?action=doLoad&id=${b.id }">
            	<img src="${b.goodpicture }">
            </a>
         <footer>
            	${b.goodcount } 
          </footer>
          <figcaption>
          
               总价:${b.goodtotalmoney}
           
         </figcaption>  
      </figure>
        </c:forEach>
     
        </article>
        </div>
      ${pages }
  
  
  
  </div>
<span><a href="goodServlet?action=doFindgoodbytype&type=狗粮">狗粮</a></span>&nbsp;&nbsp;&nbsp;&nbsp;<span><a href="goodServlet?action=doFindgoodbytype&type=猫粮">猫粮</a></span>&nbsp;&nbsp;&nbsp;&nbsp;<span><a href="goodServlet?action=doFindgoodbytype&type=其他">其他</a></span>
<form action="BookServlet?action=doLook" method="post">
查询:<input type="text" name="look">
</form>
<div class="g">
<article>
<header>
 商品列表
      </header>
        <c:forEach items="${total }" var="good">
   <figure>
           <a href="goodServlet?action=doLoad&id=${good.id }">
            	<img src="${good.goodpicture }">
            </a>
         <footer>
            	${good.goodname } 
          </footer>
          <figcaption>
          
             单价:${good.goodprice}
            <a href="buyCarServlet?goodid=${good.id }&action=doAdd&userid=${user.id}&goodcount=1&goodpicture=${good.goodpicture}&goodtype=${good.goodtype }&goodprice=${good.goodprice}">加入购物车</a>
         </figcaption>  
      </figure>
        </c:forEach>
     
        </article>
        </div>
      ${pages } --%>
      
		
</body>
</html>