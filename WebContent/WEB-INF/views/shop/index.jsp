<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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



<header>
<jsp:include page="/WEB-INF/views/include/starry_top.jsp" /> 

</header>

    <!-- Hero Section Begin -->
    <section class="hero  hero__item set-bg" data-setbg="shop/img/shopbg3_2.jpg">
        <div class="container" style="margin-left: 0 !important;">
            <div class="row">
				
				<div class="col-lg-12">
                  
                 <div>
                        <div class="hero__text " id="text-4">
                     
                            <h2>
                            <br/>
                            당신만의 밤하늘을 위해 <br/>
                            . <br/>
                           	. <br/>
                            - STARRY SHOP -
                            </h2>
                            <p></p>
                            <h4>2차 문구</h4>
                      <a href="product/shop_details">/shop_shop_details</a> <br />
                        <a href="product/shoping_cart">/shop_shoping_cart</a> <br />
                        <a href="order/checkout">/shop_shop-checkout</a> <br />
                        <a href="shop_blog">/shop_blog</a> <br />
                        <a href="shop_blog-details">/shop_blog-details</a> <br />
                        <a href="shop_board_main">/shop_board_main</a> <br/>
                        
                        <!--     <a href="#" class="primary-btn">SHOP NOW</a> -->
                        </div>
                    </div>
                </div>
            </div>
        </div> 
    </section>
    <!-- Hero Section End -->

    <!-- Categories Section Begin -->
       
    <section class="product spad">
        <div class="container">
            <div class="row">
               
                <div class="col-lg-12">
                    <div class="product__discount">
                        <div class="section-title product__discount__title">
                            <h2>Sale Off</h2>
                        </div>
                        <div class="row">
                            <div class="product__discount__slider owl-carousel">
                                
                                
                                <div class="col-lg-4">
                                    <div class="product__discount__item">
                                        <div class="product__discount__item__pic set-bg"
                                            data-setbg="shop/img/product/discount/pd-1.jpg">
                                            <div class="product__discount__percent">-20%</div>
                                            <ul class="product__item__pic__hover">
                                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product__discount__item__text">
                                            <span>Dried Fruit</span>
                                            <h5><a href="#">Raisinânânuts</a></h5>
                                            <div class="product__item__price">$30.00 <span>$36.00</span></div>
                                        </div>
                                    </div>
                                </div>
                                
                                
                                <div class="col-lg-4">
                                    <div class="product__discount__item">
                                        <div class="product__discount__item__pic set-bg"
                                            data-setbg="shop/img/product/discount/pd-2.jpg">
                                            <div class="product__discount__percent">-20%</div>
                                            <ul class="product__item__pic__hover">
                                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product__discount__item__text">
                                            <span>Vegetables</span>
                                            <h5><a href="#">Vegetablesâpackage</a></h5>
                                            <div class="product__item__price">$30.00 <span>$36.00</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="product__discount__item">
                                        <div class="product__discount__item__pic set-bg"
                                            data-setbg="shop/img/product/discount/pd-3.jpg">
                                            <div class="product__discount__percent">-20%</div>
                                            <ul class="product__item__pic__hover">
                                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product__discount__item__text">
                                            <span>Dried Fruit</span>
                                            <h5><a href="#">Mixed Fruitss</a></h5>
                                            <div class="product__item__price">$30.00 <span>$36.00</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="product__discount__item">
                                        <div class="product__discount__item__pic set-bg"
                                            data-setbg="shop/img/product/discount/pd-4.jpg">
                                            <div class="product__discount__percent">-20%</div>
                                            <ul class="product__item__pic__hover">
                                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product__discount__item__text">
                                            <span>Dried Fruit</span>
                                            <h5><a href="#">Raisinânânuts</a></h5>
                                            <div class="product__item__price">$30.00 <span>$36.00</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="product__discount__item">
                                        <div class="product__discount__item__pic set-bg"
                                            data-setbg="shop/img/product/discount/pd-5.jpg">
                                            <div class="product__discount__percent">-20%</div>
                                            <ul class="product__item__pic__hover">
                                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product__discount__item__text">
                                            <span>Dried Fruit</span>
                                            <h5><a href="#">Raisinânânuts</a></h5>
                                            <div class="product__item__price">$30.00 <span>$36.00</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="product__discount__item">
                                        <div class="product__discount__item__pic set-bg"
                                            data-setbg="shop/img/product/discount/pd-6.jpg">
                                            <div class="product__discount__percent">-20%</div>
                                            <ul class="product__item__pic__hover">
                                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product__discount__item__text">
                                            <span>Dried Fruit</span>
                                            <h5><a href="#">Raisinânânuts</a></h5>
                                            <div class="product__item__price">$30.00 <span>$36.00</span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
    
</div>
</div> 
<!-- 세일품목 끝 -->
                               
                    <!-- 제품목록 -->
                     <div class="featured__controls">
                  
                        <ul>
                            <li class="active" data-filter="*">전체 보기</li>
                            <li data-filter=".tent">텐트 / 타프</li>
                            <li data-filter=".slpbag">침낭 / 매트</li>
                            <li data-filter=".backpack">배낭</li>
                            <li data-filter=".heater">난로 / 핫팩</li>
                            <li data-filter=".lights">랜턴 / 조명</li>
                            
                        </ul>

                    </div>
              
                    <div class="row featured__filter">
                    <c:forEach var='obj' items="${productList }">
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 mix tent">
                            <div class="featured__item">
                                <div class="product__item__pic set-bg" data-setbg="shop/img/product/product-1.jpg">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="${root }/shot/shot-details?product_category_id=tent&product_id=${obj.product_id}">${obj.product_name }</a></h6>
                                    <h5>${obj.product_price }</h5>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 mix tent">
                            <div class="featured__item">
                                <div class="product__item__pic set-bg" data-setbg="shop/img/product/product-2.jpg">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#">텐트2</a></h6>
                                    <h5>$30.00</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 mix slpbag">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="shop/img/product/product-3.jpg">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#">침낭1</a></h6>
                                    <h5>$30.00</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 mix slpbag">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="shop/img/product/product-4.jpg">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#">침낭2</a></h6>
                                    <h5>$30.00</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 mix backpack">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="shop/img/product/product-5.jpg">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#">배낭1</a></h6>
                                    <h5>$30.00</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 mix backpack">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="shop/img/product/product-6.jpg">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#">배낭2</a></h6>
                                    <h5>$30.00</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 mix heater">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="shop/img/product/product-7.jpg">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#">난로1</a></h6>
                                    <h5>$30.00</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 mix heater">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="shop/img/product/product-8.jpg">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#">난로2</a></h6>
                                    <h5>$30.00</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 mix lights">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="shop/img/product/product-9.jpg">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#">조명1</a></h6>
                                    <h5>$30.00</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 mix lights">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="shop/img/product/product-10.jpg">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#">조명2</a></h6>
                                    <h5>$30.00</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 mix tent">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="shop/img/product/product-11.jpg">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#">텐트3</a></h6>
                                    <h5>$30.00</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 mix backpack">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="shop/img/product/product-12.jpg">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#">Crab Pool Security</a></h6>
                                    <h5>$30.00</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product__pagination">
                        <a href="#">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                    </div>
                    
                </div>
                
        <!-- 제품목록 끝 -->
     
    </section>

    <!-- Footer Section Begin -->
    <jsp:include page="/WEB-INF/views/include/starry_footer.jsp"></jsp:include>   
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.6.0.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="shop/js/jquery.nice-select.min.js"></script>
    <script src="shop/js/jquery-ui.min.js"></script>
    <script src="shop/js/jquery.slicknav.js"></script>
    <script src="shop/js/mixitup.min.js"></script>
    <script src="shop/js/owl.carousel.min.js"></script>
    <script src="shop/js/main.js"></script>



</body>

</html>