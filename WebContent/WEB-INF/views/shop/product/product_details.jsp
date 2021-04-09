<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
   
   <c:set var="root" value="${pageContext.request.contextPath }"></c:set>
   
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Starry Shop</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    <!-- 한글나눔고딕 -->
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="shop/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="shop/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="shop/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="shop/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="shop/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="shop/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="shop/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="shop/css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

      <jsp:include page="/WEB-INF/views/include/starry_top.jsp" /> 

    <!-- Hero Section Begin -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="shop/img/camp_bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text" style="background-color: #333333; opacity: 0.9;">
                        <h2>${detailsProductBean.product_name}</h2>
                        <div class="breadcrumb__option">
                            <a href="/shop/index">홈</a>					
                            <a href="#">
                            <c:choose>
                            <c:when test="${detailsProductBean.product_category_id=='tent' }">
                             텐트 / 타프
                            </c:when>
                            <c:when test="${detailsProductBean.product_category_id=='slpbag' }">
                             침낭 / 매트
                            </c:when>
                            <c:when test="${detailsProductBean.product_category_id=='backpack' }">
                             배낭
                            </c:when>
                            <c:when test="${detailsProductBean.product_category_id=='heater' }">
                             난로 / 핫팩
                            </c:when>
                            <c:when test="${detailsProductBean.product_category_id=='light' }">
                             랜턴 / 조명
                            </c:when>
                            </c:choose>
                            </a>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Product Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item">
                            <img class="product__details__pic__item--large"
                                src="shop/img/product/details/${detailsProductBean.product_category_id }/product_${detailsProductBean.product_id }_1.png" alt="">
                        </div>
                        <div class="product__details__pic__slider owl-carousel">
                            <img data-imgbigurl="shop/img/product/details/${detailsProductBean.product_category_id }/product_${detailsProductBean.product_id }_2.png"
                                src="shop/img/product/details/${detailsProductBean.product_category_id }/product_${detailsProductBean.product_id }_2.png" alt="">
                            <img data-imgbigurl="shop/img/product/details/${detailsProductBean.product_category_id }/product_${detailsProductBean.product_id }_3.png"
                                src="shop/img/product/details/${detailsProductBean.product_category_id }/product_${detailsProductBean.product_id }_3.png" alt="">
                            <img data-imgbigurl="shop/img/product/details/${detailsProductBean.product_category_id }/product_${detailsProductBean.product_id }_4.png"
                                src="shop/img/product/details/${detailsProductBean.product_category_id }/product_${detailsProductBean.product_id }_4.png" alt="">
                            <img data-imgbigurl="shop/img/product/details/${detailsProductBean.product_category_id }/product_${detailsProductBean.product_id }_5.png"
                                src="shop/img/product/details/${detailsProductBean.product_category_id }/product_${detailsProductBean.product_id }_5.png" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                        <h3>${detailsProductBean.product_name}</h3>
                        <!-- <div class="product__details__rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-o"></i>
                            <span>(18 reviews)</span>
                        </div> -->
                        <c:choose>
                        <c:when test="${detailsProductBean.product_sale_price == null }">
                        <div class="product__details__price">&#8361;<fmt:formatNumber type="number" maxFractionDigits="3" value="${detailsProductBean.product_price }"/></div>
                        </c:when>
                        <c:otherwise>
                        <div class="product__details__price">&#8361;<fmt:formatNumber type="number" maxFractionDigits="3" value="${detailsProductBean.product_sale_price }"/></div>
                        </c:otherwise>
                        </c:choose>
                        
                        <p>${detailsProductBean.product_details }</p>
            			<%-- <form action="${root }/shop/product/shopping_cart_from_details?product_temp_quantity=${param.product_temp_quantity}"> --%>
            			<form action="${root }/pay/mypay?product_temp_quantity=${param.product_temp_quantity}">
                        <input type="hidden" name="product_id" value="${detailsProductBean.product_id}"/>
                        <input type="hidden" name="product_category_id" value="${detailsProductBean.product_category_id}"/>
                        <input type="hidden" name="product_name" value="${detailsProductBean.product_name}"/>
                        <input type="hidden" name="product_price" value="${detailsProductBean.product_price}"/>
                        <div class="product__details__quantity">
                            <div class="quantity">
                                <div class="pro-qty">
                                    <input type="text" value="1" name="product_temp_quantity" id="product_temp_quantity">
                                    
                                </div>
                            </div>
                        </div>
                        <!-- <input type="submit" value="장바구니" class="primary-btn"> -->
                        <input type="submit" value="구매하기" class="primary-btn">
                        </form>
                       
                        <%-- <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
                        <ul>
                            <li><b>재고</b> 
                            <c:choose>
                            <c:when test="${ detailsProductBean.product_quantity == null ||  detailsProductBean.product_quantity == 0}">                           
                            <c:set var="product_qtt" value="재고 없음" />
                            
                           </c:when>
                           <c:otherwise>
                           <c:set var="product_qtt" value="${ detailsProductBean.product_quantity} 개" />
                           </c:otherwise>
                           </c:choose>
                            <span>${product_qtt}test</span></li>
                           <li><b>Shipping</b> <span>01 day shipping. <samp>Free pickup today</samp></span></li>
                           <li><b>Weight</b> <span>0.5 kg</span></li>
                  	   	 <li><b>공유하기</b>
                                <div class="share">
                                    <a href="https://facebook.com" target="blank"><i class="fa fa-facebook"></i></a>
                                    <a href="https://twitter.com" target="blank"><i class="fa fa-twitter"></i></a>
                                    <a href="https://instagram.com" target="blank"><i class="fa fa-instagram"></i></a>                 
                                </div> 
                            </li>
                        </ul> --%>
                        
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                                    aria-selected="true">제품 상세설명</a>
                            </li>
                           <!--  <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                    aria-selected="false">제품 후기? <span>(1)</span></a>
                            </li> -->
                     <!--        <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                                    aria-selected="false">Reviews <span>(1)</span></a>
                            </li> -->
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>제품 상세설명</h6>
                                    <p>${detailsProductBean.product_details } </p>
                                </div>
                            </div>
                          
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->

    <!-- Related Product Section Begin -->
    <section class="related-product">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title related__product__title">
                        <h2>비슷한 상품들</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <c:forEach var='similarProductList' items="${similarProductList }">
					<c:choose>
						<c:when test="${similarProductList.product_sale_price == null }">
							<div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 mix ${similarProductList.product_category_id }">
								<div class="featured__item">
									<div class="product__item__pic set-bg" style="cursor:pointer;" onclick="location.href='${root }/shop/product/product_details?product_category_id=${similarProductList.product_category_id}&product_id=${similarProductList.product_id}'"
										data-setbg="shop/img/product/details/${similarProductList.product_category_id }/product_${similarProductList.product_id }_1.png">
										
										<ul class="product__item__pic__hover">
											<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
										</ul>
									</div>
									<div class="product__item__text">
										<h6>
											<a href="${root }/shop/product/product_details?product_category_id=${similarProductList.product_category_id}&product_id=${similarProductList.product_id}">${similarProductList.product_name }</a>
										</h6>
										<h5>&#8361;<fmt:formatNumber type="number" maxFractionDigits="3" value="${similarProductList.product_price }"/></h5>
									</div>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 mix ${similarProductList.product_category_id }">
								<div class="product__discount__item">
									<div class="product__discount__item__pic set-bg" style="cursor:pointer;" onclick="location.href='${root }/shop/product/product_details?product_category_id=${similarProductList.product_category_id}&product_id=${similarProductList.product_id}'"
										data-setbg="shop/img/product/details/${similarProductList.product_category_id }/product_${similarProductList.product_id }_1.png">
										<div class="product__discount__percent">-${Math.round((1-similarProductList.product_sale_price/similarProductList.product_price)*100) }%</div>
										<ul class="product__item__pic__hover">
											<li><a href="javascript:void(0);"><i class="fa fa-shopping-cart"></i></a></li>
										</ul>
									</div>
									<div class="product__discount__item__text">
										<h5>
											<a href="${root }/shop/product/product_details?product_category_id=${similarProductList.product_category_id}&product_id=${similarProductList.product_id}">${similarProductList.product_name }</a>
										</h5>
										<div class="product__item__price">
											&#8361;<fmt:formatNumber type="number" maxFractionDigits="3" value="${similarProductList.product_sale_price }"/> <span>&#8361;<fmt:formatNumber type="number" maxFractionDigits="3" value="${similarProductList.product_price }"/></span>
										</div>
									</div>
								</div>
							</div>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</div>
        </div>
    </section>
    <!-- Related Product Section End -->

    <!-- Footer Section Begin -->
    <jsp:include page="/WEB-INF/views/include/starry_footer.jsp" /> 
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="shop/js/jquery-3.3.1.min.js"></script>
    <script src="shop/js/bootstrap.min.js"></script>
    <script src="shop/js/jquery.nice-select.min.js"></script>
    <script src="shop/js/jquery-ui.min.js"></script>
    <script src="shop/js/jquery.slicknav.js"></script>
    <script src="shop/js/mixitup.min.js"></script>
    <script src="shop/js/owl.carousel.min.js"></script>
    <script src="shop/js/main.js"></script>


</body>

</html>