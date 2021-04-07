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
     
     <!-- 1일차 -->
			<div class="hs-item set-bg" data-setbg="img/header-bg.jpg">
				<div class="container">
					<div class="row">
						<div class="hs-text">

							<h2 class="date1_value" ></h2>
				
						 <img src="img/map_grade2/kw1.png" usemap="#image-kw1" /> 
<map name="image-kw1">
    <area target="" alt="cheolwon" title="cheolwon" href="" coords="285,198,217,178,191,106,302,102,438,134,419,146,349,134" shape="poly">
    <area target="" alt="hwacheon" title="hwacheon" href="map?dateinfo=1&location_id=223565" coords="349,145,385,147,414,151,424,224,408,236,388,234,357,222,333,204,318,227,253,237,246,328,5,327,5,223,244,220,294,215,297,194" shape="poly">
    <area target="" alt="yanggu" title="yanggu" href="" coords="435,141,508,143,482,236,452,244,434,235,425,181,424,152" shape="poly">
    <area target="" alt="chuncheon" title="chuncheon" href="map?dateinfo=1&location_id=223554" coords="334,210,319,235,339,258,311,290,297,330,301,344,241,385,7,389,6,485,249,486,254,398,318,346,339,348,354,336,396,332,385,304,410,298,419,306,439,277,450,250,429,237,405,242,363,232" shape="poly">
    <area target="" alt="hongcheon" title="hongcheon" href="map" coords="317,355,307,366,375,402,425,386,455,381,469,370,503,393,521,372,560,376,585,367,606,344,600,322,568,317,545,336,526,323,506,336,488,307,454,280,422,319,409,308,396,308,404,336,359,344" shape="poly">
    <area target="" alt="inje" title="inje" href="" coords="510,136,533,126,544,133,554,166,586,187,582,226,567,240,579,258,589,258,594,278,573,305,543,323,532,312,511,325,495,311,500,297,474,290,451,269,469,246,489,238,510,168" shape="poly">
    <area target="" alt="goseong" title="goseong" href="" coords="585,44,539,117,563,166,588,178,595,194,630,192" shape="poly">
    <area target="" alt="sokcho" title="sokcho" href="" coords="632,199,589,200,586,220,639,221" shape="poly">
    <area target="" alt="yangyang" title="yangyang" href="" coords="629,226,578,235,580,249,592,246,602,273,589,297,591,315,609,321,678,314" shape="poly">
    <area target="" alt="gangleung" title="gangleung" href="" coords="681,322,613,330,615,358,643,367,661,408,633,436,669,461,688,438,713,458,731,457,743,413" shape="poly">
    <area target="" alt="pyungchang" title="pyungchang" href="" coords="606,354,615,370,641,378,648,402,617,439,606,433,562,490,581,536,545,510,521,518,511,514,501,474,497,452,523,434,513,388,521,380,560,382,589,371" shape="poly">
    <area target="" alt="hoingseong" title="hoingseong" href="" coords="471,378,504,400,508,430,491,446,489,474,445,507,425,503,453,474,407,445,392,438,370,446,360,425,390,403" shape="poly">
    <area target="" alt="oneju" title="oneju" href="map" coords="363,452,330,539,347,554,458,543,473,529,416,504,445,476,395,444" shape="poly">
    <area target="" alt="youngwol" title="youngwol" href="" coords="478,487,450,510,478,530,503,576,631,634,657,625,663,600,629,576,597,578,566,542,542,520,503,520,497,485" shape="poly">
    <area target="" alt="jeongsun" title="jeongsun" href="map?dateinfo=1&location_id=223576" coords="607,439,572,489,588,536,580,549,597,568,671,590,687,497,704,493,705,466,689,450,669,466" shape="poly">
    <area target="" alt="taeback" title="taeback" href="" coords="702,539,669,599,664,619,715,632,726,612,701,588,713,553" shape="poly">
    <area target="" alt="samcheok" title="samcheok" href="" coords="693,500,681,562,702,534,718,540,720,551,717,589,755,646,813,622,768,498" shape="poly">
    <area target="" alt="donghae" title="donghae" href="" coords="749,441,764,490,713,494,713,466,739,466" shape="poly">
    <area target="" alt="jeongsun" title="jeongsun" href="map?dateinfo=1&location_id=223576" coords="712,152,962,255" shape="rect">
</map>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 2일차 -->
			<div class="hs-item set-bg" data-setbg="img/header-bg.jpg">
				<div class="container">
					<div class="row">
						<div class="hs-text">

							<h2 class="date2_value" ></h2>
				
						 <img src="img/map_grade2/kw1.png" usemap="#image-kw1" /> 
	<map name="image-kw1">
    <area target="" alt="cheolwon" title="cheolwon" href="" coords="285,198,217,178,191,106,302,102,438,134,419,146,349,134" shape="poly">
    <area target="" alt="hwacheon" title="hwacheon" href="map?dateinfo=2&location_id=223565" coords="349,145,385,147,414,151,424,224,408,236,388,234,357,222,333,204,318,227,253,237,246,328,5,327,5,223,244,220,294,215,297,194" shape="poly">
    <area target="" alt="yanggu" title="yanggu" href="" coords="435,141,508,143,482,236,452,244,434,235,425,181,424,152" shape="poly">
    <area target="" alt="chuncheon" title="chuncheon" href="map?dateinfo=2&location_id=223554" coords="334,210,319,235,339,258,311,290,297,330,301,344,241,385,7,389,6,485,249,486,254,398,318,346,339,348,354,336,396,332,385,304,410,298,419,306,439,277,450,250,429,237,405,242,363,232" shape="poly">
    <area target="" alt="hongcheon" title="hongcheon" href="map" coords="317,355,307,366,375,402,425,386,455,381,469,370,503,393,521,372,560,376,585,367,606,344,600,322,568,317,545,336,526,323,506,336,488,307,454,280,422,319,409,308,396,308,404,336,359,344" shape="poly">
    <area target="" alt="inje" title="inje" href="" coords="510,136,533,126,544,133,554,166,586,187,582,226,567,240,579,258,589,258,594,278,573,305,543,323,532,312,511,325,495,311,500,297,474,290,451,269,469,246,489,238,510,168" shape="poly">
    <area target="" alt="goseong" title="goseong" href="" coords="585,44,539,117,563,166,588,178,595,194,630,192" shape="poly">
    <area target="" alt="sokcho" title="sokcho" href="" coords="632,199,589,200,586,220,639,221" shape="poly">
    <area target="" alt="yangyang" title="yangyang" href="" coords="629,226,578,235,580,249,592,246,602,273,589,297,591,315,609,321,678,314" shape="poly">
    <area target="" alt="gangleung" title="gangleung" href="" coords="681,322,613,330,615,358,643,367,661,408,633,436,669,461,688,438,713,458,731,457,743,413" shape="poly">
    <area target="" alt="pyungchang" title="pyungchang" href="" coords="606,354,615,370,641,378,648,402,617,439,606,433,562,490,581,536,545,510,521,518,511,514,501,474,497,452,523,434,513,388,521,380,560,382,589,371" shape="poly">
    <area target="" alt="hoingseong" title="hoingseong" href="" coords="471,378,504,400,508,430,491,446,489,474,445,507,425,503,453,474,407,445,392,438,370,446,360,425,390,403" shape="poly">
    <area target="" alt="oneju" title="oneju" href="map" coords="363,452,330,539,347,554,458,543,473,529,416,504,445,476,395,444" shape="poly">
    <area target="" alt="youngwol" title="youngwol" href="" coords="478,487,450,510,478,530,503,576,631,634,657,625,663,600,629,576,597,578,566,542,542,520,503,520,497,485" shape="poly">
    <area target="" alt="jeongsun" title="jeongsun" href="map?dateinfo=2&location_id=223576" coords="607,439,572,489,588,536,580,549,597,568,671,590,687,497,704,493,705,466,689,450,669,466" shape="poly">
    <area target="" alt="taeback" title="taeback" href="" coords="702,539,669,599,664,619,715,632,726,612,701,588,713,553" shape="poly">
    <area target="" alt="samcheok" title="samcheok" href="" coords="693,500,681,562,702,534,718,540,720,551,717,589,755,646,813,622,768,498" shape="poly">
    <area target="" alt="donghae" title="donghae" href="" coords="749,441,764,490,713,494,713,466,739,466" shape="poly">
    <area target="" alt="jeongsun" title="jeongsun" href="map?dateinfo=2&location_id=223576" coords="712,152,962,255" shape="rect">
</map>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 3일차 -->
			<div class="hs-item set-bg" data-setbg="img/header-bg.jpg">
				<div class="container">
					<div class="row">
						<div class="hs-text">

							<h2 class="date3_value" ></h2>
				
						 <img src="img/map_grade2/kw1.png" usemap="#image-kw1" /> 
<map name="image-kw1">
    <area target="" alt="cheolwon" title="cheolwon" href="" coords="285,198,217,178,191,106,302,102,438,134,419,146,349,134" shape="poly">
    <area target="" alt="hwacheon" title="hwacheon" href="map?dateinfo=3&location_id=223565" coords="349,145,385,147,414,151,424,224,408,236,388,234,357,222,333,204,318,227,253,237,246,328,5,327,5,223,244,220,294,215,297,194" shape="poly">
    <area target="" alt="yanggu" title="yanggu" href="" coords="435,141,508,143,482,236,452,244,434,235,425,181,424,152" shape="poly">
    <area target="" alt="chuncheon" title="chuncheon" href="map?dateinfo=3&location_id=223554" coords="334,210,319,235,339,258,311,290,297,330,301,344,241,385,7,389,6,485,249,486,254,398,318,346,339,348,354,336,396,332,385,304,410,298,419,306,439,277,450,250,429,237,405,242,363,232" shape="poly">
    <area target="" alt="hongcheon" title="hongcheon" href="map" coords="317,355,307,366,375,402,425,386,455,381,469,370,503,393,521,372,560,376,585,367,606,344,600,322,568,317,545,336,526,323,506,336,488,307,454,280,422,319,409,308,396,308,404,336,359,344" shape="poly">
    <area target="" alt="inje" title="inje" href="" coords="510,136,533,126,544,133,554,166,586,187,582,226,567,240,579,258,589,258,594,278,573,305,543,323,532,312,511,325,495,311,500,297,474,290,451,269,469,246,489,238,510,168" shape="poly">
    <area target="" alt="goseong" title="goseong" href="" coords="585,44,539,117,563,166,588,178,595,194,630,192" shape="poly">
    <area target="" alt="sokcho" title="sokcho" href="" coords="632,199,589,200,586,220,639,221" shape="poly">
    <area target="" alt="yangyang" title="yangyang" href="" coords="629,226,578,235,580,249,592,246,602,273,589,297,591,315,609,321,678,314" shape="poly">
    <area target="" alt="gangleung" title="gangleung" href="" coords="681,322,613,330,615,358,643,367,661,408,633,436,669,461,688,438,713,458,731,457,743,413" shape="poly">
    <area target="" alt="pyungchang" title="pyungchang" href="" coords="606,354,615,370,641,378,648,402,617,439,606,433,562,490,581,536,545,510,521,518,511,514,501,474,497,452,523,434,513,388,521,380,560,382,589,371" shape="poly">
    <area target="" alt="hoingseong" title="hoingseong" href="" coords="471,378,504,400,508,430,491,446,489,474,445,507,425,503,453,474,407,445,392,438,370,446,360,425,390,403" shape="poly">
    <area target="" alt="oneju" title="oneju" href="map" coords="363,452,330,539,347,554,458,543,473,529,416,504,445,476,395,444" shape="poly">
    <area target="" alt="youngwol" title="youngwol" href="" coords="478,487,450,510,478,530,503,576,631,634,657,625,663,600,629,576,597,578,566,542,542,520,503,520,497,485" shape="poly">
    <area target="" alt="jeongsun" title="jeongsun" href="map?dateinfo=3&location_id=223576" coords="607,439,572,489,588,536,580,549,597,568,671,590,687,497,704,493,705,466,689,450,669,466" shape="poly">
    <area target="" alt="taeback" title="taeback" href="" coords="702,539,669,599,664,619,715,632,726,612,701,588,713,553" shape="poly">
    <area target="" alt="samcheok" title="samcheok" href="" coords="693,500,681,562,702,534,718,540,720,551,717,589,755,646,813,622,768,498" shape="poly">
    <area target="" alt="donghae" title="donghae" href="" coords="749,441,764,490,713,494,713,466,739,466" shape="poly">
    <area target="" alt="jeongsun" title="jeongsun" href="map?dateinfo=3&location_id=223576" coords="712,152,962,255" shape="rect">
</map>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 4일차 -->
			<div class="hs-item set-bg" data-setbg="img/header-bg.jpg">
				<div class="container">
					<div class="row">
						<div class="hs-text">

							<h2 class="date4_value" ></h2>
				
						 <img src="img/map_grade2/kw1.png" usemap="#image-kw1" /> 
<map name="image-kw1">
    <area target="" alt="cheolwon" title="cheolwon" href="" coords="285,198,217,178,191,106,302,102,438,134,419,146,349,134" shape="poly">
    <area target="" alt="hwacheon" title="hwacheon" href="map?dateinfo=4&location_id=223565" coords="349,145,385,147,414,151,424,224,408,236,388,234,357,222,333,204,318,227,253,237,246,328,5,327,5,223,244,220,294,215,297,194" shape="poly">
    <area target="" alt="yanggu" title="yanggu" href="" coords="435,141,508,143,482,236,452,244,434,235,425,181,424,152" shape="poly">
    <area target="" alt="chuncheon" title="chuncheon" href="map?dateinfo=4&location_id=223554" coords="334,210,319,235,339,258,311,290,297,330,301,344,241,385,7,389,6,485,249,486,254,398,318,346,339,348,354,336,396,332,385,304,410,298,419,306,439,277,450,250,429,237,405,242,363,232" shape="poly">
    <area target="" alt="hongcheon" title="hongcheon" href="map" coords="317,355,307,366,375,402,425,386,455,381,469,370,503,393,521,372,560,376,585,367,606,344,600,322,568,317,545,336,526,323,506,336,488,307,454,280,422,319,409,308,396,308,404,336,359,344" shape="poly">
    <area target="" alt="inje" title="inje" href="" coords="510,136,533,126,544,133,554,166,586,187,582,226,567,240,579,258,589,258,594,278,573,305,543,323,532,312,511,325,495,311,500,297,474,290,451,269,469,246,489,238,510,168" shape="poly">
    <area target="" alt="goseong" title="goseong" href="" coords="585,44,539,117,563,166,588,178,595,194,630,192" shape="poly">
    <area target="" alt="sokcho" title="sokcho" href="" coords="632,199,589,200,586,220,639,221" shape="poly">
    <area target="" alt="yangyang" title="yangyang" href="" coords="629,226,578,235,580,249,592,246,602,273,589,297,591,315,609,321,678,314" shape="poly">
    <area target="" alt="gangleung" title="gangleung" href="" coords="681,322,613,330,615,358,643,367,661,408,633,436,669,461,688,438,713,458,731,457,743,413" shape="poly">
    <area target="" alt="pyungchang" title="pyungchang" href="" coords="606,354,615,370,641,378,648,402,617,439,606,433,562,490,581,536,545,510,521,518,511,514,501,474,497,452,523,434,513,388,521,380,560,382,589,371" shape="poly">
    <area target="" alt="hoingseong" title="hoingseong" href="" coords="471,378,504,400,508,430,491,446,489,474,445,507,425,503,453,474,407,445,392,438,370,446,360,425,390,403" shape="poly">
    <area target="" alt="oneju" title="oneju" href="map" coords="363,452,330,539,347,554,458,543,473,529,416,504,445,476,395,444" shape="poly">
    <area target="" alt="youngwol" title="youngwol" href="" coords="478,487,450,510,478,530,503,576,631,634,657,625,663,600,629,576,597,578,566,542,542,520,503,520,497,485" shape="poly">
    <area target="" alt="jeongsun" title="jeongsun" href="map?dateinfo=4&location_id=223576" coords="607,439,572,489,588,536,580,549,597,568,671,590,687,497,704,493,705,466,689,450,669,466" shape="poly">
    <area target="" alt="taeback" title="taeback" href="" coords="702,539,669,599,664,619,715,632,726,612,701,588,713,553" shape="poly">
    <area target="" alt="samcheok" title="samcheok" href="" coords="693,500,681,562,702,534,718,540,720,551,717,589,755,646,813,622,768,498" shape="poly">
    <area target="" alt="donghae" title="donghae" href="" coords="749,441,764,490,713,494,713,466,739,466" shape="poly">
    <area target="" alt="jeongsun" title="jeongsun" href="map?dateinfo=4&location_id=223576" coords="712,152,962,255" shape="rect">
</map>
						</div>
					</div>
				</div>
			</div>
			
			
			<!-- 5일차 -->
			<div class="hs-item set-bg" data-setbg="img/header-bg.jpg">
				<div class="container">
					<div class="row">
						<div class="hs-text">

							<h2 class="date5_value" ></h2>
				
						 <img src="img/map_grade2/kw1.png" usemap="#image-kw1" /> 
<map name="image-kw1">
    <area target="" alt="cheolwon" title="cheolwon" href="" coords="285,198,217,178,191,106,302,102,438,134,419,146,349,134" shape="poly">
    <area target="" alt="hwacheon" title="hwacheon" href="map?dateinfo=5&location_id=223565" coords="349,145,385,147,414,151,424,224,408,236,388,234,357,222,333,204,318,227,253,237,246,328,5,327,5,223,244,220,294,215,297,194" shape="poly">
    <area target="" alt="yanggu" title="yanggu" href="" coords="435,141,508,143,482,236,452,244,434,235,425,181,424,152" shape="poly">
    <area target="" alt="chuncheon" title="chuncheon" href="map?dateinfo=5&location_id=223554" coords="334,210,319,235,339,258,311,290,297,330,301,344,241,385,7,389,6,485,249,486,254,398,318,346,339,348,354,336,396,332,385,304,410,298,419,306,439,277,450,250,429,237,405,242,363,232" shape="poly">
    <area target="" alt="hongcheon" title="hongcheon" href="map" coords="317,355,307,366,375,402,425,386,455,381,469,370,503,393,521,372,560,376,585,367,606,344,600,322,568,317,545,336,526,323,506,336,488,307,454,280,422,319,409,308,396,308,404,336,359,344" shape="poly">
    <area target="" alt="inje" title="inje" href="" coords="510,136,533,126,544,133,554,166,586,187,582,226,567,240,579,258,589,258,594,278,573,305,543,323,532,312,511,325,495,311,500,297,474,290,451,269,469,246,489,238,510,168" shape="poly">
    <area target="" alt="goseong" title="goseong" href="" coords="585,44,539,117,563,166,588,178,595,194,630,192" shape="poly">
    <area target="" alt="sokcho" title="sokcho" href="" coords="632,199,589,200,586,220,639,221" shape="poly">
    <area target="" alt="yangyang" title="yangyang" href="" coords="629,226,578,235,580,249,592,246,602,273,589,297,591,315,609,321,678,314" shape="poly">
    <area target="" alt="gangleung" title="gangleung" href="" coords="681,322,613,330,615,358,643,367,661,408,633,436,669,461,688,438,713,458,731,457,743,413" shape="poly">
    <area target="" alt="pyungchang" title="pyungchang" href="" coords="606,354,615,370,641,378,648,402,617,439,606,433,562,490,581,536,545,510,521,518,511,514,501,474,497,452,523,434,513,388,521,380,560,382,589,371" shape="poly">
    <area target="" alt="hoingseong" title="hoingseong" href="" coords="471,378,504,400,508,430,491,446,489,474,445,507,425,503,453,474,407,445,392,438,370,446,360,425,390,403" shape="poly">
    <area target="" alt="oneju" title="oneju" href="map" coords="363,452,330,539,347,554,458,543,473,529,416,504,445,476,395,444" shape="poly">
    <area target="" alt="youngwol" title="youngwol" href="" coords="478,487,450,510,478,530,503,576,631,634,657,625,663,600,629,576,597,578,566,542,542,520,503,520,497,485" shape="poly">
    <area target="" alt="jeongsun" title="jeongsun" href="map?dateinfo=5&location_id=223576" coords="607,439,572,489,588,536,580,549,597,568,671,590,687,497,704,493,705,466,689,450,669,466" shape="poly">
    <area target="" alt="taeback" title="taeback" href="" coords="702,539,669,599,664,619,715,632,726,612,701,588,713,553" shape="poly">
    <area target="" alt="samcheok" title="samcheok" href="" coords="693,500,681,562,702,534,718,540,720,551,717,589,755,646,813,622,768,498" shape="poly">
    <area target="" alt="donghae" title="donghae" href="" coords="749,441,764,490,713,494,713,466,739,466" shape="poly">
    <area target="" alt="jeongsun" title="jeongsun" href="map?dateinfo=5&location_id=223576" coords="712,152,962,255" shape="rect">
</map>
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