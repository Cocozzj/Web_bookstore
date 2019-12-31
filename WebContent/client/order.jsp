<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="dao.Product, dao.ProductDao, java.util.List" %>
<%@ page import="java.util.Map, java.util.HashMap" %>
<%@ page import="util.ServletUtils" %>
<%@ page import="javax.servlet.http.Cookie" %>

<html>
<head>
	 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>订单</title>
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
	<div  class="container">
	<h2 class="title">订单详情</h2>
		<table class="table" id="cart_table">
			<thead>
				<tr>
					<td>序号</td>
					<td>商品名称</td>
					<td>价格</td>
					<td>数量</td>
					<td>类别</td>
					<td>小计</td>
				</tr>
			</thead>
			<tbody>
			<c:set var="total" value="0" scope="page"/>
			<c:forEach var="entry" items="<%= cart %>" varStatus="vs">
				<tr >
					<td>${vs.count}</td>
					<td>${entry.key.name}</td>
					<td>${entry.key.price}</td>
					<td>${entry.value}</td>
					<td>${entry.key.category}</td>
					<td>${entry.key.price * entry.value}</td>
					<c:set var="total" value="${total + entry.key.price * entry.value}"/>
				</tr>
			</c:forEach>
				<tr>

					<td colspan="6" style="text-align: right">合计：${total}</td>
				</tr>
			</tbody>				
		</table>
	</div>

		            <div class="footer-content">
	<div class="contact-form-container">
		
		<div class="container">
			<ul class="breadcrumb text-center">
				<li>Home</li>
				<li class="active">Contact</li>
			</ul><!-- /.breadcrumb -->

			<div class="row inner-top-md">
				<div class='col-md-10 center-block'>
					<div class="contact-block">
						<div class="contact-form-envelope">
							<div class="contact-box">
								<div class="row">
									<div class="col-md-8 col-sm-8">
										<div class="contact-form">
											<form id="contact-form" class='form-horizontal contact-form' action="${pageContext.request.contextPath}/CreateOrderServlet" method="post">
												<div class="form-group">
													<label class="control-label col-sm-3 info-title" for="name">收货人</label>
													<div class="col-sm-9">
														<input id="name" class="form-control bookshop-form-control" type="text" placeholder="Hezy Theme" name="name">
													</div><!-- /.col -->
												</div><!-- /.form-group -->
												<div class="form-group">
													<label class="control-label col-sm-3 info-title" for="email">联系方式</label>
													<div class="col-sm-9">
														<input id="email" class="form-control bookshop-form-control" type="text" placeholder="" name="phone">
													</div><!-- /.col -->
												</div><!-- /.form-group -->

									

												<div class="form-group">
													<label class="control-label col-sm-3 info-title" for="message">收货地址</label>
													<div class="col-sm-9">
														<textarea id="message" name="address" class="form-control bookshop-form-control" rows="5"></textarea>
													</div><!-- /.col -->
												</div><!-- /.form-group -->

												<div class="form-group">
													<label class="control-label col-sm-3 info-title sr-only" ></label>
													<div class="col-sm-9">
														<button class="btn-uppercase btn btn-primary " type="submit">提交订单</button>
														<input type="button" class="btn-uppercase btn btn-primary" onclick="javascript:window.location.href='${pageContext.request.contextPath}/client/cart.jsp'" value="返回购物车">
													</div><!-- /.col -->
												</div><!-- /.form-group -->
												
											</form>
										</div><!-- /.contact-form -->
									</div><!-- /.col -->
									
								</div><!-- /.row -->
							</div><!-- /.contact-box -->
						</div><!-- /.contact-form-envelope -->
					</div>
				</div>
			</div><!-- /.row -->
		</div><!-- /.container -->
	</div><!-- /.contact-form-container -->
</div>
	
</body>
</html>