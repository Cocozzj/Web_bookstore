<%-- 
	结算页面
	@author: luoxn28
	@date: 2016.5.18
--%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>结算</title>
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


	            <div class="footer-content">
	<div class="contact-form-container">
		
		<div class="container">
			<ul class="breadcrumb text-center">
				<li>Payment</li>
				
			</ul><!-- /.breadcrumb -->

			<div class="row inner-top-md">
				<div class='col-md-10 center-block'>
					<div class="contact-block">
						<div class="contact-form-envelope">
							<div class="contact-box">
								<div class="row">
									<div class="col-md-8 col-sm-8">
										<div class="contact-form">
											<form id="contact-form" class='form-horizontal contact-form' action="${pageContext.request.contextPath}/OrderSuccessServlet">
									<!-- /.form-group -->
												<div class="form-group">
													<label class="control-label col-sm-3 info-title" for="email">支付宝账号</label>
													<div class="col-sm-9">
														<input id="email" class="form-control bookshop-form-control" type="text" placeholder="" name="account">
													</div><!-- /.col -->
												</div><!-- /.form-group -->

												<div class="form-group">
													<label class="control-label col-sm-3 info-title" for="subject">密码</label>
													<div class="col-sm-9">
														<input id="subject" class="form-control bookshop-form-control" type="text" placeholder="" name="password">
													</div><!-- /.col -->
												</div><!-- /.form-group -->
												<div class="form-group">
													<label class="control-label col-sm-3 info-title sr-only" ></label>
													<div class="col-sm-9">
														<button class="btn-uppercase btn btn-primary " type="submit">付款</button>
														
													</div><!-- /.col -->
												</div>
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