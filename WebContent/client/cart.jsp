
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="dao.Product" %>
<%@ page import="java.util.Map, java.util.HashMap" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="dao.Product, dao.ProductDao, java.util.List" %>
<%@ page import="util.ServletUtils" %>
<%@ page import="javax.servlet.http.Cookie" %>

<html>
<head>
	 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>购物车</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<script src="${pageContext.request.contextPath}/js/index.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/js/angular.min.js" type="text/javascript" charset="utf-8"></script>
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/main.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<script src="${pageContext.request.contextPath}/js/index.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/js/angular.min.js" type="text/javascript" charset="utf-8"></script>
    <!-- Favicon -->
    <link rel="shortcut icon" href="../assets/images/favicon.ico">

    <link href='http://fonts.googleapis.com/css?family=PT+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Fira+Sans:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
    <style type="text/css">
    	.title{
	text-align: center;
	position: relative;
	font-weight: normal;
	margin-bottom: 30px;
	color: #666;
}
.title:after,.title:before{
	content: '';
	position: absolute;
	top: 50%;
	width: 45%;
	background: #999;
	height: 1px;
}
.title:before{
	left: 0;
}
.title:after{
	right: 0;
}
    </style>
</head>
<body>
	<%@ include file="../util/head.jsp" %>

	<%
		Cookie cookie = ServletUtils.getCookie(request, "user");
		if (cookie == null) {
			response.getWriter().println("抱歉，你当前还未登录，2秒后调到登录页面");
			response.addHeader("refresh", "2;url=" + request.getContextPath() + "/client/login.jsp");
			return;
		}
		String userId = "cart" + cookie.getValue();
		Map<Product, Integer> cart = (Map<Product, Integer>) session.getAttribute(userId);
		if (cart == null) {
			response.getWriter().println("抱歉，你当前还未购买任何商品，2秒后调到主页");
			response.addHeader("refresh", "2;url=" + request.getContextPath() + "/client/index.jsp");
			return;
		}
	%>

<body>
	<div  class="container">
	<h2 class="title">购物车</h2>
		<table class="table" id="cart_table">
			<thead>
				<tr>
					<th>产品编号</th>
					<th>产品名字</th>
					<th>购买数量</th>
					<th>产品单价</th>
					<th>产品总价</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
			<c:set var="total" value="0" scope="page"/>
			<c:forEach var="entry" items="<%= cart %>" varStatus="vs">
				<tr >
					<td>${vs.count}</td>
					<td>${entry.key.name}</td>
					<td>
						<button type="button"  onclick="javascript:window.location.href='${pageContext.request.contextPath}/DeleteCartServlet?id=${entry.key.id}'" class="btn btn-primary btn-sm">-</button>
						<input type="text" style="text-align: center;" value="${entry.value}">
						<button type="button"  onclick="javascript:window.location.href='${pageContext.request.contextPath}/AddCarServlet?id=${entry.key.id}'" class="btn btn-primary btn-sm">+</button>
					</td>
					<td >${entry.key.price}</td>
					<td>${entry.key.price * entry.value}</td>
					<td><button type="button" onclick="javascript:window.location.href='${pageContext.request.contextPath}/ChangeCartServlet?id=${entry.key.id}'" class="btn btn-danger btn-sm">删除</button></td>
					<c:set var="total" value="${total + entry.key.price * entry.value}"/>
				</tr>
			</c:forEach>
				<tr>

					<td colspan="3" style="text-align: right">合计：${total}</td>
					<td colspan="2" style="text-align: right"><button type="button" onclick="window.open('${pageContext.request.contextPath}/client/order.jsp')"  class="btn btn-danger btn-sm">结账</button></td>
					<td colspan="2" ><button type="button" onclick="avascript:window.location.href='${pageContext.request.contextPath}/client/index.jsp'"  class="btn btn-danger btn-sm">继续购物</button></td>
				</tr>
			</tbody>				
		</table>
	</div>
</body>
</html>