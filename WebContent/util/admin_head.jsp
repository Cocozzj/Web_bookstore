 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ page import="java.util.Date" %>
 <div id="wrapper" >
        <div id="page-content-wrapper" class="st-pusher">
            <div class="st-pusher-after"></div>
            <!-- ============================================== HEADER ============================================== -->
	
	<header class="header">


<!-- Modal -->


<!-- Modal -->

		<div class="main-header">
			<div class="container">
				<div class="row">
<div class="media free-delivery hidden-xs ">
	
	<div class="media-body">
		<h5 class="media-heading"><%= new Date() %></h5>
	</div>

</div>
					<div class="col-xs-12 col-sm-4 col-md-4 top-search-holder m-t-10">
						<!-- ============================================== SEARCH BAR ============================================== -->

<!-- ============================================== SEARCH BAR : END ============================================== -->					</div><!-- /.top-search-holder -->

					<div class="col-xs-12 col-sm-4 col-md-4 text-center logo-holder">
						<!-- ============================================== LOGO ============================================== -->
<a href="${pageContext.request.contextPath}/admin/index.jsp">
	<h1 class="logo">Admininstor</h1>
	<div class="logo-subtitle">
		<span>World of books</span>
	</div><!-- /.logo-subtitle -->
</a>
<!-- ============================================== LOGO : END ============================================== -->					</div><!-- /.logo-holder -->

					
<div class="col-xs-12  col-md-2 header-shippment hidden-sm m-t-10">


<!-- ============================================== FREE DELIVERY : END ============================================== -->					</div><!-- /.header-shippment -->

					<div class="col-xs-12 col-sm-4 col-md-2 animate-dropdown1 top-cart-row m-t-10">
						<!-- ============================================== SHOPPING CART DROPDOWN ============================================== -->                              
<ul class="clearfix shopping-cart-block list-unstyled">
    <li class="dropdown">
        <a class="menu-toggle-right" href="${pageContext.request.contextPath}/client/login.jsp">
            
            <span class="pull-right cart-left-block">
                <span class="cart-block-heading">${username}</span>
    
            </span><!-- /.cart-left-block -->
        </a>
    </li>
</ul> <!-- /.list-unstyled --> 
<!-- ============================================== SHOPPING CART DROPDOWN : END ============================================== -->					</div><!-- /.top-cart-row -->
				</div><!-- /.row -->

			</div><!-- /.container -->

		</div><!-- /.main-header -->
<div class="header-nav animate-dropdown">
		<div class="container">			
			<div class="nav-bg-class">
				<!-- ============================================================= NAVBAR PRIMARY ============================================================= -->
<nav class="yamm navbar navbar-primary animate-dropdown" role="navigation">
    <div class="navbar-header">
       
    </div><!-- /.navbar-header -->
    <div class="collapse navbar-collapse" id="navbar-primary-collapse">
        <ul class="nav navbar-nav">
        	<li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
        	<li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
        	<li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
        	<li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
        	<li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
        	<li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
        	<li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
        	<li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
        	<li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
        	<li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
        	<li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
        	<li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
        	<li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
        	<li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
            <li class="active"><a href="${pageContext.request.contextPath}/admin/add_production.jsp">添加商品</a></li>
            <li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
            <li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
            <li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
            <li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
            <li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
            <li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
            <li class="hidden-sm hidden-md"><a href="${pageContext.request.contextPath}/ShowProductServlet">所有商品</a></li>
            <li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li><li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
            <li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
            <li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
            <li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
            <li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
            <li class="hidden-sm hidden-md"><a href="${pageContext.request.contextPath}/ShowUserServlet">所有用户</a></li>
            <li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
            <li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
            <li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
            <li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
            <li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
            <li class="hidden-sm hidden-md">&nbsp;&nbsp;&nbsp; </li>
            <li class="hidden-sm hidden-md"><a href="${pageContext.request.contextPath}/ShowAllBill">订单信息</a></li>
        
                    
                    
                </ul>
             </li>
        </ul><!-- /.nav -->
    </div><!-- /.collapse navbar-collapse -->   
</nav><!-- /.yamm -->
<!-- ============================================================= NAVBAR PRIMARY : END ============================================================= -->			</div><!-- /.nav-bg-class -->
		</div><!-- /.container -->
	
</div><!-- /.header-nav -->
<!-- ============================================== NAVBAR : END ============================================== -->

    <script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap-hover-dropdown.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/perfect-scrollbar.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery.customSelect.min.js"></script>    
    <script src="${pageContext.request.contextPath}/assets/js/jquery.easing-1.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/wow.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/echo.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/scripts1.js"></script>

