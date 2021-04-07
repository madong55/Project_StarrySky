<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
   <c:set var="root" value="${pageContext.request.contextPath }"></c:set>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product_list</title>
</head>
<script>

function addCart(product_id){
	alert("test");
	 /* location.href= '${root}/shop/product/addCart?product_id=';  */
	
	 $.ajax({
		//요청할 주소
		url : '${root}/shop/product/addCart?product_id=' + product_id,
		//요청타입
		type : 'get',
		//응답결과
		dataType : 'text'
		//성공시 호출할 함수
		success : function(result) {
			alert("장바구니에 추가되었습니다.");
		}
	}) 
</script>
<body>
<section class="product spad">
		<div class="container">
			<div class="row">

				<div class="col-lg-12">
					<div class="product__discount">
						<div class="section-title related__product__title">
							<h2>특가 할인중!</h2>
						</div>
						<div class="row">
							<div class="product__discount__slider owl-carousel">

								<c:forEach var='saleAllProductList'
									items="${saleAllProductList }">
									<div class="col-lg-4">
										<div class="product__discount__item">
											<div class="product__discount__item__pic set-bg" style="cursor:pointer;" onclick="location.href='${root }/shop/product/product_details?product_category_id=${saleAllProductList.product_category_id}&product_id=${saleAllProductList.product_id}'"
												data-setbg="shop/img/product/details/${saleAllProductList.product_category_id }/product_${saleAllProductList.product_id }_1.png">
												<div class="product__discount__percent">-${Math.round((1-saleAllProductList.product_sale_price/saleAllProductList.product_price)*100) }%</div>
												<ul class="product__item__pic__hover">
													<!-- <li><a href="#"><i class="fa fa-heart"></i></a></li>
													<li><a href="#"><i class="fa fa-retweet"></i></a></li> -->
													<li><a href="javascript:alert('장바구니에 추가되었습니다');" onfocus="this.blur()" onclick="addCart('${saleAllProductList.product_id}');"><i class="fa fa-shopping-cart"></i></a></li>
													<!-- <li><button type="button" onfocus="this.blur()"><i class="fa fa-shopping-cart"></i></button></li> -->
												</ul>
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
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 세일품목 끝 -->
			
			<div class="section-title related__product__title">
				<h2>전체 제품 목록</h2>
			</div>
			
			<!-- 제품목록 -->
			<div class="featured__controls">
				<ul>
					<li class="active" data-filter="*">전체 보기</li>
					<li data-filter=".tent">텐트 / 타프</li>
					<li data-filter=".slpbag">침낭 / 매트</li>
					<li data-filter=".backpack">배낭</li>
					<li data-filter=".heater">난로 / 핫팩</li>
					<li data-filter=".light">랜턴 / 조명</li>

				</ul>
			</div>

			<div class="row featured__filter">
				<c:forEach var='allProductList' items="${allProductList }">
					<c:choose>
						<c:when test="${allProductList.product_sale_price == null }">
							<div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 mix ${allProductList.product_category_id }">
								<div class="featured__item">
									<div class="product__item__pic set-bg" style="cursor:pointer;" onclick="location.href='${root }/shop/product/product_details?product_category_id=${allProductList.product_category_id}&product_id=${allProductList.product_id}'"
										data-setbg="shop/img/product/details/${allProductList.product_category_id }/product_${allProductList.product_id }_1.png">
										<ul class="product__item__pic__hover">
											<li><a href="javascript:void(0);" onfocus="this.blur()" onclick="addCart('${allProductList.product_id}');"><i class="fa fa-shopping-cart"></i></a></li>
										</ul>
									</div>
									<div class="product__item__text">
										<h6>
											<a href="${root }/shop/product/product_details?product_category_id=${allProductList.product_category_id}&product_id=${allProductList.product_id}">${allProductList.product_name }</a>
										</h6>
										<h5>&#8361;<fmt:formatNumber type="number" maxFractionDigits="3" value="${allProductList.product_price }"/></h5>
									</div>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 mix ${allProductList.product_category_id }">
								<div class="product__discount__item">
									<div class="product__discount__item__pic set-bg" style="cursor:pointer;" onclick="location.href='${root }/shop/product/product_details?product_category_id=${allProductList.product_category_id}&product_id=${allProductList.product_id}'"
										data-setbg="shop/img/product/details/${allProductList.product_category_id }/product_${allProductList.product_id }_1.png">
										<div class="product__discount__percent">-${Math.round((1-allProductList.product_sale_price/allProductList.product_price)*100) }%</div>
										<ul class="product__item__pic__hover">
											<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
										</ul>
									</div>
									<div class="product__discount__item__text">
										<h5>
											<a href="${root }/shop/product/product_details?product_category_id=${allProductList.product_category_id}&product_id=${allProductList.product_id}">${allProductList.product_name }</a>
										</h5>
										<div class="product__item__price">
											&#8361;<fmt:formatNumber type="number" maxFractionDigits="3" value="${allProductList.product_sale_price }"/> <span>&#8361;<fmt:formatNumber type="number" maxFractionDigits="3" value="${allProductList.product_price }"/></span>
										</div>
									</div>
								</div>
							</div>
						</c:otherwise>
						</c:choose>
						</c:forEach>
				
			</div>
			<div class="product__pagination">
				<a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#"><i
					class="fa fa-long-arrow-right"></i></a>
			</div>

		</div>

		<!-- 제품목록 끝 -->
     
    </section>
</body>
</html>