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
		/* $(".map-day1-all").bind("click",function(){
			$(".map-day1").hide();
		}); */
		 
		/* $(".map-day1-img").bind("click",function(){
			$(".map-day1").hide();
		}); */
		
		
	/* 	$(".map-day1").bind("click",function(){
			$(".map-day1").hide();
		}); */
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
 <!-- <header class="header-section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="logo">
                        <a href="#">
                            <img src="img/logo.png" alt="">
                        </a>
                    </div>
                    <nav class="nav-menu mobile-menu">
                        <ul>
                        <li><a href="shop/index.html">STARRY SHOP</a>
                        <li><a href="#">MY PAGE</a>
                                <ul class="dropdown">
                                    <li><a href="">내 게시물 조회</a></li> 
                                    <li><a href="">결제 내역</a></li>
                                    <li><a href="">내 정보</a></li>
                                    <li><a href="logOut">로그아웃</a></li>
                                </ul>
                            </li>
                            <li><a href="#">MY STAR</a><ul class="dropdown">
                                    <li><a href="./gallery.html">선호지역</a></li>
									유저 DB의 선호지역을 반복문으로 삽입
                                    <li><a href="./portfolio-details.html">좋아한 게시물</a></li>
                                  
                                </ul></li>
                   
                    </div></ul>
                    </nav>
                    
                    <div id="mobile-menu-wrap"><div class="slicknav_menu"><a href="#" aria-haspopup="true" role="button" tabindex="0" class="slicknav_btn slicknav_collapsed" style="outline: none;"><span class="slicknav_menutxt">MENU</span><span class="slicknav_icon"><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span></span></a><nav class="slicknav_nav slicknav_hidden" aria-hidden="true" role="menu" style="display: none;">
                        <ul>
                            <li class="active"><a href="./index.html" role="menuitem">Home</a></li>
                            <li><a href="./about.html" role="menuitem">About</a></li>
                            <li><a href="./services.html" role="menuitem">Services</a></li>
                            <li><a href="./pricing.html" role="menuitem">Pricing</a></li>
                            <li><a href="./portfolio.html" role="menuitem">Portfolio</a></li>
                            <li><a href="./blog.html" role="menuitem">Blog</a></li>
                            <li class="slicknav_collapsed slicknav_parent"><a href="#" role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row" style="outline: none;"><a href="#">Pages</a>
                                <span class="slicknav_arrow">►</span></a><ul class="dropdown slicknav_hidden" role="menu" aria-hidden="true" style="display: none;">
                                    <li><a href="./gallery.html" role="menuitem" tabindex="-1">Gallery</a></li>
                                    <li><a href="./portfolio-details.html" role="menuitem" tabindex="-1">Portfolio Details</a></li>
                                    <li><a href="./blog-details.html" role="menuitem" tabindex="-1">Blog Details</a></li>
                                </ul>
                            </li>
                            <li><a href="./contact.html" role="menuitem">Contact</a></li>
                        </ul>
                    </nav></div></div>
                </div>
            </div>
        </div>
    </header> -->
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
						<div class="hs-text">

							<h2 class="date1_value" ></h2>
				
							<img src="img/map_grade2/kr1.png" usemap="#image-kr">
							<map name="image-kr">
							
								<area target="" alt="seoul" title="seoul" href=""
									coords="109,117,185,75,249,113,232,145,261,160,229,221,205,236,174,232,126,184"
									shape="poly">
								<area target="" alt="kangwon" title="kangwon"
									href="grade2/day1_kw"
									coords="188,72,326,33,413,227,409,290,380,234,339,229,245,205,268,162,241,145,253,113"
									shape="poly">
								<area target="" alt="chungbuk" title="chungbuk" href=""
									coords="207,239,210,254,199,271,231,334,255,344,277,324,257,313,260,288,255,275,301,247,312,256,330,230,245,208,229,227"
									shape="poly">
								<area target="" alt="chungnam" title="chungnam" href=""
									coords="84,212,89,244,135,336,182,326,187,332,199,329,213,345,228,338,194,269,203,241,174,237,132,207"
									shape="poly">
								<area target="" alt="gyungbuk" title="gyungbuk" href=""
									coords="257,345,260,361,287,383,286,393,393,423,424,349,408,294,379,238,336,232,315,259,302,253,260,275,263,312,282,323"
									shape="poly">
								<area target="" alt="gyungnam" title="gyungnam" href=""
									coords="256,362,230,387,234,414,225,432,240,469,253,505,323,501,399,427,284,395,279,379"
									shape="poly">
								<area target="" alt="jeonnam" title="jeonnam" href=""
									coords="105,412,45,489,70,545,156,575,251,510,219,426,176,427,174,413,153,404,129,423,120,412"
									shape="poly">
								<area target="" alt="jeonbuk" title="jeonbuk" href=""
									coords="121,340,100,406,123,409,130,417,152,400,176,411,180,421,222,423,232,413,226,388,252,361,255,347,234,338,212,351,199,333,186,335,178,330"
									shape="poly">
								<area target="" alt="jeju" title="jeju" href=""
									coords="65,624,84,606,139,603,152,624,138,648,82,648"
									shape="poly">
							</map>
							
						</div>
					</div>
				</div>
			</div>

				<div class="hs-item set-bg" data-setbg="img/header-bg.jpg">
				<div class="container">
					<div class="row">
						<div class="hs-text">							
							
							<h2 class="date2_value" ></h2>
						
							<img src="img/map_grade2/kr1.png" usemap="#image-kr">						
						</div>
					</div>
				</div>
			</div>
    
       	<div class="hs-item set-bg" data-setbg="img/header-bg.jpg">
				<div class="container">
					<div class="row">
						<div class="hs-text">
							
							<h2 class="date3_value" ></h2>
							
							<img src="img/map_grade2/kr1.png" usemap="#image-kr">						
						</div>
					</div>
				</div>
			</div>
       
          	<div class="hs-item set-bg" data-setbg="img/header-bg.jpg">
				<div class="container">
					<div class="row">
						<div class="hs-text">
							<!-- style="display : block ; text-align : center ;" -->
							<h2 class="date4_value" ></h2>
							<img src="img/map_grade2/kr1.png" usemap="#image-kr">						
						</div>
					</div>
				</div>
			</div>  
                
                	<div class="hs-item set-bg" data-setbg="img/header-bg.jpg">
				<div class="container">
					<div class="row">
						<div class="hs-text">
							<!-- style="display : block ; text-align : center ;" -->
							<h2 class="date5_value" ></h2>
							<img src="img/map_grade2/kr1.png" usemap="#image-kr">						
						</div>
					</div>
				</div>
			</div>
                
                
                	<div class="hs-item set-bg" data-setbg="img/header-bg.jpg">
				<div class="container">
				
							
					<div class="row">
					
					
					
						<div class="hs-text">
							<h2 class="date5_value" ></h2>
						
							<img src="img/krb3.png" usemap="#image-kr"/>

						</div>
					</div>
				</div>
			</div>
                
                
            </div>  
    </section>
    <!-- Hero Section End -->

    <!-- Services Section Begin -->
    <section class="services-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="services-item">
                        <img src="img/services/service-1.jpg" alt="">
                        <h3>Shooting</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                            magna aliqua. Quis ipsum suspendisse ultrices gravida.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="services-item">
                        <img src="img/services/service-2.jpg" alt="">
                        <h3>Videos</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                            magna aliqua. Quis ipsum suspendisse ultrices gravida.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="services-item">
                        <img src="img/services/service-3.jpg" alt="">
                        <h3>Editing</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                            magna aliqua. Quis ipsum suspendisse ultrices gravida.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Services Section End -->

    <!-- Categories Section Begin -->
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
                    <div class="right-btn"><a href="#" class="primary-btn">VIew all</a></div>
                </div>
            </div>
            <div class="categories-slider owl-carousel">
                <div class="cs-item">
                    <div class="cs-pic set-bg" data-setbg="img/categories/cat-1.jpg"></div>
                    <div class="cs-text">
                        <h4>Animal</h4>
                        <span>120 pictures</span>
                    </div>
                </div>
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
                    
                </div>
            </div>
        </div>
    </section>
    <!-- Categories Section End -->

       <!-- Footer Section Begin -->
 
    <jsp:include page="/WEB-INF/views/include/starry_footer.jsp"></jsp:include>   
 
    <!-- Footer Section End -->

    <!-- Search model Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch">+</div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- Search model end -->

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