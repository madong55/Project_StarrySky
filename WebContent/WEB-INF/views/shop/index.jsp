<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <c:set var="root" value="${pageContext.request.contextPath }/"></c:set>
   
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
                       <!--      . <br/> -->
                           	. <br/>
                            - STARRY SHOP -
                            </h2>
                            <p></p>

                            <h4>2차 문구</h4>
                        <a href="product/insert_product">/insert_product</a> <br />
                      	<a href="product/shop_details">/shop_shop_details</a> <br />
                        <a href="product/shopping_cart">/shop_shoping_cart</a> <br />
                        <a href="order/checkout">/shop_shop-checkout</a> <br />
                        <a href="shop_blog">/shop_blog</a> <br />
                        <a href="shop_blog-details">/shop_blog-details</a> <br />
                        
                        <!--     <a href="#" class="primary-btn">SHOP NOW</a> -->
                        </div>
                    </div>
                </div>
            </div>
        </div> 
    </section>
    <!-- Hero Section End -->


    <!-- Categories Section Begin -->
	<jsp:include page="/WEB-INF/views/shop/product/product_list.jsp"></jsp:include>       
    <!-- Categories Section Begin -->

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