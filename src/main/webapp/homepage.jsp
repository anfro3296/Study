<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>Unify - Responsive Website Template</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- Web Fonts -->
    <link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">

    <!-- CSS Header and Footer -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/headers/header-default.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footers/footer-v2.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/animate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/parallax-slider/css/parallax-slider.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/custom.css">
    <!-- 스타일존 -->
    <style>
    
    
    </style>
</head>	

<body>
<div class="wrapper">
    <!--==========================================
    
    					Header 상단 시작합니다~!!!!!
    
    =================================================-->    
    <div class="header">
        <div class="container">
            <!-- Logo -->
            <a class="logo" href="${pageContext.request.contextPath}/main.do">
                <img src="${pageContext.request.contextPath}/assets/logoimg/MainLogo.png" alt="Logo" width="180">
            </a>
            <!-- End Logo -->
            
            <!-- Topbar -->
            <div class="topbar">
                <ul class="loginbar pull-right">  
                	<c:if test="${empty sessionScope.loginUser}">
                    	<li><a href="${pageContext.request.contextPath}/login.do">로그인</a></li>
                    	<li class="topbar-devider"></li>   
                    	<li><a href="${pageContext.request.contextPath}/register.do">회원가입</a></li>   
                    </c:if>
                    
                    <c:if test="${!empty sessionScope.loginUser}">
                    	<li><a href="${pageContext.request.contextPath}/login.do">마이페이지</a></li>  
                    	<li class="topbar-devider"></li>   
                    	<li><a href="${pageContext.request.contextPath}/logout.do">로그아웃</a></li>   
                    </c:if>
                    
                </ul>
            </div>
            <!-- End Topbar -->

            <!-- Toggle get grouped for better mobile display -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="fa fa-bars"></span>
            </button>
            <!-- End Toggle -->
        </div>
        <!--/end container-->

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
            <div class="container">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="${pageContext.request.contextPath}/main.do">Home</a>
                   </li>
                  
                    <li>
                        <a href="${pageContext.request.contextPath}/notice.do">공지사항</a>
                    </li>
                    
                    <li>
                        <a href="${pageContext.request.contextPath}/lookcafe.do">카페 구경하기</a>
                    </li>
                    
                    <li>
                        <a href="">멤버 구하기</a>
                    </li>
                    
                     <li>
                        <a href="#">문의 사항</a>
                    </li>                   

                   <li>
                        <a href="#">예약 후기</a>
                    </li>             
                </ul>
            </div><!--/end container-->
        </div><!--/navbar-collapse-->
    </div>
    <!--=============================================
    
    								End Header 상단 끝입니다.!!!
    
    ================================================-->

    <!--=== Slider ===-->
    <div class="slider-inner">
        <div id="da-slider" class="da-slider">
            <div class="da-slide">
                <h2><i>Study from Anywhere</i> <br /> <i>원하는 곳에서 스터디하세요!</i> <br /></h2>
                <div class="da-img"><!-- <img class="img-responsive" src="assets/img/bg/19.jpg" alt=""> --></div>
            </div>
            <div class="da-slide">
                <h2><i>Study with the person you want</i> <br/> <i>원하는 사람과 스터디하세요!</i><br/></h2>
                <div class="da-img"><!-- <img class="img-responsive" src="assets/img/bg/18.jpg" alt=""> --></div>
            </div>
            <div class="da-arrows">
                <span class="da-arrows-prev"></span>
                <span class="da-arrows-next"></span>        
            </div>
        </div>
    </div><!--/slider-->
    <!--=== End Slider ===-->

    <!--=== Content Part ===-->
    <div class="container content-sm">
    	<!-- Service Blocks -->
    	<div class="row margin-bottom-30">
        	<div class="col-md-4">
        		<div class="service">
                    <i class="fa fa-compress service-icon"></i>
        			<div class="desc">
        				<h4>스터디 카페 예약 플랫폼</h4>
                        <p>예약이 편한 플랫폼으로,<br>
                        특화된 서비스를 만나보세요</p>
        			</div>
        		</div>	
        	</div>
        	<div class="col-md-4">
        		<div class="service">
                    <i class="fa fa-cogs service-icon"></i>
        			<div class="desc">
        				<h4>안전거래 보장</h4>
                        <p>에약 피해 시,<br>
                        예약비 전액을 환불해드립니다.</p>
        			</div>
        		</div>	
        	</div>
        	<div class="col-md-4">
        		<div class="service">
                    <i class="fa fa-rocket service-icon"></i>
        			<div class="desc">
        				<h4>스터디 커뮤니티 형성</h4>
                        <p>불편하게 여러 커뮤니티가 아닌,<br>
                        GatherStudy에서 편안하게</p>
        			</div>
        		</div>	
        	</div>			    
    	</div>
    	<!-- End Service Blokcs -->

    	 <!-- Recent Works -->
        <div class="headline"><h2>오늘의 추천 공간</h2></div>
        <div class="row margin-bottom-20">
        <c:forEach var="recommendCafe" items="${recommendCafe}">
        <a href="${pageContext.request.contextPath}/list.do?cafe_id=${recommendCafe.cafe_id}">
            <div class="col-md-3 col-sm-6">
                <div class="thumbnails thumbnail-style thumbnail-kenburn">
	                	<div class="thumbnail-img">
	                        <div class="overflow-hidden">
	                            <img class="img-responsive" src="${pageContext.request.contextPath}/${recommendCafe.cafe_image1}" style="width:300px; height:220px;">
	                        </div>                        					
	                    </div>
	                    <div class="caption">
	                        <h4 class="title-price">${recommendCafe.cafe_name}</h4>
	                        <span class="gender text-uppercase"></span>   
	                       	<h6>${recommendCafe.cafe_hashtag1}  ${recommendCafe.cafe_hashtag2}</h6>
	                       	<h6>${recommendCafe.cafe_category1} - ${recommendCafe.cafe_category1Price}/시간(인)</h6>
	                   </div>
                </div>
            </div>
        </a>
        </c:forEach>
        </div>
    	<!-- End Recent Works -->
    	
    
        <!--=== Team v4 ===-->
        <div class="headline"><h2>이용자 리뷰</h2></div>
        <div class="row team-v4">
            <div class="col-md-3 col-sm-6 md-margin-bottom-50">
                <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/main/img1.jpg" style="width:280px; height:220px;">
                <span>24시 공존스터디룸</span>
                <small>주여나</small>
               	<ul class="list-inline star-vote">
                      <li><i class="color-green fa fa-star"></i></li>
                      <li><i class="color-green fa fa-star"></i></li>
                      <li><i class="color-green fa fa-star"></i></li>
                      <li><i class="color-green fa fa-star"></i></li>
                      <li><i class="color-green fa fa-star"></i></li>
                 </ul>
                <p>쾌적한 환경을 제공해주셔서 감사해요.<br> 만족스럽게 공부하고 있습니다.</p>
            </div>
            <div class="col-md-3 col-sm-6 md-margin-bottom-50">
                <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/main/img2.jpg" style="width:280px; height:220px;">
                <span>[강남클래스 302] 신논현</span>
                <small>- 루비 -</small>
                <ul class="list-inline star-vote">
                      <li><i class="color-green fa fa-star"></i></li>
                      <li><i class="color-green fa fa-star"></i></li>
                      <li><i class="color-green fa fa-star"></i></li>
                      <li><i class="color-green fa fa-star"></i></li>
                      <li><i class="color-green fa fa-star-o"></i></li>
                 </ul>
                <p>예약하고 갔는데 계단올라가는거 빼고 좋습니다.<br> 조명이 환해서 좋아요</p>
            </div>
            <div class="col-md-3 col-sm-6 sm-margin-bottom-50">
                <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/main/img3.jpg" style="width:280px; height:220px;">
                <span>B101(비일공일)</span>
                <small>- 청루 -</small>
                <ul class="list-inline star-vote">
                      <li><i class="color-green fa fa-star"></i></li>
                      <li><i class="color-green fa fa-star"></i></li>
                      <li><i class="color-green fa fa-star"></i></li>
                      <li><i class="color-green fa fa-star"></i></li>
                      <li><i class="color-green fa fa-star"></i></li>
                 </ul>
                <p>깨끗해서 좋았습니다.<br> 미러링 연결도 잘되고 편하게 회의했습니다</p>
            </div>
            <div class="col-md-3 col-sm-6">
                <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/main/img4.jpg" style="width:280px; height:220px;">
                <span>슈퍼스타 홍대점</span>
                <small>- 볶음면 -</small>
                <ul class="list-inline star-vote">
                      <li><i class="color-green fa fa-star"></i></li>
                      <li><i class="color-green fa fa-star"></i></li>
                      <li><i class="color-green fa fa-star"></i></li>
                      <li><i class="color-green fa fa-star"></i></li>
                      <li><i class="color-green fa fa-star"></i></li>
                 </ul>
                <p>자주 이용 중입니다!<br> 깔끔하고 조용해서 집중하기 좋은 환경이에요!</p>
             </div>
             <p>
             <p>
        </div><!--/end row-->
    <!--=== End Team v4 ===-->
    </div><!--/container-->
    <!-- End Content Part -->

    <!--===========================
    
  	   Footer 하단시작이요오
  
    =============================-->
    <div id="footer-v2" class="footer-v2">
        <div class="footer">
            <div class="container">
                <div class="row">
                    <!-- About -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <a class="logo" href="${pageContext.request.contextPath}/main.do">
                		<img src="${pageContext.request.contextPath}/assets/logoimg/MainLogo.png" alt="Logo" width="180">
            			</a>
                        <p class="margin-bottom-20"><p>Study from Anywhere! 원하는 곳에서 스터디 하세요. 홈페이지 설명 구구절절</p>
                        <p>공간에 대한 문의사항은 해당 공간 호스트에게 직접 문의해주세요. ㅇㅇ는 통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서 ㅇㅇ는 공간 거래정보 및 거래에 대해 책임지지 않습니다.</p>
                        <form class="footer-subsribe">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Email Address">                            
                                <span class="input-group-btn">
                                    <button class="btn-u" type="button">Go</button>
                                </span>
                            </div>                  
                        </form>                         
                    </div>
                    <!-- End About -->
                    
                    <!-- Link List -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <div class="headline"><h2 class="heading-sm">Useful Links</h2></div>
                        <ul class="list-unstyled link-list">
                            <li><a href="#">HOME</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">공지 사항</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">카페 구경하기</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">멤버 구하기</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">문의 사항</a><i class="fa fa-angle-right"></i></li>
                        </ul>
                    </div>
                    <!-- End Link List -->                   

                    <!-- Latest Tweets -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <div class="latest-tweets">
                            <div class="headline"><h2 class="heading-sm">Latest Tweets</h2></div>
                            <div class="latest-tweets-inner">
                                <i class="fa fa-twitter"></i>
                                <p>
                                    <a href="#">@htmlstream</a> 
                                    예약이 간편해서 좋았습니다.
                                    <a href="#">http://t.co/sBav7dm</a> 
                                    <small class="twitter-time">2 hours ago</small>
                                </p>    
                            </div>
                            <div class="latest-tweets-inner">
                                <i class="fa fa-twitter"></i>
                                <p>
                                    <a href="#">@user</a> 
                                    후기가 좋았고 스터디원을 구하기 편했습니다.
                                    <a href="#">http://t.co/sBav7dm</a> 
                                    <small class="twitter-time">4 hours ago</small>
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- End Latest Tweets -->    

                    <!-- Address -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <div class="headline"><h2 class="heading-sm">Contact Us</h2></div>                         
                        <address class="md-margin-bottom-40">
                            <i class="fa fa-home"></i>서울특별시 강남구 테헤란로11 세경빌딩 3층 <br />
                            <i class="fa fa-phone"></i>Phone: 010 123 3456 <br />
                            <i class="fa fa-globe"></i>Website: <a href="#">www.studycafe.com</a> <br />
                            <i class="fa fa-envelope"></i>Email: <a href="mailto:info@anybiz.com">studycafe@xxx.com</a> 
                        </address>

                        <!-- Social Links -->
                        <ul class="social-icons">
                            <li><a href="#" data-original-title="Facebook" class="rounded-x social_facebook"></a></li>
                            <li><a href="#" data-original-title="Twitter" class="rounded-x social_twitter"></a></li>
                            <li><a href="#" data-original-title="Goole Plus" class="rounded-x social_googleplus"></a></li>
                            <li><a href="#" data-original-title="Linkedin" class="rounded-x social_linkedin"></a></li>
                        </ul>
                        <!-- End Social Links -->
                    </div>
                    <!-- End Address -->
                </div>
            </div> 
        </div><!--/footer-->

        <div class="copyright">
            <div class="container">
                <p class="text-center">2015 &copy; All Rights Reserved. Unify Theme by <a target="_blank" href="https://twitter.com/htmlstream">Htmlstream</a></p>
            </div> 
        </div><!--/copyright--> 
    </div>
    <!--=======================
    
     				Footer 하단끝끝

	========================--> 
    </div>

<!-- JS Global Compulsory -->			
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/smoothScroll.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/parallax-slider/js/modernizr.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/parallax-slider/js/jquery.cslider.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/custom.js"></script>
<!-- JS Page Level -->           
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/app.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/plugins/owl-carousel.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/plugins/parallax-slider.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
      	App.init();
        OwlCarousel.initOwlCarousel();        
        ParallaxSlider.initParallaxSlider();
    });
</script>
<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
    <script src="assets/plugins/html5shiv.js"></script>
    <script src="assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</html>