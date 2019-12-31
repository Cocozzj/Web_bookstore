 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 
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
					<div class="col-xs-12 col-sm-4 col-md-4 top-search-holder m-t-10">
						<!-- ============================================== SEARCH BAR ============================================== -->
<form class="search-form" role="search"  action="${pageContext.request.contextPath}/MenuSearchServlet" method="get">
	<div class="form-group">
		<label class="sr-only" for="page-search">Type your search here</label>
		<input id="page-search" class="search-input form-control" type="search" placeholder="Search product" name="findBook">
	</div>
	<button class="page-search-button">
		<span class="fa fa-search">
			<span class="sr-only">Search</span>
		</span>
	</button>
</form>
<!-- ============================================== SEARCH BAR : END ============================================== -->					</div><!-- /.top-search-holder -->

					<div class="col-xs-12 col-sm-4 col-md-4 text-center logo-holder">
						<!-- ============================================== LOGO ============================================== -->
<a href="${pageContext.request.contextPath}/client/index.jsp">
	<h1 class="logo">BookShop</h1>
	<div class="logo-subtitle">
		<span>World of books</span>
	</div><!-- /.logo-subtitle -->
</a>
<!-- ============================================== LOGO : END ============================================== -->					</div><!-- /.logo-holder -->

					
<div class="col-xs-12  col-md-2 header-shippment hidden-sm m-t-10">
<div class="media free-delivery hidden-xs ">
	<a href="${pageContext.request.contextPath}/ShowBill">
	<span class="media-left"><img src="${pageContext.request.contextPath}/assets/images/delivery-icon.png" height="48" width="48" alt=""></span>
	<div class="media-body">
		<h5 class="media-heading"></h5>
	</div>
	</a>
</div>
<!-- ============================================== FREE DELIVERY : END ============================================== -->					</div><!-- /.header-shippment -->

					<div class="col-xs-12 col-sm-4 col-md-2 animate-dropdown1 top-cart-row m-t-10">
						<!-- ============================================== SHOPPING CART DROPDOWN ============================================== -->                              
<ul class="clearfix shopping-cart-block list-unstyled">
    <li class="dropdown">
        <a class="menu-toggle-right" href="${pageContext.request.contextPath}/client/cart.jsp">
            <span class="pull-right cart-right-block">
                <img src="${pageContext.request.contextPath}/assets/images/cart-icon.png" alt="" width="46" height="39" />
            </span><!-- /.cart-right-block -->
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
            <li class="active"><a href="${pageContext.request.contextPath}/client/index.jsp">AllBooks</a></li>
            <li class="hidden-sm hidden-md"><a href="${pageContext.request.contextPath}/ShowProductByCategoryServlet?category=文学">文学</a></li>
            <li class="hidden-sm hidden-md"><a href="${pageContext.request.contextPath}/ShowProductByCategoryServlet?category=生活">生活</a></li>
            <li class="hidden-sm hidden-md"><a href="${pageContext.request.contextPath}/ShowProductByCategoryServlet?category=计算机">计算机</a></li>
            <li class="hidden-sm hidden-md"><a href="${pageContext.request.contextPath}/ShowProductByCategoryServlet?category=外语">外语</a></li>
            <li class="hidden-sm hidden-md"><a href="${pageContext.request.contextPath}/ShowProductByCategoryServlet?category=经营">经营</a></li>
            <li class="hidden-sm hidden-md"><a href="${pageContext.request.contextPath}/ShowProductByCategoryServlet?category=励志">励志</a></li>
            <li class="hidden-sm hidden-md"><a href="${pageContext.request.contextPath}/ShowProductByCategoryServlet?category=社科">社科</a></li>
            <li class="hidden-sm hidden-md"><a href="${pageContext.request.contextPath}/ShowProductByCategoryServlet?category=学术">学术</a></li>
            <li class="hidden-sm hidden-md"><a href="${pageContext.request.contextPath}/ShowProductByCategoryServlet?category=少儿">少儿</a></li>
            <li class="hidden-sm hidden-md"><a href="${pageContext.request.contextPath}/ShowProductByCategoryServlet?category=艺术">艺术</a></li>

                    
                    
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
