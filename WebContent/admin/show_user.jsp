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
        <c:forEach var="user" items="${users}">
	    <div class="form-horizontal">
	        <input type="hidden" name="id" value="233" />
            <div class="form-group form-group-sm">
                <label class="control-label col-md-2">用户id：</label>
                <div class="col-md-2">
                    <label style="margin-top: 11px;">${user.id}</label>
                </div>
             </div>
            <div class="form-group form-group-sm">
            <label class="control-label col-md-2">用户名：</label>
                <div class="col-md-2">
                    <label style="margin-top: 11px;">${user.username}</label>
                </div>
            </div>
            <div class="form-group form-group-sm">
            <label class="control-label col-md-2">密&nbsp;码：</label>
                <div class="col-md-2">
                    <label style="margin-top: 11px;">${user.password}</label>
                </div>
             
            </div>
            <hr/>
            
        </div>
       </c:forEach>
	</div>
    
</div>

<!-- 最新 jQuery 核心 js 文件 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/jquery.min.js"></script>
<!-- 最新 Angular 核心 js 文件 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/angular/angular.min.js"></script>

</body>
</html>
