<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="resources/style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="resources/js/jquery.js"></script> 
<script type="text/javascript"
	src="resources/js/jquery.i18n.properties-1.0.9.js"></script>
<script type="text/javascript"
	src="resources/js/jquery-ui-1.10.3.custom.js"></script>
<script type="text/javascript" src="resources/js/jquery.validate.js"></script>
<script type="text/javascript" src="resources/js/page_regist.js?lang=zh"></script>
<title>找回密码</title>
</head>
<body class = "loginbody">


<form action="../userServlet?action=doFindpassword" method="post">
<div class ="dataEya">
	<div class ="loginbox registbox">
	
	           <div class="logo-a">
					<a href="login.jsp" title=""> <img
						src="resources/images/logo-a.png">
					</a>
				</div>
				<div class = "login-content reg-content">
				
						<div class="loginbox-title">
						<center>
							<h3>找回密码</h3>
						</center>
					</div>
					<div class="login-error"></div>
					<div class="row">
						<label class="field" for="email">修改用户名</label> <input type="text"
							value="" class="input-text-user noPic input-click" name="name"
							id="email"><br>
					</div>
					<div class ="row">
						<label class="field" for="phone">电话</label> <input
							type="password" value=""
							class="input-text-password noPic input-click" name="password"
							id="password">
					</div>
					<div class="row btnArea">
						<input class="login-btn" id="submit" type="submit" value="提交"><br>
					</div>

					<div class="row btnArea">
						<input class="login-btn" id="submit" type="reset" value="重置">
					</div>
				</div>
	</div>
</div>



<!-- <form action="../userServlet?action=doFindpassword" method="post">
用户名:<input type="text" name="name"><br/>
电话 :<input type="text" name="phone"><br/>
<input type="submit" value="提交"><br/>
<input type="reset" value="重置"><br/> -->
</form>
</body>
</html>