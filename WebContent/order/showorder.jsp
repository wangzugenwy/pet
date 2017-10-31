<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<style type="text/css">

table {
	border-collapse:collapse;
	margin-bottom:15px;
	width:90%;
	}
	
	caption {
		text-align:left;
		font-size:15px;
		padding-bottom:10px;
		}
	
	table td,
	table th {
		padding:5px;
		border:1px solid #fff;
		border-width:0 1px 1px 0;
		}
		
	thead th {
		background:#91c5d4;
		}
			
		thead th[colspan],
		thead th[rowspan] {
			background:#66a9bd;
			}
		
	tbody th,
	tfoot th {
		text-align:left;
		background:#91c5d4;
		}
		
	tbody td,
	tfoot td {
		text-align:center;
		background:#d5eaf0;
		}




</style>
</head>




<body style="background-color: #E5E5E5;">

<center><img alt="" src="resources/images/logo-a.png">
<!-- <a href="pages/addinputuser.jsp">增加</a> -->
<h1>欢迎您:${user.username}来到订单列表</h1>
<table border="1px" class = "table">
<caption ><em style="size: 30px;">订单详情</em></caption>
<thead>
		<tr>
		    <th scope="col">编号</th>
		    <th scope="col">用户名</th>
			<th scope="col">地址</th>
			<th scope="col">电话</th>
			<
			<th scope="col">商品号</th>
			<th scope="col">价格</th>
			<th scope="col">数量</th>
			
			<th scope="col">日期</th>
			<th scope="col">是否付款</th>
			<th scope="col">删除</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${order}" var="b">
			
				<tr>		
				<td class = "td2">${b.id}</td>
				<td class = "td2">${b.username}</td>
				<td class="td1">${b.useraddress}</td>
				<td class="td1">${b.phone}</td>
				
				<td class="td1"><a href="goodcommentServlet?action=doAdd&goodid=${b.goodid}&ynpay=${b.ynpay}">${b.goodid}</a></td>
				<td class="td1">${b.goodprice}</td>
				<td class="td1">${b.goodcount}</td>
				
				<td class="td1">${b.date}</td>
				<td class="td1">${b.ynpay}</td>
				<td class="td1"><a href="OrderServlet?action=doDel&id=${b.id}">删除</a></td>
				</tr>
			</c:forEach>
			
		</tbody>
		</table>
		<div class = "div4">${pages}</div>
</body>
</html>