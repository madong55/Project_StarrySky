<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
        <c:set var="root" value="${pageContext.request.contextPath }"></c:set>
<head>     
<style>
product__discount__item__text:text-align: center;
	{padding-top: 20px;}
a:link{color:black;}
a:visited{color:black;}
a:hover{color:black;}
a:active{color:black;}

.cs-item .product__discount__percent {
	height: 45px;
	width: 45px;
	background: #dd2222;
	border-radius: 50%;
	font-size: 14px;
	color: #ffffff;
	line-height: 45px;
	text-align: center;
	position: absolute;
	left: 15px;
	top: 15px;
}
</style>  
</head>
<body>   
<section class="categories-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="section-title">
                        <h2>Starry Recommended</h2>
                        <p>당신만의 밤하늘을 위한 추천 물품</p>
                    </div>
                </div>
      
                
                <div class="col-lg-6 col-md-6">
                    <div class="right-btn"><a href="shop/index" class="primary-btn">VIew all</a></div>
                </div>
                
                
                
            </div>
            <div class="categories-slider owl-carousel">
            
              <c:forEach var='saleAllProductList' items="${saleAllProductList }">
                <div class="cs-item" style="background: #FFFFFF;">
                    <div class="cs-pic set-bg" style="cursor:pointer;" onclick="location.href='${root }/shop/product/product_details?product_category_id=${saleAllProductList.product_category_id}&product_id=${saleAllProductList.product_id}'"
                    data-setbg="shop/product/shop/img/product/details/${saleAllProductList.product_category_id }/product_${saleAllProductList.product_id }_1.png"></div>
                    <div class="product__discount__percent">-${Math.round((1-saleAllProductList.product_sale_price/saleAllProductList.product_price)*100) }%</div>
                    <div class="product__discount__item__text">
                      <h5>
                      <a href="${root }/shop/product/product_details?product_category_id=${saleAllProductList.product_category_id}&product_id=${saleAllProductList.product_id}" target="_blank">${saleAllProductList.product_name }</a>
						</h5>
						<div class="product__item__price" style="text-align: center; padding-top: 20px; font-weight:bold">
						&#8361;<fmt:formatNumber type="number" maxFractionDigits="3" value="${saleAllProductList.product_sale_price }" />
						<del style="font-size: 14px; color: #b2b2b2; display: block; margin-bottom: 4px;">&#8361;<fmt:formatNumber type="number" maxFractionDigits="3" value="${saleAllProductList.product_price }" /></del>
                    	</div>
                	</div>
                </div>
                </c:forEach>
 
 								<%-- <c:forEach var='saleAllProductList'
									items="${saleAllProductList }">
									<div class="col-lg-4">
										<div class="product__discount__item">
											<div class="product__discount__item__pic set-bg"
												data-setbg="product_thumbnail/${saleAllProductList.product_thumbnail}">
												</div>
											<div class="product__discount__item__text">
												<h5>
													<a href="${root }/shop/product/product_details?product_category_id=${saleAllProductList.product_category_id}&product_id=${saleAllProductList.product_id}">${saleAllProductList.product_name }</a>
												</h5>
												<div class="product__item__price">&#8361;<fmt:formatNumber type="number" maxFractionDigits="3" value="${saleAllProductList.product_sale_price }"/>
													<span>&#8361;<fmt:formatNumber type="number" maxFractionDigits="3" value="${saleAllProductList.product_price }"/></span>
												</div>
											</div>
										</div>
									</div>
								</c:forEach> --%>
             
                
                <!-- 
                <div class="cs-item">
                    <div class="cs-pic set-bg" data-setbg="img/categories/cat-2.jpg"></div>
                    <div class="cs-text">
                        <h4>Natural</h4>
                        <span>325 pictures</span>
                    </div>
                </div>
                <div class="cs-item">
                    <div class="cs-pic set-bg" data-setbg="img/categories/cat-3.jpg"></div>
                    <div class="cs-text">
                        <h4>Potrait</h4>
                        <span>540 pictures</span>
                    </div>
                </div>
                <div class="cs-item">
                    <div class="cs-pic set-bg" data-setbg="img/categories/cat-4.jpg"></div>
                    <div class="cs-text">
                        <h4>Animal</h4>
                        <span>120 pictures</span>
                    </div>
                </div>            
                <div class="cs-item">
                
                <a href="shop_shop-details">
                
                    <div class="cs-pic set-bg" data-setbg="img/categories/cat-5.jpg" ></div>
                    <div class="cs-text">
                        <h3><b>사우스페이스 4인형 텐트</b></h3>
                      <h3> <del>50,000 &#8361;</del> </h3> 
                      <h2> &#10149; 30,000 &#8361;&nbsp;&nbsp;</h2>
                    </div>
                    
                    </a>
                    
                </div>-->
            </div>
             
        </div>
    </section>
    </body>