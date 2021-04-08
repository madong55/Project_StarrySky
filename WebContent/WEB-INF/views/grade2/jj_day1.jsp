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
 
    
    <!-- Hero Section Begin -->
    <section class="hero-section">
        <div class="hs-slider owl-carousel">
     <!-- hs-slider  -->
			<div class="hs-item set-bg" data-setbg="img/header-bg.jpg" id="jjd1">
				<div class="container">
					<div class="row">
						<div class="hs-text">
							<h2 class="date1_value" ></h2>
				
						<img src="img/map_grade2/jjb2.png" usemap="#image-jj1">
<map name="image-jj1">
    <area target="" alt="" title="jejuci" href="map?location_id=224209" coords="96,386,161,413,256,339,358,333,629,262,653,245,710,242,866,170,769,86,581,94,437,134,390,148,266,63,31,66,32,163,258,180,92,338" shape="poly">
    <area target="" alt="" title="seogui" href="map?location_id=224210" coords="94,393,85,418,201,529,257,477,545,476,656,434,709,469,716,555,955,561,958,465,721,442,689,430,789,386,885,205,861,180,713,247,656,249,632,268,362,339,258,343,163,420" shape="poly">
</map>
							<!-- 제주시 -->
							<div style="display:flex; position:absolute; top: 27%; left: 7%; ">
						<a href="map?location_id=224209">
						<c:set var="icon">${weather_map.get("224209").get(0).getIcon()}</c:set>	
						<c:choose>
					<c:when test="${ icon<10}">
					<img src="https://developer.accuweather.com/sites/default/files/0${icon}-s.png" style=" width:50px; height:30px;margin-right: 30px; ">
					</c:when>
					<c:otherwise>
					<img src="https://developer.accuweather.com/sites/default/files/${icon}-s.png" style=" width:50px; height:30px;margin-right: 30px; ">
					</c:otherwise>
						</c:choose> 
						</a>
						<a href="map?location_id=224209">
						<span><img src="img/star_PNG.png"  style=" width:30px; height:30px;margin-right: 10px; "></span> 
							</a>
						<a href="map?location_id=224209">
						<span> <h4>X ${weather_map.get("224209").get(0).getStar_indicator_data()}</h4></span> 
							</a>
							</div>
					
					<!-- 서귀포시 -->
						<div style="display:flex;position:absolute;top: 76%;right: 9%;">
							<a href="map?location_id=224210">
						<c:set var="icon">${weather_map.get("224210").get(0).getIcon()}</c:set>	
						<c:choose>
					<c:when test="${ icon<10}">
					<img src="https://developer.accuweather.com/sites/default/files/0${icon}-s.png" style=" width:50px; height:30px;margin-right: 30px; ">
					</c:when>
					<c:otherwise>
					<img src="https://developer.accuweather.com/sites/default/files/${icon}-s.png" style=" width:50px; height:30px;margin-right: 30px; ">
					</c:otherwise>
						</c:choose> 
						</a>
						<a href="map?location_id=224210">
						<span><img src="img/star_PNG.png"  style=" width:30px; height:30px;margin-right: 10px; "></span> 
							</a>
						<a href="map?location_id=224210">
						<span> <h4>X ${weather_map.get("224210").get(0).getStar_indicator_data()}</h4></span> 
							</a>
							</div>
					
						
							
						</div>
					</div>
				</div>
			</div>
			
			
			<div class="hs-item set-bg" data-setbg="img/header-bg.jpg" id="jjd2">
				<div class="container">
					<div class="row">
						<div class="hs-text">
							<h2 class="date2_value" ></h2>
				
						<img src="img/map_grade2/jjb2.png" usemap="#image-jj2">
<map name="image-jj2">
    <area target="" alt="" title="jejuci" href="map?dateinfo=2&location_id=224209" coords="96,386,161,413,256,339,358,333,629,262,653,245,710,242,866,170,769,86,581,94,437,134,390,148,266,63,31,66,32,163,258,180,92,338" shape="poly">
    <area target="" alt="" title="seogui" href="map?dateinfo=2&location_id=224210" coords="94,393,85,418,201,529,257,477,545,476,656,434,709,469,716,555,955,561,958,465,721,442,689,430,789,386,885,205,861,180,713,247,656,249,632,268,362,339,258,343,163,420" shape="poly">
</map>
					<!-- 제주시 -->
							<div style="display:flex; position:absolute; top: 27%; left: 7%; ">
						<a href="map?location_id=224209">
						<c:set var="icon">${weather_map.get("224209").get(1).getIcon()}</c:set>	
						<c:choose>
					<c:when test="${ icon<10}">
					<img src="https://developer.accuweather.com/sites/default/files/0${icon}-s.png" style=" width:50px; height:30px;margin-right: 30px; ">
					</c:when>
					<c:otherwise>
					<img src="https://developer.accuweather.com/sites/default/files/${icon}-s.png" style=" width:50px; height:30px;margin-right: 30px; ">
					</c:otherwise>
						</c:choose> 
						</a>
						<a href="map?location_id=224209">
						<span><img src="img/star_PNG.png"  style=" width:30px; height:30px;margin-right: 10px; "></span> 
							</a>
						<a href="map?location_id=224209">
						<span> <h4>X ${weather_map.get("224209").get(1).getStar_indicator_data()}</h4></span> 
							</a>
							</div>
					
					<!-- 서귀포시 -->
						<div style="display:flex;position:absolute;top: 76%;right: 9%;">
							<a href="map?location_id=224210">
						<c:set var="icon">${weather_map.get("224210").get(1).getIcon()}</c:set>	
						<c:choose>
					<c:when test="${ icon<10}">
					<img src="https://developer.accuweather.com/sites/default/files/0${icon}-s.png" style=" width:50px; height:30px;margin-right: 30px; ">
					</c:when>
					<c:otherwise>
					<img src="https://developer.accuweather.com/sites/default/files/${icon}-s.png" style=" width:50px; height:30px;margin-right: 30px; ">
					</c:otherwise>
						</c:choose> 
						</a>
						<a href="map?location_id=224210">
						<span><img src="img/star_PNG.png"  style=" width:30px; height:30px;margin-right: 10px; "></span> 
							</a>
						<a href="map?location_id=224210">
						<span> <h4>X ${weather_map.get("224210").get(1).getStar_indicator_data()}</h4></span> 
							</a>
							</div>
								
						</div>
					</div>
				</div>
			</div>
			
			<div class="hs-item set-bg" data-setbg="img/header-bg.jpg" >
				<div class="container">
					<div class="row">
						<div class="hs-text">
							<h2 class="date3_value" ></h2>
				
						<img src="img/map_grade2/jjb2.png" usemap="#image-jj3">
<map name="image-jj3">
    <area target="" alt="" title="jejuci" href="map?dateinfo=3&location_id=224209" coords="96,386,161,413,256,339,358,333,629,262,653,245,710,242,866,170,769,86,581,94,437,134,390,148,266,63,31,66,32,163,258,180,92,338" shape="poly">
    <area target="" alt="" title="seogui" href="map?dateinfo=3&location_id=224210" coords="94,393,85,418,201,529,257,477,545,476,656,434,709,469,716,555,955,561,958,465,721,442,689,430,789,386,885,205,861,180,713,247,656,249,632,268,362,339,258,343,163,420" shape="poly">
</map>
							<!-- 제주시 -->
							<div style="display:flex; position:absolute; top: 27%; left: 7%; ">
						<a href="map?location_id=224209">
						<c:set var="icon">${weather_map.get("224209").get(2).getIcon()}</c:set>	
						<c:choose>
					<c:when test="${ icon<10}">
					<img src="https://developer.accuweather.com/sites/default/files/0${icon}-s.png" style=" width:50px; height:30px;margin-right: 30px; ">
					</c:when>
					<c:otherwise>
					<img src="https://developer.accuweather.com/sites/default/files/${icon}-s.png" style=" width:50px; height:30px;margin-right: 30px; ">
					</c:otherwise>
						</c:choose> 
						</a>
						<a href="map?location_id=224209">
						<span><img src="img/star_PNG.png"  style=" width:30px; height:30px;margin-right: 10px; "></span> 
							</a>
						<a href="map?location_id=224209">
						<span> <h4>X ${weather_map.get("224209").get(2).getStar_indicator_data()}</h4></span> 
							</a>
							</div>
					
					<!-- 서귀포시 -->
						<div style="display:flex;position:absolute;top: 76%;right: 9%;">
							<a href="map?location_id=224210">
						<c:set var="icon">${weather_map.get("224210").get(2).getIcon()}</c:set>	
						<c:choose>
					<c:when test="${ icon<10}">
					<img src="https://developer.accuweather.com/sites/default/files/0${icon}-s.png" style=" width:50px; height:30px;margin-right: 30px; ">
					</c:when>
					<c:otherwise>
					<img src="https://developer.accuweather.com/sites/default/files/${icon}-s.png" style=" width:50px; height:30px;margin-right: 30px; ">
					</c:otherwise>
						</c:choose> 
						</a>
						<a href="map?location_id=224210">
						<span><img src="img/star_PNG.png"  style=" width:30px; height:30px;margin-right: 10px; "></span> 
							</a>
						<a href="map?location_id=224210">
						<span> <h4>X ${weather_map.get("224210").get(2).getStar_indicator_data()}</h4></span> 
							</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			
		<div class="hs-item set-bg" data-setbg="img/header-bg.jpg" >
				<div class="container">
					<div class="row">
						<div class="hs-text">
							<h2 class="date4_value" ></h2>
				
						<img src="img/map_grade2/jjb2.png" usemap="#image-jj4">
<map name="image-jj4">
    <area target="" alt="" title="jejuci" href="map?dateinfo=4&location_id=224209" coords="96,386,161,413,256,339,358,333,629,262,653,245,710,242,866,170,769,86,581,94,437,134,390,148,266,63,31,66,32,163,258,180,92,338" shape="poly">
    <area target="" alt="" title="seogui" href="map?dateinfo=4&location_id=224210" coords="94,393,85,418,201,529,257,477,545,476,656,434,709,469,716,555,955,561,958,465,721,442,689,430,789,386,885,205,861,180,713,247,656,249,632,268,362,339,258,343,163,420" shape="poly">
</map>
					<!-- 제주시 -->
							<div style="display:flex; position:absolute; top: 27%; left: 7%; ">
						<a href="map?location_id=224209">
						<c:set var="icon">${weather_map.get("224209").get(3).getIcon()}</c:set>	
						<c:choose>
					<c:when test="${ icon<10}">
					<img src="https://developer.accuweather.com/sites/default/files/0${icon}-s.png" style=" width:50px; height:30px;margin-right: 30px; ">
					</c:when>
					<c:otherwise>
					<img src="https://developer.accuweather.com/sites/default/files/${icon}-s.png" style=" width:50px; height:30px;margin-right: 30px; ">
					</c:otherwise>
						</c:choose> 
						</a>
						<a href="map?location_id=224209">
						<span><img src="img/star_PNG.png"  style=" width:30px; height:30px;margin-right: 10px; "></span> 
							</a>
						<a href="map?location_id=224209">
						<span> <h4>X ${weather_map.get("224209").get(3).getStar_indicator_data()}</h4></span> 
							</a>
							</div>
					
					<!-- 서귀포시 -->
						<div style="display:flex;position:absolute;top: 76%;right: 9%;">
							<a href="map?location_id=224210">
						<c:set var="icon">${weather_map.get("224210").get(3).getIcon()}</c:set>	
						<c:choose>
					<c:when test="${ icon<10}">
					<img src="https://developer.accuweather.com/sites/default/files/0${icon}-s.png" style=" width:50px; height:30px;margin-right: 30px; ">
					</c:when>
					<c:otherwise>
					<img src="https://developer.accuweather.com/sites/default/files/${icon}-s.png" style=" width:50px; height:30px;margin-right: 30px; ">
					</c:otherwise>
						</c:choose> 
						</a>
						<a href="map?location_id=224210">
						<span><img src="img/star_PNG.png"  style=" width:30px; height:30px;margin-right: 10px; "></span> 
							</a>
						<a href="map?location_id=224210">
						<span> <h4>X ${weather_map.get("224210").get(3).getStar_indicator_data()}</h4></span> 
							</a>
							</div>
						
						</div>
					</div>
				</div>
			</div>	
			
			
			<div class="hs-item set-bg" data-setbg="img/header-bg.jpg" >
				<div class="container">
					<div class="row">
						<div class="hs-text">
							<h2 class="date5_value" ></h2>
				
						<img src="img/map_grade2/jjb2.png" usemap="#image-jj5">
<map name="image-jj5">
    <area target="" alt="" title="jejuci" href="map?dateinfo=5&location_id=224209" coords="96,386,161,413,256,339,358,333,629,262,653,245,710,242,866,170,769,86,581,94,437,134,390,148,266,63,31,66,32,163,258,180,92,338" shape="poly">
    <area target="" alt="" title="seogui" href="map?dateinfo=5&location_id=224210" coords="94,393,85,418,201,529,257,477,545,476,656,434,709,469,716,555,955,561,958,465,721,442,689,430,789,386,885,205,861,180,713,247,656,249,632,268,362,339,258,343,163,420" shape="poly">
</map>
						<!-- 제주시 -->
							<div style="display:flex; position:absolute; top: 27%; left: 7%; ">
						<a href="map?location_id=224209">
						<c:set var="icon">${weather_map.get("224209").get(4).getIcon()}</c:set>	
						<c:choose>
					<c:when test="${ icon<10}">
					<img src="https://developer.accuweather.com/sites/default/files/0${icon}-s.png" style=" width:50px; height:30px;margin-right: 30px; ">
					</c:when>
					<c:otherwise>
					<img src="https://developer.accuweather.com/sites/default/files/${icon}-s.png" style=" width:50px; height:30px;margin-right: 30px; ">
					</c:otherwise>
						</c:choose> 
						</a>
						<a href="map?location_id=224209">
						<span><img src="img/star_PNG.png"  style=" width:30px; height:30px;margin-right: 10px; "></span> 
							</a>
						<a href="map?location_id=224209">
						<span> <h4>X ${weather_map.get("224209").get(4).getStar_indicator_data()}</h4></span> 
							</a>
							</div>
					
					<!-- 서귀포시 -->
						<div style="display:flex;position:absolute;top: 76%;right: 9%;">
							<a href="map?location_id=224210">
						<c:set var="icon">${weather_map.get("224210").get(4).getIcon()}</c:set>	
						<c:choose>
					<c:when test="${ icon<10}">
					<img src="https://developer.accuweather.com/sites/default/files/0${icon}-s.png" style=" width:50px; height:30px;margin-right: 30px; ">
					</c:when>
					<c:otherwise>
					<img src="https://developer.accuweather.com/sites/default/files/${icon}-s.png" style=" width:50px; height:30px;margin-right: 30px; ">
					</c:otherwise>
						</c:choose> 
						</a>
						<a href="map?location_id=224210">
						<span><img src="img/star_PNG.png"  style=" width:30px; height:30px;margin-right: 10px; "></span> 
							</a>
						<a href="map?location_id=224210">
						<span> <h4>X ${weather_map.get("224210").get(4).getStar_indicator_data()}</h4></span> 
							</a>
							</div>
						
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
    </div>
    <!-- Categories Section End -->

${param.icon }
       <!-- Footer Section Begin -->
 
    <jsp:include page="/WEB-INF/views/include/starry_footer.jsp" ></jsp:include>   
 
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