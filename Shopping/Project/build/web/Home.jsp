<%-- 
    Document   : home
    Created on : May 11, 2022, 10:59:35 PM
    Author     : AS
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>
		<!-- /HEADER -->

		<!-- NAVIGATION -->
		<nav id="navigation">
			<!-- container -->
			<div class="container">
				<!-- responsive-nav -->
				<div id="responsive-nav">
					<!-- NAV -->
					<ul class="main-nav nav navbar-nav">
						<li class="active"><a href="loadProducts">Home</a></li>
                                                <c:forEach items="${requestScope.category}" var="a">
                                                <li class="${requestScope.tag == a.cid ? "active":""}" ><a href="loadCategory?cid=${a.cid}">${a.name}</a></li>
						</c:forEach>
					</ul>
					<!-- /NAV -->
				</div>
				<!-- /responsive-nav -->
			</div>
			<!-- /container -->
		</nav>
               
		<!-- /NAVIGATION -->
                
                <!-- slide show -->
             





                
                
                <!-- slide show -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- shop -->
					<div class="col-md-4 col-xs-6">
						<div class="shop">
							<div class="shop-img">
								<img src="./img/shop01.png" alt="">
							</div>
							<div class="shop-body">
								<h3>Laptop<br>Collection</h3>
                                                                
                                                                <a href="loadCategory?cid=1" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<!-- /shop -->

					<!-- shop -->
					<div class="col-md-4 col-xs-6">
						<div class="shop">
							<div class="shop-img">
								<img src="./img/shop03.png" alt="">
							</div>
							<div class="shop-body">
								<h3>Accessories<br>Collection</h3>
                                                                <a href="loadCategory?cid=2" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<!-- /shop -->

					<!-- shop -->
					<div class="col-md-4 col-xs-6">
						<div class="shop">
							<div class="shop-img">
								<img src="./img/shop02.png" alt="">
							</div>
							<div class="shop-body">
								<h3>Cameras<br>Collection</h3>
                                                                <a href="loadCategory?cid=4" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<!-- /shop -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<!-- section title -->
					<div class="col-md-12">
						<div class="section-title">
							<h3 class="title">New Products</h3>
							<div class="section-nav">
								<ul class="section-tab-nav tab-nav">
									<c:forEach items="${requestScope.category}" var="a">
                                                                        <li class="${requestScope.tag == a.cid ? "active":""}" ><a href="loadCategory?cid=${a.cid}">${a.name}</a></li>
                                                                        </c:forEach>
								</ul>
							</div>
						</div>
					</div>
					<!-- /section title -->

					<!-- Products tab & slick -->
					
					<!-- Products tab & slick -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					
                                        <c:forEach items="${requestScope.product}" var="p">
					<div class="col-md-4 col-sm-6 col-xs-12">
						
							<div class="products-tabs">
								<!-- tab -->
								<div id="tab2" class="tab-pane fade in active">
									
										<!-- product -->
                                                                                <div class="product" style="margin-bottom: 75px; border: 2px black solid">
											<div class="product-img">
                                                                                            <img src="${p.image}" alt="">
												<div class="product-label">
													<span class="sale">HOT</span>
													<span class="new">NEW</span>
												</div>
											</div>
											<div class="product-body">
												<p class="product-category">${p.category.name}</p>
												<h3 class="product-name"><a href="#">${p.name}</a></h3>
												<h4 class="product-price">${p.price}$ </h4>
												<div class="product-rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
												</div>
												<div class="product-btns">
													<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
                                                                                                           <button class="add-to-compare"><i class="fa fa-exchange"></i><a href="addCart?id=${p.id}" ><span class="tooltipp">add to cart</span></a></button>
                                                                                                        <button class="quick-view"><i class="fa fa-eye"></i><a href="detail?id=${p.id}"><span class="tooltipp">  quick view  </span></a></button>
												</div>
											</div>
											<div class="add-to-cart">
                                                                                            <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> <a href="addCart?id=${p.id}" > add to cart </a> </button>
											</div>
										</div>
										

										

									
								
								<!-- /tab -->
							</div>
						</div>
					</div>
                                        </c:forEach>
					<!-- /Products tab & slick -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-4 col-xs-6">
						<div class="section-title">
							<h4 class="title" style="font-size: 36px" >Top Price</h4>
							
						</div>

						<div class="" data-nav="#slick-nav-3">
                                            <c:forEach items="${requestScope.topproduct}" var="p" >
                                                <div style="margin-bottom: 40px" >
								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img" >
										<img src="${p.image}" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">${p.category.name}</p>
										<h3 class="product-name"><a href="detail?id=${p.id}">${p.name}</a></h3>
										<h4 class="product-price">${p.price} <del class="product-old-price">$990.00</del></h4>
									</div>
								</div>
				
							</div>
                                            </c:forEach>
						</div>
					</div>

					<div class="col-md-4 col-xs-6">
						<div class="section-title">
							<h4 class="title" style="font-size: 36px" >new Product</h4>
							
						</div>

						<div class="" data-nav="#slick-nav-3">
                                            <c:forEach items="${requestScope.newproduct}" var="p" >
							<div style="margin-bottom: 40px" >
								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="${p.image}" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">${p.category.name}</p>
										<h3 class="product-name"><a href="detail?id=${p.id}">${p.name}</a></h3>
										<h4 class="product-price">${p.price} <del class="product-old-price">$990.00</del></h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								
								<!-- /product widget -->

								<!-- product widget -->
								
								<!-- product widget -->
							

							
								<!-- product widget -->
								
								<!-- /product widget -->

								<!-- product widget -->
								
								<!-- /product widget -->

								<!-- product widget -->
								
								<!-- product widget -->
							</div>
                                            </c:forEach>
						</div>
					</div>
                                    
                                    
                                    <div class="col-md-4 col-xs-6">
						<div class="section-title">
                                                    <h4 class="title" style="font-size: 36px">Featured products</h4>
							
						</div>

						<div class="" data-nav="#slick-nav-3">
                                            <c:forEach items="${requestScope.featureproduct}" var="p" >
							<div style="margin-bottom: 40px">
								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="${p.image}" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">${p.category.name}</p>
										<h3 class="product-name"><a href="detail?id=${p.id}">${p.name}</a></h3>
										<h4 class="product-price">${p.price} <del class="product-old-price">$990.00</del></h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								
								<!-- /product widget -->

								<!-- product widget -->
								
								<!-- product widget -->
							

							
								<!-- product widget -->
								
								<!-- /product widget -->

								<!-- product widget -->
								
								<!-- /product widget -->

								<!-- product widget -->
								
								<!-- product widget -->
							</div>
                                            </c:forEach>
						</div>
					</div>
					

				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- NEWSLETTER -->
		<div id="newsletter" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<div class="newsletter">
							<p>Sign Up for the <strong>NEWSLETTER</strong></p>
							<form>
								<input class="input" type="email" placeholder="Enter Your Email">
								<button class="newsletter-btn"><i class="fa fa-envelope"></i> Subscribe</button>
							</form>
							<ul class="newsletter-follow">
								<li>
									<a href="#"><i class="fa fa-facebook"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-twitter"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-instagram"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-pinterest"></i></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /NEWSLETTER -->

		<!-- FOOTER -->
<jsp:include page="footer.jsp"></jsp:include>
		<!-- /FOOTER -->

		<!-- jQuery Plugins -->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>

	</body>
</html>
