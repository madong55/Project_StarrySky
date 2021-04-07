<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
		/* $("#kangwon1").hide(); 
		
		$("#kw_day1").click(function(){
			$("#kr_day1").fadeOut('slow');
			$("#kangwon1").fadeIn('slow');
			$("#kangwon1").css("z-index", "9999");
			$("")
		});
		
		$("#jeju1").hide(); 
		
		$("#jj_day1").click(function(){
			$("#kr_day1").fadeOut('slow');
			$("#jeju1").fadeIn('slow');
			$("#jeju1").css("z-index", "9999");
		}); */
/* 		
		$(".map-day1").find(".kangwon-button").bind("click",function(){
			$(".map-day1").hide();
		}); */
		
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
 <jsp:include page="include/starry_top.jsp"></jsp:include>
 </header>
 
<%-- <c:import url="${root}/include/starry_top.jsp"></c:import> --%>
    
    <!-- Hero Section Begin -->
    <section class="hero-section">
        <div class="hs-slider owl-carousel">
     <!-- hs-slider  -->
			<div class="hs-item set-bg" data-setbg="img/header-bg.jpg">
				<div class="container">
					<div class="row">
						<div class="hs-text" id="kr_day1">

							<h2 class="date1_value" ></h2>
							
							<img src="img/krb4.png" usemap="#image-kr1">
							<map name="image-kr1">
							<area target="" alt="seoul" title="seoul" href="" coords="447,74,372,114,433,228,473,236,527,164,502,152,513,122,486,86" shape="poly">
    <area target="" alt="chungnam" title="chungnam" href="" coords="466,242,398,216,353,246,403,338,499,346" shape="poly">
    <area target="" alt="jeonbuk" title="jeonbuk" href="" coords="402,342,518,350,523,361,491,429,446,424,420,406,395,425,391,414,379,411" shape="poly">
    <area target="" alt="jeonnam" title="jeonnam" href="" coords="373,416,336,522,406,554,513,513,492,437,448,430,421,413,394,430" shape="poly">    
    <area target="" alt="kangwon" title="kangwon" href="kw_day1?dateinfo=1&location_id=42" coords="457,68,597,32,685,230,679,282,649,244,621,221,609,229,549,201,509,206,534,162,511,150,521,120,487,78" shape="poly">	
    <area target="" alt="chungbuk" title="chungbuk" href="" coords="505,212,477,242,500,338,521,346,538,329,521,315,528,289,517,280,565,249,575,256,596,231,549,207" shape="poly">
    <area target="" alt="gyungbuk" title="gyungbuk" href="" coords="601,234,577,261,564,257,527,279,533,290,528,314,546,332,525,347,533,367,553,384,553,394,627,407,669,411,683,294,624,227" shape="poly">
    <area target="" alt="gyungnam" title="gyungnam" href="" coords="524,366,495,433,516,508,593,510,671,418,549,401,549,387" shape="poly">
    <area target="" alt="jeju" title="jeju" href="jj_day1?dateinfo=1&location_id=49" coords="343,639,416,639,409,610,345,612,233,578,0,581,0,686,243,683,251,601" shape="poly">
    <area target="" alt="seoul" title="seoul" href="" coords="0,17,245,121" shape="rect">
    <area target="" alt="chungnam" title="chungnam" href="" coords="0,159,247,264" shape="rect">
    <area target="" alt="jeonbuk" title="jeonbuk" href="" coords="1,298,243,402" shape="rect">
    <area target="" alt="jeonnam" title="jeonnam" href="" coords="2,438,247,542" shape="rect">
    <area target="" alt="kangwon" title="kangwon" href="kw_day1?dateinfo=1&location_id=42" coords="751,33,999,136" shape="rect">
    <area target="" alt="chungbuk" title="chungbuk" href="" coords="753,208,999,320" shape="rect">
    <area target="" alt="gyungbuk" title="gyungbuk" href="" coords="753,389,999,493" shape="rect">
    <area target="" alt="gyungnam" title="gyungnam" href="" coords="757,559,998,663" shape="rect">

							</map>
							
							<!-- 날씨아이콘 배치-->
							<!-- 서울 -->
							<div style="display:flex; position:absolute; top: 20%; left: 2%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
								<!-- 충남 -->
								<div style="display:flex; position:absolute; top: 38%; left: 2%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						<!-- 전북 -->
								<div style="display:flex; position:absolute; top: 56%; left: 2%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						<!-- 전남 -->
								<div style="display:flex; position:absolute; top: 73%; left: 2%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						
						<!-- 제주 -->
								<div style="display:flex; position:absolute; top: 91%; left: 2%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						
						<!-- 강원 -->
								<div style="display:flex; position:absolute; top: 22%; right: 3%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						<!-- 충북 -->
								<div style="display:flex; position:absolute; top: 44%; right: 3%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						<!-- 경북 -->
								<div style="display:flex; position:absolute; top:66%; right: 3%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						<!-- 경남 -->
								<div style="display:flex; position:absolute; top: 88%; right: 3%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
								
														
							</div>
					</div>
				</div>
			</div>



				<div class="hs-item set-bg" data-setbg="img/header-bg.jpg">
				<div class="container">
					<div class="row">
						<div class="hs-text" id="kr_day2">							
							
							<h2 class="date2_value" ></h2>
						
							<img src="img/krb4.png" usemap="#image-kr2">	
								<map name="image-kr2">
							<area target="" alt="seoul" title="seoul" href="" coords="447,74,372,114,433,228,473,236,527,164,502,152,513,122,486,86" shape="poly">
    <area target="" alt="chungnam" title="chungnam" href="" coords="466,242,398,216,353,246,403,338,499,346" shape="poly">
    <area target="" alt="jeonbuk" title="jeonbuk" href="" coords="402,342,518,350,523,361,491,429,446,424,420,406,395,425,391,414,379,411" shape="poly">
    <area target="" alt="jeonnam" title="jeonnam" href="" coords="373,416,336,522,406,554,513,513,492,437,448,430,421,413,394,430" shape="poly">    
    <area target="" alt="kangwon" title="kangwon" href="kw_day1?dateinfo=2&location_id=42" coords="457,68,597,32,685,230,679,282,649,244,621,221,609,229,549,201,509,206,534,162,511,150,521,120,487,78" shape="poly">	
    <area target="" alt="chungbuk" title="chungbuk" href="" coords="505,212,477,242,500,338,521,346,538,329,521,315,528,289,517,280,565,249,575,256,596,231,549,207" shape="poly">
    <area target="" alt="gyungbuk" title="gyungbuk" href="" coords="601,234,577,261,564,257,527,279,533,290,528,314,546,332,525,347,533,367,553,384,553,394,627,407,669,411,683,294,624,227" shape="poly">
    <area target="" alt="gyungnam" title="gyungnam" href="" coords="524,366,495,433,516,508,593,510,671,418,549,401,549,387" shape="poly">
    <area target="" alt="jeju" title="jeju" href="jj_day1#jjd2?dateinfo=2&location_id=49" coords="343,639,416,639,409,610,345,612,233,578,0,581,0,686,243,683,251,601" shape="poly">
    <area target="" alt="seoul" title="seoul" href="" coords="0,17,245,121" shape="rect">
    <area target="" alt="chungnam" title="chungnam" href="" coords="0,159,247,264" shape="rect">
    <area target="" alt="jeonbuk" title="jeonbuk" href="" coords="1,298,243,402" shape="rect">
    <area target="" alt="jeonnam" title="jeonnam" href="" coords="2,438,247,542" shape="rect">
    <area target="" alt="kangwon" title="kangwon" href="kw_day1?dateinfo=2&location_id=42" coords="751,33,999,136" shape="rect">
    <area target="" alt="chungbuk" title="chungbuk" href="" coords="753,208,999,320" shape="rect">
    <area target="" alt="gyungbuk" title="gyungbuk" href="" coords="753,389,999,493" shape="rect">
    <area target="" alt="gyungnam" title="gyungnam" href="" coords="757,559,998,663" shape="rect">
							</map>
								<div style="display:flex; position:absolute; top: 20%; left: 2%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
								<!-- 충남 -->
								<div style="display:flex; position:absolute; top: 38%; left: 2%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						<!-- 전북 -->
								<div style="display:flex; position:absolute; top: 56%; left: 2%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						<!-- 전남 -->
								<div style="display:flex; position:absolute; top: 73%; left: 2%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						
						<!-- 제주 -->
								<div style="display:flex; position:absolute; top: 91%; left: 2%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						
						<!-- 강원 -->
								<div style="display:flex; position:absolute; top: 22%; right: 3%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						<!-- 충북 -->
								<div style="display:flex; position:absolute; top: 44%; right: 3%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						<!-- 경북 -->
								<div style="display:flex; position:absolute; top:66%; right: 3%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						<!-- 경남 -->
								<div style="display:flex; position:absolute; top: 88%; right: 3%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
							
						</div>
					</div>
				</div>
			</div>
    
    
       	<div class="hs-item set-bg" data-setbg="img/header-bg.jpg">
				<div class="container">
					<div class="row">
						<div class="hs-text" id="kr_day3">
							
							<h2 class="date3_value" ></h2>
							
							<img src="img/krb4.png" usemap="#image-kr3">	
							<map name="image-kr3">			
								<area target="" alt="seoul" title="seoul" href="" coords="447,74,372,114,433,228,473,236,527,164,502,152,513,122,486,86" shape="poly">
    <area target="" alt="chungnam" title="chungnam" href="" coords="466,242,398,216,353,246,403,338,499,346" shape="poly">
    <area target="" alt="jeonbuk" title="jeonbuk" href="" coords="402,342,518,350,523,361,491,429,446,424,420,406,395,425,391,414,379,411" shape="poly">
    <area target="" alt="jeonnam" title="jeonnam" href="" coords="373,416,336,522,406,554,513,513,492,437,448,430,421,413,394,430" shape="poly">    
    <area target="" alt="kangwon" title="kangwon" href="kw_day1?dateinfo=3&location_id=42" coords="457,68,597,32,685,230,679,282,649,244,621,221,609,229,549,201,509,206,534,162,511,150,521,120,487,78" shape="poly">	
    <area target="" alt="chungbuk" title="chungbuk" href="" coords="505,212,477,242,500,338,521,346,538,329,521,315,528,289,517,280,565,249,575,256,596,231,549,207" shape="poly">
    <area target="" alt="gyungbuk" title="gyungbuk" href="" coords="601,234,577,261,564,257,527,279,533,290,528,314,546,332,525,347,533,367,553,384,553,394,627,407,669,411,683,294,624,227" shape="poly">
    <area target="" alt="gyungnam" title="gyungnam" href="" coords="524,366,495,433,516,508,593,510,671,418,549,401,549,387" shape="poly">
    <area target="" alt="jeju" title="jeju" href="jj_day1?dateinfo=3&location_id=49#jjd3" coords="343,639,416,639,409,610,345,612,233,578,0,581,0,686,243,683,251,601" shape="poly">
    <area target="" alt="seoul" title="seoul" href="" coords="0,17,245,121" shape="rect">
    <area target="" alt="chungnam" title="chungnam" href="" coords="0,159,247,264" shape="rect">
    <area target="" alt="jeonbuk" title="jeonbuk" href="" coords="1,298,243,402" shape="rect">
    <area target="" alt="jeonnam" title="jeonnam" href="" coords="2,438,247,542" shape="rect">
    <area target="" alt="kangwon" title="kangwon" href="kw_day1?dateinfo=3&location_id=42" coords="751,33,999,136" shape="rect">
    <area target="" alt="chungbuk" title="chungbuk" href="" coords="753,208,999,320" shape="rect">
    <area target="" alt="gyungbuk" title="gyungbuk" href="" coords="753,389,999,493" shape="rect">
    <area target="" alt="gyungnam" title="gyungnam" href="" coords="757,559,998,663" shape="rect">
							</map>	
							
								<div style="display:flex; position:absolute; top: 20%; left: 2%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
								<!-- 충남 -->
								<div style="display:flex; position:absolute; top: 38%; left: 2%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						<!-- 전북 -->
								<div style="display:flex; position:absolute; top: 56%; left: 2%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						<!-- 전남 -->
								<div style="display:flex; position:absolute; top: 73%; left: 2%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						
						<!-- 제주 -->
								<div style="display:flex; position:absolute; top: 91%; left: 2%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						
						<!-- 강원 -->
								<div style="display:flex; position:absolute; top: 22%; right: 3%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						<!-- 충북 -->
								<div style="display:flex; position:absolute; top: 44%; right: 3%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						<!-- 경북 -->
								<div style="display:flex; position:absolute; top:66%; right: 3%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						<!-- 경남 -->
								<div style="display:flex; position:absolute; top: 88%; right: 3%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>				
						</div>
					</div>
				</div>
			</div>
       
          	<div class="hs-item set-bg" data-setbg="img/header-bg.jpg">
				<div class="container">
					<div class="row">
						<div class="hs-text" id="kr_day4">
							
							<h2 class="date4_value" ></h2>
							<img src="img/krb4.png" usemap="#image-kr4">		
							<map name="image-kr4">						
								<area target="" alt="seoul" title="seoul" href="" coords="447,74,372,114,433,228,473,236,527,164,502,152,513,122,486,86" shape="poly">
    <area target="" alt="chungnam" title="chungnam" href="" coords="466,242,398,216,353,246,403,338,499,346" shape="poly">
    <area target="" alt="jeonbuk" title="jeonbuk" href="" coords="402,342,518,350,523,361,491,429,446,424,420,406,395,425,391,414,379,411" shape="poly">
    <area target="" alt="jeonnam" title="jeonnam" href="" coords="373,416,336,522,406,554,513,513,492,437,448,430,421,413,394,430" shape="poly">    
    <area target="" alt="kangwon" title="kangwon" href="kw_day1?dateinfo=4&location_id=42" coords="457,68,597,32,685,230,679,282,649,244,621,221,609,229,549,201,509,206,534,162,511,150,521,120,487,78" shape="poly">	
    <area target="" alt="chungbuk" title="chungbuk" href="" coords="505,212,477,242,500,338,521,346,538,329,521,315,528,289,517,280,565,249,575,256,596,231,549,207" shape="poly">
    <area target="" alt="gyungbuk" title="gyungbuk" href="" coords="601,234,577,261,564,257,527,279,533,290,528,314,546,332,525,347,533,367,553,384,553,394,627,407,669,411,683,294,624,227" shape="poly">
    <area target="" alt="gyungnam" title="gyungnam" href="" coords="524,366,495,433,516,508,593,510,671,418,549,401,549,387" shape="poly">
    <area target="" alt="jeju" title="jeju" href="jj_day1?dateinfo=4&location_id=49" coords="343,639,416,639,409,610,345,612,233,578,0,581,0,686,243,683,251,601" shape="poly">
    <area target="" alt="seoul" title="seoul" href="" coords="0,17,245,121" shape="rect">
    <area target="" alt="chungnam" title="chungnam" href="" coords="0,159,247,264" shape="rect">
    <area target="" alt="jeonbuk" title="jeonbuk" href="" coords="1,298,243,402" shape="rect">
    <area target="" alt="jeonnam" title="jeonnam" href="" coords="2,438,247,542" shape="rect">
    <area target="" alt="kangwon" title="kangwon" href="kw_day1?dateinfo=4&location_id=42" coords="751,33,999,136" shape="rect">
    <area target="" alt="chungbuk" title="chungbuk" href="" coords="753,208,999,320" shape="rect">
    <area target="" alt="gyungbuk" title="gyungbuk" href="" coords="753,389,999,493" shape="rect">
    <area target="" alt="gyungnam" title="gyungnam" href="" coords="757,559,998,663" shape="rect">
							</map>	
							
								<div style="display:flex; position:absolute; top: 20%; left: 2%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
								<!-- 충남 -->
								<div style="display:flex; position:absolute; top: 38%; left: 2%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						<!-- 전북 -->
								<div style="display:flex; position:absolute; top: 56%; left: 2%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						<!-- 전남 -->
								<div style="display:flex; position:absolute; top: 73%; left: 2%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						
						<!-- 제주 -->
								<div style="display:flex; position:absolute; top: 91%; left: 2%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						
						<!-- 강원 -->
								<div style="display:flex; position:absolute; top: 22%; right: 3%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						<!-- 충북 -->
								<div style="display:flex; position:absolute; top: 44%; right: 3%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						<!-- 경북 -->
								<div style="display:flex; position:absolute; top:66%; right: 3%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						<!-- 경남 -->
								<div style="display:flex; position:absolute; top: 88%; right: 3%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
													
						</div>
					</div>
				</div>
			</div>  
                
                	<div class="hs-item set-bg" data-setbg="img/header-bg.jpg">
				<div class="container">
					<div class="row">
						<div class="hs-text " id="kr_day5">
							<!-- style="display : block ; text-align : center ;" -->
							<h2 class="date5_value" ></h2>
							<img src="img/krb4.png" usemap="#image-kr5">		
							<map name="image-kr5">						
								<area target="" alt="seoul" title="seoul" href="" coords="447,74,372,114,433,228,473,236,527,164,502,152,513,122,486,86" shape="poly">
    <area target="" alt="chungnam" title="chungnam" href="" coords="466,242,398,216,353,246,403,338,499,346" shape="poly">
    <area target="" alt="jeonbuk" title="jeonbuk" href="" coords="402,342,518,350,523,361,491,429,446,424,420,406,395,425,391,414,379,411" shape="poly">
    <area target="" alt="jeonnam" title="jeonnam" href="" coords="373,416,336,522,406,554,513,513,492,437,448,430,421,413,394,430" shape="poly">    
    <area target="" alt="kangwon" title="kangwon" href="kw_day1?dateinfo=5&location_id=42" coords="457,68,597,32,685,230,679,282,649,244,621,221,609,229,549,201,509,206,534,162,511,150,521,120,487,78" shape="poly">	
    <area target="" alt="chungbuk" title="chungbuk" href="" coords="505,212,477,242,500,338,521,346,538,329,521,315,528,289,517,280,565,249,575,256,596,231,549,207" shape="poly">
    <area target="" alt="gyungbuk" title="gyungbuk" href="" coords="601,234,577,261,564,257,527,279,533,290,528,314,546,332,525,347,533,367,553,384,553,394,627,407,669,411,683,294,624,227" shape="poly">
    <area target="" alt="gyungnam" title="gyungnam" href="" coords="524,366,495,433,516,508,593,510,671,418,549,401,549,387" shape="poly">
    <area target="" alt="jeju" title="jeju" href="jj_day1?dateinfo=5&location_id=49" coords="343,639,416,639,409,610,345,612,233,578,0,581,0,686,243,683,251,601" shape="poly">
    <area target="" alt="seoul" title="seoul" href="" coords="0,17,245,121" shape="rect">
    <area target="" alt="chungnam" title="chungnam" href="" coords="0,159,247,264" shape="rect">
    <area target="" alt="jeonbuk" title="jeonbuk" href="" coords="1,298,243,402" shape="rect">
    <area target="" alt="jeonnam" title="jeonnam" href="" coords="2,438,247,542" shape="rect">
    <area target="" alt="kangwon" title="kangwon" href="kw_day1?dateinfo=5&location_id=42" coords="751,33,999,136" shape="rect">
    <area target="" alt="chungbuk" title="chungbuk" href="" coords="753,208,999,320" shape="rect">
    <area target="" alt="gyungbuk" title="gyungbuk" href="" coords="753,389,999,493" shape="rect">
    <area target="" alt="gyungnam" title="gyungnam" href="" coords="757,559,998,663" shape="rect">
							</map>	
							
								<div style="display:flex; position:absolute; top: 20%; left: 2%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
								<!-- 충남 -->
								<div style="display:flex; position:absolute; top: 38%; left: 2%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						<!-- 전북 -->
								<div style="display:flex; position:absolute; top: 56%; left: 2%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						<!-- 전남 -->
								<div style="display:flex; position:absolute; top: 73%; left: 2%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						
						<!-- 제주 -->
								<div style="display:flex; position:absolute; top: 91%; left: 2%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						
						<!-- 강원 -->
								<div style="display:flex; position:absolute; top: 22%; right: 3%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						<!-- 충북 -->
								<div style="display:flex; position:absolute; top: 44%; right: 3%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						<!-- 경북 -->
								<div style="display:flex; position:absolute; top:66%; right: 3%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
						</div>
						<!-- 경남 -->
								<div style="display:flex; position:absolute; top: 88%; right: 3%;">
						<span><img src="img/logo.png"  style="width:70px; height:40px; margin-right: 10px; "></span> 
						<span><img src="img/logo.png"  style=" width:70px; height:40px;margin-right: 10px; "></span> 
						<span> <h4>3.5</h4></span> 
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
    
    <!-- Categories Section End -->


	${param.icon }

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