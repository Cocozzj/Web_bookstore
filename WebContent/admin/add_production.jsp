<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>添加书籍</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!-- 最新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap-theme.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style3.css" />
<!-- Bootstrap -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="../assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="../assets/css/animate.min.css" rel="stylesheet">
    <link href="../assets/css/main.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/main.js"></script>
    <!-- Favicon -->
    <link rel="shortcut icon" href="../assets/images/favicon.ico">

    <link href='http://fonts.googleapis.com/css?family=PT+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Fira+Sans:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>

</head>
	<%@ include file="../util/admin_head.jsp" %>
<body ng-app="App" ng-controller="mainController" class="ng-scope">
<div class="cat_add">
	<div class="cat_add_header">
	    <div class="icon"></div>
	    <div class="title">添加商品</div>
	</div>
	<div class="cat_add_form">
	    <form class="form-horizontal" action="${pageContext.request.contextPath}/AddProductionServlet" method="post" onsubmit="return validate_add_product(this)" >
	        <input type="hidden" name="id" value="233" />
            <div class="form-group form-group-sm">
                <label class="control-label col-md-1">商品名</label>
                <div class="col-md-3">
                    <input class="form-control input-lg" type="text" name="name" value="" placeholder="请输入文章标题" />
                </div>
                <span class="glyphicon glyphicon-asterisk star"></span>
                <label class="explain">请输入15字的以内的中文字符</label>
            </div>
            <div class="form-group form-group-sm">
                <label class="control-label col-md-1">价&nbsp;格</label>
                <div class="col-md-3">
                    <input class="form-control input-lg" type="text" name="price" value="" placeholder="请输入价格" />
                </div>
                <span class="glyphicon glyphicon-asterisk star"></span>
                <label class="explain">请输入商品单价</label>
            </div>
            <div class="form-group form-group-sm">
                <label class="control-label col-md-1">文章图片</label>
                <div class="col-md-3">
                       
                      <input type="file" name="imgurl" value="" />
                </div>
                <span class="glyphicon glyphicon-asterisk star"></span>
                <label class="explain">请上传一张图片</label>
            </div>
            <div class="form-group form-group-sm">
                <label class="control-label col-md-1">类别名称</label>
                <div class="col-md-3">
                    <select class="form-control input-lg" id="cat_id" name="category" style="margin-left:-15px;margin-top: 5px;">
                        <option value="null">--请选择--</option>
						<option value="文学">文学</option>
						<option value="生活">生活</option>
						<option value="计算机">计算机</option>
						<option value="外语">外语</option>
						<option value="经营">经营</option>
						<option value="励志">励志</option>
						<option value="社科">社科</option>
						<option value="学术">学术</option>
						<option value="少儿">少儿</option>
						<option value="艺术">艺术</option>
                    </select> 
                </div>
            </div>
            <div class="form-group form-group-sm">
                <label class="control-label col-md-1">数量</label>
                <div class="col-md-3">
                    <input class="form-control input-lg" type="text" name="num" value="" placeholder="请输入库存" />
                </div>
                <span class="star"></span>
            </div>
            <div class="form-group form-group-sm">
                <label class="control-label col-md-1">简介</label>
                <div class="col-md-3">
                    <textarea class="form-control" rows="5" name="description" placeholder="请输入书籍简介" style="margin-left: -17px;"></textarea>
                </div>
                <span class="glyphicon glyphicon-asterisk star"></span>
                <label class="explain" style="margin-top: 52px;">请输入50字以内</label>
            </div>
        	<div class="form-group form-group-sm" style="margin-top: 30px;">
                <div class="col-md-3 col-md-offset-2">
                    <div class="btn-group">
                        <button type="submit" class="btn btn-danger btn-sm" title="添加"><i class="glyphicon glyphicon-floppy-save"></i> 添加</button>
                         &nbsp;&nbsp;&nbsp;<input type="reset" class="btn btn-danger btn-sm"/>
                    </div>
                </div>
            </div>
	    </form>
	</div>
    
</div>

<!-- 最新 jQuery 核心 js 文件 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/jquery.min.js"></script>
<!-- 最新 Angular 核心 js 文件 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/angular/angular.min.js"></script>
<!-- 最新 ocLazyLoad 核心 js 文件 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/ocLazyLoad/ocLazyLoad.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/angular/provider.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/angular/service.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/angular/directives.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/angular/filters.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/app.js"></script>
</body>
</html>