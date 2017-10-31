<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

<link  rel="stylesheet" href="resources/style/main.css" />
<link rel="stylesheet" type="text/css" href="resources/style/sinaFaceAndEffec.css" />
<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.0.min.js"></script> -->
<script type="text/javascript" src="resources/js/jquery-1.8.0.min.js"></script>
</head>
<body>
  <c:forEach items="${cs }" var="t">
  
           ${t.comment}:<br/>
          ${t.time }${t.name }
          <img src=${t.picture }>
             
           
           
        </c:forEach>
         发表您想说的话:
        <form action="barcontextServlet?action=doAddqunzhucomment&id=${qunzhuid }" method="post" name = "Message">
		<%-- <center><img alt="" src="resources/images/logo-a.png"> --%>
		<div id="content" style="width: 700px; height: auto;">
			<div class="wrap">
				<div class="comment">
					<div class="content">
						<div class="cont-box">
							<textarea class="text" placeholder="请输入..." name = "comment"></textarea>
						</div>
						<div class="tools-box">
							<div class="operator-box-btn"><span class="face-icon"  >☺</span><span class="img-icon">▧</span></div>
							<div class="submit-btn"><input type="submit" onClick="out()"value="提交评论" /></div>
						</div>
					</div>
				</div>
				<div id="info-show">
					<ul></ul>
				</div>
			</div>
		</div>
		</center>
	</form>
        
        
        
        
        
        
       
        <%-- <form action="barcontextServlet?action=doAddqunzhucomment&id=${qunzhuid } " method="post">
        <textarea name="comment">
        
        
        </textarea>
        <input type="submit" value="提交">
        </form> --%>
</body>
<script type="text/javascript" src="resources/js/main.js"></script>
	<script type="text/javascript" src="resources/js/sinaFaceAndEffec.js"></script>
	<script type="text/javascript">
		// 绑定表情
		$('.face-icon').SinaEmotion($('.text'));
		// 测试本地解析
		function out() {
			var inputText = $('.text').val();
			$('#info-show ul').append(reply(AnalyticEmotion(inputText)));
		}
		
		var html;
		function reply(content){
			html  = '<li>';
			html += '<div class="head-face">';
			html += '<img src="images/1.jpg" / >';
			html += '</div>';
			html += '<div class="reply-cont">';
			html += '<p class="username">小小红色飞机</p>';
			html += '<p class="comment-body">'+content+'</p>';
			html += '<p class="comment-footer">2016年10月5日　回复　点赞54　转发12</p>';
			html += '</div>';
			html += '</li>';
			return html;
		}
	</script>
</html>