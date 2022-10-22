<%-- 
    Document   : header
    Created on : Jun 10, 2022, 11:01:00 PM
    Author     : AS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>Electro - HTML Ecommerce Template</title>

		<!-- Google font -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

		<!-- Slick -->
		<link type="text/css" rel="stylesheet" href="css/slick.css"/>
		<link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

		<!-- nouislider -->
		<link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="css/font-awesome.min.css">

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="css/style.css"/>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
                
                <style>
        .active, .index:hover {
            background-color: #666;
             color: white;

        } 
    </style>

    </head>
	<body>
		<!-- HEADER -->
		<header>
			<!-- TOP HEADER -->
			<div id="top-header">
				<div class="container">
					<ul class="header-links pull-left">
						<li><a href="#"><i class="fa fa-phone"></i> +0814494436</a></li>
						<li><a href="#"><i class="fa fa-envelope-o"></i> email@email.com</a></li>
						<li><a href="#"><i class="fa fa-map-marker"></i> 1734 Stonecoal Road</a></li>
					</ul>
					<ul class="header-links pull-right">
					
                                            <c:if test="${sessionScope.user!=null}" >
                                                <li><a href="checkout.jsp"><i class="fa fa-user-o"></i> My Account</a></li>
                                                <li><a href=logout><i class="fa fa-user-o"></i> log out</a></li>
                                                
                                                <c:if test="${sessionScope.user.isAdmin == 1}">
                                                
                                                <li><a href="manage"><i class="fa fa-user-o"></i> Manager Product</a></li>
                                                <li><a href="manageAccount"><i class="fa fa-user-o"></i> Manager Account</a></li>
                                                </c:if>
                                            </c:if>
                                                
                                                
                                            <c:if test="${sessionScope.user ==null}">
                                                    
                                                 <li><a href="login.jsp"><i class="fa fa-user-o"></i> login</a></li>
                                            </c:if>
                                                
                                               
                                                
					</ul>
				</div>
			</div>
			<!-- /TOP HEADER -->

			<!-- MAIN HEADER -->
			<div id="header">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<!-- LOGO -->
						<div class="col-md-3">
							<div class="header-logo">
								<a href="#" class="logo">
									<img src="./img/logo.png" alt="">
								</a>
							</div>
						</div>
						<!-- /LOGO -->

						<!-- SEARCH BAR -->
						<div class="col-md-6">
							<div class="header-search">
                                                            <form action="search">
                                                                <select class="input-select" name="optionSearch">
										<option value="name">Enter name</option>
										<option value="minPrice">Max Price</option>
										
										
                                                                </select>
                                                                <input name="name" class="input" placeholder="Search here" value="${requestScope.name}">
									
                                                                        <input class="search-btn" name="submit" type="submit" value="Search"/>
								</form>
							</div>
						</div>
						<!-- /SEARCH BAR -->

						<!-- ACCOUNT -->
						<div class="col-md-3 clearfix">
							<div class="header-ctn">
								<!-- Wishlist -->
								<div>
									<a href="#">
										<i class="fa fa-heart-o"></i>
										<span>Your Wishlist</span>
										<div class="qty">2</div>
									</a>
								</div>
								<!-- /Wishlist -->

								<!-- Cart -->
								<div class="dropdown">
									<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
										<i class="fa fa-shopping-cart"></i>
										<span>Your Cart</span>
										
									</a>
									<div class="cart-dropdown">
										<div class="cart-list">
                                                                                    <c:forEach items="${sessionScope.order}" var="o" >
											<div class="product-widget">
												<div class="product-img">
													<img src="${o.product.image}" alt="">
												</div>
												<div class="product-body">
													<h3 class="product-name"><a href="#">${o.product.name}</a></h3>
													<h4 class="product-price"><span class="qty">x${o.quantity}</span>$${o.product.price*o.quantity}</h4>
												</div>
												
											</div>
                                                                                    </c:forEach>

											
										</div>
                                                                            
                                                                                   
										<div class="cart-summary">
											<small>${order.size()} items selected</small>
											<h5>SUBTOTAL: $ ${sum} </h5>
										</div>
                                                                                        
										<div class="cart-btns">
											<a href="#">View Cart</a>
                                                                                        <a href="checkout.jsp">Checkout  <i class="fa fa-arrow-circle-right"></i></a>
										</div>
									</div>
								</div>
								<!-- /Cart -->

								<!-- Menu Toogle -->
								<div class="menu-toggle">
									<a href="#">
										<i class="fa fa-bars"></i>
										<span>Menu</span>
									</a>
								</div>
								<!-- /Menu Toogle -->
							</div>
						</div>
						<!-- /ACCOUNT -->
					</div>
					<!-- row -->
				</div>
				<!-- container -->
			</div>
			<!-- /MAIN HEADER -->
		</header>
