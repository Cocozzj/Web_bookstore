<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="dao.Product, dao.ProductDao, java.util.List" %>

<html>
<head>
	 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>用户主页 - bookstore</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/main.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap-theme.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style3.css" />
    <!-- Favicon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/images/favicon.ico">

    <link href='http://fonts.googleapis.com/css?family=PT+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Fira+Sans:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
</head>
<body ng-app="App" ng-controller="mainController" class="ng-scope">
 
        <%@ include file="../util/admin_head.jsp" %>
<div class="cat_add">
	<div class="cat_add_header">
	    <div class="icon"></div>
	    <div class="title">文章内容查看</div>
	</div>
	<div class="cat_add_form">
        <c:forEach var="product" items="${products}">
	    <div class="form-horizontal">
	        <input type="hidden" name="id" value="233" />
            <div class="form-group form-group-sm">
                <label class="control-label col-md-2">商品id：</label>
                <div class="col-md-2">
                    <label style="margin-top: 11px;">${product.id}</label>
                </div>
                <label class="control-label col-md-2">商品名：</label>
                <div class="col-md-2">
                    <label style="margin-top: 11px;">${product.name}</label>
                </div>
            </div>
            <div class="form-group form-group-sm">
            <label class="control-label col-md-2">商品价格：</label>
                <div class="col-md-2">
                    <label style="margin-top: 11px;">$${product.price}</label>
                </div>
                <label class="control-label col-md-2">商品种类：</label>
                <div class="col-md-2">
                    <label style="margin-top: 11px;">${product.category}</label>
                </div>
                <label class="control-label col-md-2">商品库存：</label>
                <div class="col-md-2">
                    <label style="margin-top: 11px;">${product.num} </label>
                </div>
            </div>
            <div class="form-group form-group-sm">
                <label class="control-label col-md-2">文章图片：</label>
                <div class="col-md-2">
                    <label style="margin-top: 11px;"><img src="${pageContext.request.contextPath}/assets/images/book-covers/${product.imgurl}" width="140" height="212"></label>
                </div>
                <label class="control-label col-md-2">描述：</label>
                <div class="col-md-2">
                    <label style="margin-top: 11px;">${product.description}</label>
                </div>
            </div>
            <div class="form-group form-group-sm" style="margin-top: 30px;">
                <div class="col-md-3 col-md-offset-3">
                    <div class="btn-group">
                        <button style="margin-right: 15px;" type="button" class="btn btn-default btn-sm" onclick="javascript:window.location.href='${pageContext.request.contextPath}/DeleteProduct?id=${product.id}'" title="删除"><i class="glyphicon glyphicon-chevron-left"></i>删除</button>
                    </div>
                </div>
            </div>
        </div>
        <hr/>
       </c:forEach>
	</div>
    
</div>

<!-- 最新 jQuery 核心 js 文件 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/jquery.min.js"></script>
<!-- 最新 Angular 核心 js 文件 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/angular/angular.min.js"></script>

</body>
</html>
