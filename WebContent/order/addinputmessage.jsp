<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加</title>

<link rel="stylesheet" href="assets/css/reset.css">
<link rel="stylesheet" href="assets/css/supersized.css">
<link rel="stylesheet" href="assets/css/style.css">
<script src="assets/js/jquery-1.8.2.min.js"></script>
<script src="assets/js/supersized.3.2.7.min.js"></script>
<script src="assets/js/supersized-init.js"></script>
<script src="assets/js/scripts.js"></script>
</head>



<body class="c">

<div class="page-container">
		<h1>欢迎添加！</h1>
		<form action="../OrderServlet?action=doAdd" method="post">
			<input type="text" name="name" class="useraddress" placeholder="地址:">
			<span class='state1'>请输入地址</span>
			<input type="text" name="phone" class="password"
				placeholder="电话:"> <span class='state1'>请输入电话</span>
				<input type="text" name="ynpay"
				class="text" placeholder="是否付款:"><span class='state1'>请输入是否付款</span>
			<button type="submit">提交</button>
			<button type="reset">重置</button>
			
		</form>
	</div>
<!-- h1 align="center">欢迎添加！</h1>
<div align="center" class="a">
<div class="b">
<img src="../images/c.jpg" width=600px; height=400px;>
</div>
<fieldset class="d">
<legend>用户输入</legend>
<form action="../OrderServlet?action=doAdd" method="post" >
地址:<input type="text" name="useraddress">  <span class='state1'>请输入地址</span><br/><br/>
电话:<input type="text" name="phone">  <span class='state1'>请输入电话</span><br/><br/>
是否付款:<input type="text" name="ynpay">  <span class='state1'>请输入是否付款</span><br/><br/>
<input type="submit" value="提交" class="submit">       
<input type="reset" value="重置">
</form>
</fieldset> -->
</body>
</html>