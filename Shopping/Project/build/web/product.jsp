<%-- 
    Document   : product
    Created on : May 11, 2022, 10:59:35 PM
    Author     : AS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

		<!-- BREADCRUMB -->
		<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<ul class="breadcrumb-tree">
                                                    <li><a href="loadProducts">Home</a></li>
                                                   
							<li class="active">${product.name}</li>
						</ul>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- Product main img -->
					<div class="col-md-5 col-md-push-2">
						<div id="product-main-img">
							

							

							<div class="product-preview">
								<img src="${product.image}" alt="">
							</div>

							
						</div>
					</div>
					<!-- /Product main img -->

					<!-- Product thumb imgs -->
					<div class="col-md-2  col-md-pull-5">
						
					</div>
					<!-- /Product thumb imgs -->

					<!-- Product details -->
					<div class="col-md-5">
						<div class="product-details">
							<h2 class="product-name">${product.name}</h2>
							<div>
								<div class="product-rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-o"></i>
								</div>
								<a class="review-link" href="#">10 Review(s) | Add your review</a>
							</div>
							<div>
								<h3 class="product-price">$${product.price} </h3>
								<span class="product-available">In Stock</span>
							</div>
                                                                
                                                                

							

							<div class="add-to-cart">
                                                            <form action="addCart">
                                                                 <input name="url" value="detail?id=${product.id}" hidden>
                                                                 <input name="id" value="${product.id}" > 
								<div class="qty-label">
									Qty
									<div class="input-number">
                                                                            <input type="number" name="quantity" value="1">
										<span class="qty-up">+</span>
										<span class="qty-down">-</span>
									</div>
								</div>
                                                                <button class="add-to-cart-btn" type="submit" ><i class="fa fa-shopping-cart"  ></i> add to cart</button>
							</form>
                                                        </div>

							<ul class="product-btns">
								<li><a href="#"><i class="fa fa-heart-o"></i> add to wishlist</a></li>
								
							</ul>

							<ul class="product-links">
								<li>Category:</li>
								<li><a href="loadCategory?cid=3">Smart Phone</a></li>
								<li><a href="loadCategory?cid=2">Accessories</a></li>
							</ul>

							

						</div>
					</div>
					<!-- /Product details -->

					<!-- Product tab -->
					<div class="col-md-12">
						<div id="product-tab">
							<!-- product tab nav -->
							<ul class="tab-nav">
								<li class="active"><a data-toggle="tab" href="#tab1">Description</a></li>
								
								<li><a data-toggle="tab" href="#tab3">Reviews </a></li>
							</ul>
							<!-- /product tab nav -->

							<!-- product tab content -->
							<div class="tab-content">
								<!-- tab1  -->
								<div id="tab1" class="tab-pane fade in active">
									<div class="row">
										<div class="col-md-12">
                                                                                    <p>${product.describe}</p>
                                                                                </div>
									</div>
								</div>
								<!-- /tab1  -->

								<!-- tab2  -->
								
								<!-- /tab2  -->

								<!-- tab3  -->
								<div id="tab3" class="tab-pane fade in">
									<div class="row">
										<!-- Rating -->
										<div class="col-md-3">
											<div id="rating">
												<div class="rating-avg">
													<span>4.5</span>
													<div class="rating-stars">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-o"></i>
													</div>
												</div>
												<ul class="rating">
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
														</div>
														<div class="rating-progress">
															<div style="width: 80%;"></div>
														</div>
														<span class="sum">3</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div style="width: 60%;"></div>
														</div>
														<span class="sum">2</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
												</ul>
											</div>
										</div>
										<!-- /Rating -->

										<!-- Reviews -->
										<div class="col-md-6">
                                                                                    <c:forEach items="${requestScope.review}" var="r">
											<div id="reviews">
                                                                                            <ul class="reviews" style="margin-bottom: 50px">
													<li>
														<div class="review-heading">
															<h5 class="name">${r.name}</h5>
															
															
														</div>
                                                                                                        
														<div class="review-body">
															<p> ${r.review}</p>
														</div>
                                                                                                       
													</li>
                                                                                                        
													 <c:forEach begin="1" end="${r.rate}">
                                                                                                                
                                                                                                                    <i class="fa fa-star" style="color: red" ></i>
                                                                                                                
                                                                                                        </c:forEach>
                                                                                                        
												</ul>
												
											</div>
										</c:forEach>
										</div>
										<!-- /Reviews -->

										<!-- Review Form -->
										<div class="col-md-3">
											<div id="review-form">
                                                                                            <form class="review-form" action="review">
                                                                                                <input class="input" type="text" placeholder="Your Name" name="name" required/>
                                                                                                <input class="input" type="email" placeholder="Your Email" name="email" required/>
                                                                                                <input class="input" type="text" placeholder="id product" name="id" readonly="" value="${product.id}"/>
                                                                                                    <textarea class="input" placeholder="Your Review" name="review"></textarea>
													<div class="input-rating">
														<span>Your Rating: </span>
														<div class="stars">
															<input id="star5" name="rating" value="5" type="radio"><label for="star5"></label>
															<input id="star4" name="rating" value="4" type="radio"><label for="star4"></label>
															<input id="star3" name="rating" value="3" type="radio"><label for="star3"></label>
															<input id="star2" name="rating" value="2" type="radio"><label for="star2"></label>
															<input id="star1" name="rating" value="1" type="radio"><label for="star1"></label>
														</div>
													</div>
                                                                                                    <button class="primary-btn" type="submit">Submit<x/button>
												</form>
											</div>
										</div>
										<!-- /Review Form -->
									</div>
								</div>
								<!-- /tab3  -->
							</div>
							<!-- /product tab content  -->
						</div>
					</div>
					<!-- /product tab -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
                       
		</div>
		<!-- /SECTION -->

		<!-- Section -->
		
		<!-- /Section -->

		<!-- NEWSLETTER -->
		
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

