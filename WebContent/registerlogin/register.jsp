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
<!-- <script type="text/javascript" src="resources/js/md5.js"></script> -->
<script type="text/javascript" src="resources/js/page_regist.js?lang=zh"></script>

<title>注册页面</title>
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
            .a{margin-top:100px;
            }
              .b{
               height: 300px;
	           width: 400px;
	           margin-left: 50px;
	           margin-top:10px;
	           float: left;
            
            }
            .c{background-color: blue;
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
                var ok5=false;
                var ok6=false;
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
                
                    
                $('.submit').click(function(){
                    if(ok1 && ok2 && ok3 && ok4&& ok5 && ok6){
                        $('form').submit();
                    }else{
                        return false;
                    }
                });
                 
            });
        </script>
</head>
<body class = "loginbody">
<form action="../registerServlet" method="post">
		<div class="dataEye">
			<div class="loginbox registbox">
				<div class="logo-a">
					<a href="login.jsp" title=""> <img
						src="resources/images/logo-a.png">
					</a>
				</div>
				<div class="login-content reg-content">
					<div class="loginbox-title">
						<center>
							<h3>注册</h3>
						</center>
					</div>
					<!-- <form id="signupForm"> -->
					<div class="login-error"></div>
					<div class="row">
						<label class="field" for="email">注册用户名</label> <input type="text"
							value="" class="input-text-user noPic input-click" name="name"
							id="email"><span class='state1'>请输入用户名</span><br />
						<br />
					</div>
					<br />
					<div class="row">
						<label class="field" for="password">密码</label> <input
							type="password" value=""
							class="input-text-password noPic input-click" name="password"
							id="password"><span class='state1'>请输入密码</span><br />
						<br />
					</div>
					<br />
					<div class="row">
						<label class="field" for="passwordAgain">确认密码</label> <input
							type="password" value=""
							class="input-text-password noPic input-click"
							name="passwordAgain" id="passwordAgain">
					</div>
					<br />

					<div class="row">
						<label class="field" for="tel">电话</label> <input type="text"
							value="" class="input-text-user noPic input-click" name="phone"
							id="tel"><span class='state1'>请输入电话</span><br />
						<br />
					</div>
					<br />
					<div class="row tips">
						<input type="checkbox" id="checkBox"> <label>
							我已阅读并同意 <a href="#" target="_blank">隐私政策、服务条款</a>
						</label>
					</div>
					<div class="row btnArea">
						<input class="login-btn" id="submit" type="submit" value="注册"><br>
					</div>

					<div class="row btnArea">
						<input class="login-btn" id="submit" type="reset" value="重置">
					</div>
				</div>
			</div>
		</div>
		
	</form>

	
<script type="text/javascript">
jQuery.focusblur = function(focusid) {
	var focusblurid = $(focusid);
	var defval = focusblurid.val();
	focusblurid.focus(function(){
		var thisval = $(this).val();
		if(thisval==defval){
			$(this).val("");
		}
	});
	focusblurid.blur(function(){
		var thisval = $(this).val();
		if(thisval==""){
			$(this).val(defval);
		}
	});
 
</script>



	<div class="loading">
		<div class="mask">
			<div class="loading-img">
				<img src="resources/images/loading.gif" width="31" height="31">
			</div>
		</div>
	</div>



<!-- 
<h1 align="center">欢迎注册！</h1>
<div align="center" class="a">
<div class="b">
<img src="../images/c.jpg" width=600px; height=400px;>
</div>
<fieldset class="d">
<legend>用户注册</legend>
<form action="../registerServlet" method="post" >
用户名:<input type="text" name="name">  <span class='state1'>请输入用户名</span><br/><br/>
密码:<input type="password" name="password">  <span class='state1'>请输入密码</span><br/><br/>
电话:<input type="text" name="phone">  <span class='state1'>请输入电话</span><br/><br/>
<input type="submit" value="提交" class="submit">       
<input type="reset" value="重置">
</form>
</fieldset>
</div> -->
</body>
</html>