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

   

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="shop/img/camp_bg2.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>장바구니</h2>
                       
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row justify-content-center">
           
                    <div class="col-lg-8 ">
                    <div class="shoping__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th class="shoping__product">이미지</th>
                                    <th class="shoping__product_name">상품명</th>
                                    <th>가격</th>
                                    <th>수량</th>
                                    <th>합계</th>
                                    <th>삭제</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="userShoppingCartList" items="${userShoppingCartList }">
                                <tr>
                                    <td class="shoping__cart__item">
                                        <img src="shop/img/product/details/${userShoppingCartList.product_category_id }/product_${userShoppingCartList.product_id }_1.png" alt="">
                                        
                                    </td>
                                    <td>
                                    <div class="product__item__text">
                                    <h6><a href="${root }/shop/product/product_details?product_category_id=${userShoppingCartList.product_category_id}&product_id=${userShoppingCartList.product_id}">${userShoppingCartList.product_name }</a></h6>
                                    </div>
                                    </td>
										<c:choose>
											<c:when test="${userShoppingCartList.product_sale_price == null }">
												<td class="shoping__cart__price_${userShoppingCartList.product_id }" value="${userShoppingCartList.product_price }">
												<%-- &#8361;<fmt:formatNumber type="number" maxFractionDigits="3" value="${userShoppingCartList.product_price }"/> --%>
												</td>
											</c:when>
											<c:otherwise>
												<td class="shoping__cart__price_${userShoppingCartList.product_id }" value="${userShoppingCartList.product_sale_price }">
												<%-- &#8361;<fmt:formatNumber type="number" maxFractionDigits="3" value="${userShoppingCartList.product_sale_price }"/> --%>
												</td>
											</c:otherwise>
										</c:choose>
                                    <td class="shoping__cart__quantity">
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input type="text" value="${userShoppingCartList.product_temp_quantity }">
                                            </div>
                                        </div>
                                    </td>
                                    	
										<c:choose>
											<c:when
												test="${userShoppingCartList.product_sale_price == null }">
												<td class="shoping__cart__total${userShoppingCartList.product_id}" value="cartTotal"><%-- &#8361;<fmt:formatNumber
														type="number" maxFractionDigits="3"
														value="${userShoppingCartList.product_temp_quantity*userShoppingCartList.product_price }" /> --%>
												</td>
											</c:when>
											<c:otherwise>
												<td class="shoping__cart__total${userShoppingCartList.product_id }" value="cartTotal"><%-- &#8361;<fmt:formatNumber
														type="number" maxFractionDigits="3"
														value="${userShoppingCartList.product_temp_quantity*userShoppingCartList.product_sale_price }" /> --%>
												</td>
											</c:otherwise>
										</c:choose>
										
										<td class="shoping__cart__item__close"><a
												href="${root }/shop/product/delete_cart_info?product_id=${userShoppingCartList.product_id}"
												class="icon_close" style="color: gray"></a>
										</td>
									</tr>
									
                                </c:forEach> 
                                    
                        <tr><td colspan=6; style="text-align:right;">
                        <a href="${root }/shop/product/delete_all_cart_info" class="btn" >모두 비우기</a>
                        </td>
                        </tr>
                            </tbody>
                            
                        </table>
                        <a href="${root }/shop/product/update_all_quantity" class="btn">수량 적용</a>  
                    </div>
                 </div>
                </div>
            </div>
           
                
       <!--          <div class="col-lg-6">
                    <div class="shoping__continue">
                        <div class="shoping__discount">
                            <h5>Discount Codes</h5>
                            <form action="#">
                                <input type="text" placeholder="Enter your coupon code">
                                <button type="submit" class="site-btn">APPLY COUPON</button>
                            </form>
                        </div>
                    </div>
                </div> -->
                <div class="row justify-content-center">
                
                    <div class="col-lg-3 shoping__checkout">
                        <h5>총 주문 금액</h5>
                        <ul>
                            <li><h2>100,000&#8361</h2></li>
                           
                        </ul>
                       <a href="shop_index" class="primary-btn">쇼핑 더 하기</a>
                        <a href="shop_checkout" class="primary-btn">결제하기</a>
            
                  </div>
                  
                        <!-- <a href="#" class="primary-btn cart-btn cart-btn-right"><span class="icon_loading"></span>
                            Upadate Cart</a> -->
                    </div>
                    
                
       
    </section>
    <!-- Shoping Cart Section End -->

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