'<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:set var="root" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Phozogy Template">
    <meta name="keywords" content="Phozogy, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Starry Sky</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Quantico:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700&display=swap" rel="stylesheet">
	<!-- 한글나눔고딕 -->
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="style.css" type="text/css">
   <script src="js/jquery-3.6.0.js"></script>
<script type="text/javascript">



	/* 날짜계산식 */
	var dt = new Date();
	var date1 = dt.getFullYear() + '-' + (dt.getMonth() + 1) + '-'
			+ dt.getDate();

	var dt2 = new Date(dt.setDate(dt.getDate() + 1));
	var date2 = dt2.getFullYear() + '-' + (dt2.getMonth() + 1) + '-'
			+ dt2.getDate();

	var dt3 = new Date(dt.setDate(dt2.getDate() + 1));
	var date3 = dt3.getFullYear() + '-' + (dt3.getMonth() + 1) + '-'
			+ dt3.getDate();

	var dt4 = new Date(dt.setDate(dt3.getDate() + 1));
	var date4 = dt4.getFullYear() + '-' + (dt4.getMonth() + 1) + '-'
			+ dt4.getDate();

	var dt5 = new Date(dt.setDate(dt4.getDate() + 1));
	var date5 = dt5.getFullYear() + '-' + (dt5.getMonth() + 1) + '-'
			+ dt5.getDate();
	
	$(document).ready(function(){
		$(".map-day1").find(".jeju-button").bind("click",function(){
			//$(".map-day1").hide();
		});
		$(".map-day1").find(".kangwon-button").bind("click",function(){
			$(".map-day1").hide();
		});
	
		$(".date1_value").text(date1);
		$(".date2_value").text(date2);
		$(".date3_value").text(date3);
		$(".date4_value").text(date4);
		$(".date5_value").text(date5);
	});
	/* h2안에 스크립트를 넣는게 아니라 h2에 클래스를 줘서 클래스에 따라 값을 뿌려야 한다 */
	
</script>




<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header>   
 <jsp:include page="/WEB-INF/views/include/starry_top.jsp"></jsp:include>
 </header>
 
<%-- <c:import url="${root}/include/starry_top.jsp"></c:import> --%>
    
    <!-- Hero Section Begin -->
    <section class="hero-section">
        <div class="hs-slider owl-carousel">
     <!-- hs-slider  -->
			<div class="hs-item set-bg" data-setbg="img/header-bg.jpg">
				<div class="container">
					<div class="row">
						<div class="hs-text">

							<h2 class="date3_value" ></h2>
				
						<a href="map">	<img src="img/map_grade2/kw1.png" ></a>
							
						</div>
					</div>
				</div>
			</div>
            </div>  
    </section>
    <!-- Hero Section End -->

   
    <!-- Services Section Begin -->
    <jsp:include page="/WEB-INF/views/include/main_review.jsp"></jsp:include>
    <!-- Services Section End -->


    <!-- Categories Section Begin -->
    <jsp:include page="/WEB-INF/views/include/main_recommended.jsp"></jsp:include>
    
    <!-- Categories Section End -->


       <!-- Footer Section Begin -->
 
    <jsp:include page="/WEB-INF/views/include/starry_footer.jsp"></jsp:include>   
 
    <!-- Footer Section End -->


    <!-- Js Plugins -->
 
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/masonry.pkgd.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
    
        
            
</body>

</html>