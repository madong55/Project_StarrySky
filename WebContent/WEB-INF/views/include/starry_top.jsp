<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <c:set var="root" value="${pageContext.request.contextPath }"></c:set>
   <%-- 
   <div class="book-comments">
      <jsp:include page="commentisbn.do">
         <jsp:param value="1" name="page"/>
         <jsp:param value="${book.isbn }" name="isbn"/>
      </jsp:include>
   </div> --%>
   
  <!-- Css Styles -->
 <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="style.css" type="text/css">
   <script src="js/jquery-3.6.0.js"></script>


 <div class="header-section">
<!--  <header class="header-section"> -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="logo">
					<c:choose>
						<c:when test="${PresentPageCheckBean.presentPage == true }">
							<a href="${root }/shop/index"> <img src="img/logos/yellologo.png" width="170px" height="24px" alt="">
							</a>
						</c:when>
						<c:otherwise>
							<a href="${root }/main"> <img src="img/logos/yellologo.png" width="170px" height="24px"  alt="">
							</a>
						</c:otherwise>
					</c:choose>
				</div>
				<nav class="nav-menu mobile-menu">
					<ul>
						

						<c:choose>
							<c:when test="${loginUserBean.userLogin == true }">
								<li><a href="#">MY PAGE</a>
									<ul class="dropdown">
										<li><a href="${root }/pay/mypay_list">결제 내역</a></li>
										<li><a href="${root }/user/modify">내 정보 수정</a></li>
										<li><a href="${root }/user/logout">로그아웃</a></li>
									</ul></li>
							

							</c:when>
							<c:otherwise>

								<li><a href="${root }/user/login" class="nav-link">Sign
										In</a></li>
								<li><a href="${root }/user/join" class="nav-link">Sign
										Up</a></li>

							</c:otherwise>
						</c:choose>
						
						<c:choose>
							<c:when test="${PresentPageCheckBean.presentPage == true }">
								<li><a href="${root }/main">STARRY SKY</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="${root }/shop/index">STARRY SHOP</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</nav>

			
                </div>
                </div>
            </div>
        </div>
<!--     </header> -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/masonry.pkgd.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
     