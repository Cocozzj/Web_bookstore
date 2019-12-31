<%@ page import="dao.Product" %>
<%@ page import="java.util.Map, java.util.HashMap" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="dao.Order, dao.OrderDao, java.util.List" %>
<%@ page import="util.ServletUtils" %>
<%@ page import="javax.servlet.http.Cookie" %>

<html>
<head>
	 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>已支付</title>
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
	
	%>

<body>
	<div  class="container">
	<h2 class="title">购买清单</h2>
		<table class="table" id="cart_table">
			<thead>
				<tr>
					<th>付款金额</th>
					<th>收件人</th>
					<th>联系方式</th>
					<th>下单时间</th>
					<th>收件地址</th>
				</tr>
			</thead>
			<tbody>
			
			<c:forEach var="order" items="${orderSet}">
				<tr >
					
					<td>${order.money}</td>
					<td>${order.receiveName}</td>
					<td>${order.receivePhone}</td>
					<td >${order.orderTime}</td>
					<td>${order.receiveAddress}</td>
				
				</tr>
			</c:forEach>
			</tbody>			
		</table>
	</div>
</body>
</html>