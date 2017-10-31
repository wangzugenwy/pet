<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="stylesheet" href="assets/css/reset.css">
<link rel="stylesheet" href="assets/css/supersized.css">
<link rel="stylesheet" href="assets/css/style.css">
<script src="assets/js/jquery-1.8.2.min.js"></script>
<script src="assets/js/supersized.3.2.7.min.js"></script>
<script src="assets/js/supersized-init.js"></script>
<script src="assets/js/scripts.js"></script>
<title>登录</title>
 <style>
            .state1{
                color:#aaa;
            }
            .state2{
                color:#000;
            }
            .state3{
                color:red;
            }
            .state4{
                color:green;
            }
            .a{
               margin-top: 100px;
       
            }
            .b{
               height: 300px;
	           width: 400px;
	           margin-left: 50px;
	           margin-top:10px;
	           float: left;
            
            }
            .c{background-color: #008ead;
            }
         .d{border:0px;
           
         }
        </style>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery-2.1.4.min.js"></script>
<script>
            $(function(){
 
                var ok1=false;
                var ok2=false;
                var ok3=false;
                var ok4=false;
                // 验证用户名
                $('input[name="name"]').focus(function(){
                    $(this).next().text('用户名应该为3-20位之间').removeClass('state1').addClass('state2');
                }).blur(function(){
                    if($(this).val().length >= 3 && $(this).val().length <=12 && $(this).val()!=''){
                        $(this).next().text('输入成功').removeClass('state1').addClass('state4');
                        ok1=true;
                    }else{
                        $(this).next().text('用户名应该为3-20位之间').removeClass('state1').addClass('state3');
                    }
                     
                });
 
                //验证密码
                $('input[name="password"]').focus(function(){
                    $(this).next().text('密码应该为6-20位之间').removeClass('state1').addClass('state2');
                }).blur(function(){
                    if($(this).val().length >= 6 && $(this).val().length <=20 && $(this).val()!=''){
                        $(this).next().text('输入成功').removeClass('state1').addClass('state4');
                        ok2=true;
                    }else{
                        $(this).next().text('密码应该为6-20位之间').removeClass('state1').addClass('state3');
                    }
                     
                });
 
                //验证确认密码
                    $('input[name="repass"]').focus(function(){
                    $(this).next().text('输入的密码要和上面的密码一致').removeClass('state1').addClass('state2');
                }).blur(function(){
                    if($(this).val().length >= 6 && $(this).val().length <=20 && $(this).val()!='' && $(this).val() == $('input[name="password"]').val()){
                        $(this).next().text('输入成功').removeClass('state1').addClass('state4');
                        ok3=true;
                    }else{
                        $(this).next().text('输入的密码要和上面的密码一致').removeClass('state1').addClass('state3');
                    }
                     
                });
 
               
                $('.submit').click(function(){
                    if(ok1 && ok2 && ok3 ){
                        $('form').submit();
                    }else{
                        return false;
                    }
                });
                 
            });
        </script>
</head>
<body>

<div class="page-container">
		<h1>登录</h1>
		<form action="../loginServlet" method="post">
			<input type="text" name="name" class="username" placeholder="用户名">
			<em class='state1'>请输入用户名</em>
			<input type="password" name="password" class="password"
				placeholder="密码"> <span class='state1'>请输入密码</span>
				<input type="password" name="repass"
				class="password" placeholder="确认密码"><span class='state1'>请输入确认密码</span>
			<button type="submit">提交</button>
			<button type="reset">重置</button>
			<div class="error">
				<span>+</span>
			</div>
		</form>
	</div>


<!-- 
<h1 align="center"></h1>
<div class="b">

</div>
<div  class="a" align="center">

<fieldset class="d">
<legend>用户登录</legend>
<form action="../loginServlet" method="post" >
用户名:<input type="text" name="name"> <span class='state1'>请输入用户名</span><br/><br/><br/>
密码:<input type="password" name="password"> <span class='state1'>请输入密码</span><br/><br/><br/>
 确认密码:<input type="password" name="repass"><span class='state1'>请输入确认密码</span><br/><br/><br/>
<input type="submit" value="提交" class="submit">
<input type="reset" value="重置">
</form>
</fieldset>
</div> -->
</body>
</html>