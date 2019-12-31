
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
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="../assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="../assets/css/animate.min.css" rel="stylesheet">
    <link href="../assets/css/main.min.css" rel="stylesheet">

    <!-- Favicon -->
    <link rel="shortcut icon" href="../assets/images/favicon.ico">

    <link href='http://fonts.googleapis.com/css?family=PT+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Fira+Sans:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
</head>
<body>
<%
	    String administorName = (String) session.getAttribute("username");
		ProductDao productDao = new ProductDao();
		List<Product> products = productDao.getAllProdut();
	%>
	<%@ include file="../util/head.jsp" %>
	 <div class="home-page">
	<div class="content">
		
		<div class="home-slider outer-bottom-vs">
			<!-- ========================================== SECTION â€?HERO : START ========================================= -->
			<!-- ============================================== BEST SELLER ============================================== -->
<section class="best-seller wow fadeInUp">
    <div id="best-seller" class="module">
        <div class="module-heading home-page-module-heading">
            <h2 class="module-title home-page-module-title"><span>AllBooks</span></h2>
        </div><!-- /.module-heading -->
        
        <div class="module-body">
            <div class="row books full-width">
                <div class="clearfix text-center">
                <c:forEach var="product" items="<%= products %>">
                    <div class="col-md-3 col-sm-6">
                        <div class="book">
                          <a href="${pageContext.request.contextPath}/ShowProductDetail?id=${product.id}">
                                <div class="book-cover">
                                    <img width="140" height="212" alt="" src="${pageContext.request.contextPath}/assets/images/book-covers/${product.imgurl}">
                                </div>
                          </a>
		<hr/>
	    
                            <div class="book-details clearfix">
                                <div class="book-description">
                                    <h3 class="book-title"><a href="single-book.html">${product.name}</a></h3>
                                    <p class="book-subtitle">class: <a href="single-book.html"> ${product.category}</a></p>
                                </div>
                                <div class="text-center">
                                    <div class="actions">
                                        <span class="book-price price">$${product.price}</span>               
                                            <div class="cart-action"> 
                                                <a class="add-to-cart" title="Add to Cart" href="${pageContext.request.contextPath}/AddCarServlet?id=${product.id}">Add to Cart</a>       
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
			</c:forEach> 
            </div>
        </div>
    </div>
</section>
</div>
<!-- ============================================== BEST SELLER : END ============================================== -->		</div>
	
	

</body>
</html>