<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>GatherStudy - notice</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- Web Fonts -->
    <link rel='stylesheet' type='text/csss' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/shop.style.css">
    
    <!-- CSS Header and Footer -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/headers/header-default.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footers/footer-v2.css">

    
    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/animate.css">    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/scrollbar/css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/revolution-slider/rs-plugin/css/settings.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/custom.css">
</head>	

<body class="header-fixed">
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
                <ul class="nav navbar-nav">
                    <li>
                        <a href="${pageContext.request.contextPath}/main.do">Home</a>
                   </li>
                  
                    <li>
                        <a href="${pageContext.request.contextPath}/notice/list.do">공지사항</a>
                    </li>
                    
                    <li>
                        <a href="${pageContext.request.contextPath}/cafe/list.do">카페 구경하기</a>
                    </li>
                    
                    <li>
                        <a href="${pageContext.request.contextPath}/findMember/list.do">멤버 구하기</a>
                    </li>
                    
                     <li>
                        <a href="${pageContext.request.contextPath}/help/list.do">도움말</a>
                    </li>                   

                    <li>
                   	  	<c:choose>
							<c:when test="${!empty sessionScope.loginCafe}">
								<a href="${pageContext.request.contextPath}/cafe/reservationList.do?cafe_id=${sessionScope.loginCafe.cafe_id}">호스트 센터</a>
							</c:when>
							
							<c:when test="${!empty sessionScope.loginUser}"></c:when>
							<c:when test="${!empty sessionScope.loginAdmin}"></c:when>
																			
							<c:otherwise>
								<a href="${pageContext.request.contextPath}/cafe/login.do">호스트 센터</a>
							</c:otherwise>
						</c:choose>   
                    </li>             
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
                        <a href="${pageContext.request.contextPath}/notice/list.do">공지사항</a>
                    </li>
                    
                    <li>
                        <a href="${pageContext.request.contextPath}/cafe/list.do">카페 구경하기</a>
                    </li>
                    
                    <li>
                        <a href="${pageContext.request.contextPath}/findMember/list.do">멤버 구하기</a>
                    </li>
                    
                     <li>
                        <a href="${pageContext.request.contextPath}/help/list.do">도움말</a>
                    </li>                   

                    <li>
                   	  <c:choose>
						<c:when test="${empty sessionScope.loginCafe}">
							<a href="${pageContext.request.contextPath}/cafe/login.do">호스트 센터</a>
						</c:when>
						
						<c:otherwise>
							<a href="${pageContext.request.contextPath}/cafe/reservationList.do?cafe_id=${sessionScope.loginCafe.cafe_id}">호스트 센터</a>
						</c:otherwise>
						</c:choose>   
                    </li>             
                </ul>
            </div><!--/end container-->
        </div><!--/navbar-collapse-->
    </div>
    <!--=============================================
    
    								End Header 상단 끝입니다.!!!
    
    ================================================-->
    
	<!--=== Content Part ===-->
    <div class="container content-sm">
    <div class="col-md-10 col-md-offset-1">
	    <div class="headline">
	    	<h2>공지사항</h2>
	    </div>
    </div>
    <form method="post" action="notice/update.do" id="updateform" >
	    <div class="row">
	    	<div class="col-md-10 col-md-offset-1">
				<table class="table" style="text-align: center;">
					<thead > 
						<tr class="active">
								<th colspan="3"	style="background-color: #eeeeee; text-align: center;"><font color="black" size="5pt">공지사항 수정하기</font></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="width: 20%;"><font color="black" size="3pt">글제목</font></td>
							<td><input type="text" id="notice_title" name="notice_title" value="${notice.notice_title}" class="form-control"></td>
						</tr>
						<tr>
							 <td><font color="black" size="3pt">내용</font></td>	
							 <td><textarea id="notice_content" name="notice_content" class="form-control" rows="50" cols="50">${notice.notice_content}</textarea></td>
						</tr>
					</tbody>
					<input type="hidden" name="notice_number" value="${notice.notice_number}">
				</table>
				
	            <div class="col-md-2 col-md-offset-8">
	                <input type="button" onclick="noticeUpdateValidation()" class="btn-u btn-block btn-u-green" value="수정하기 ">           
	            </div>
	            <div class="col-md-2">
	                <input type="button" class="btn-u btn-block btn-u-green" value="목록" onclick="location.href='${pageContext.request.contextPath}/notice/list.do' ">   	
			 	</div>
            </div>
		</div>
	</form>
    </div><!--/container content-sm-->
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
                        <p class="margin-bottom-20"><p>Study from Anywhere!<br> 원하는 곳에서 스터디 하세요.<br>
                        	GatherStudy는 통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서 GatherStudy는 공간 거래정보 및 거래에 대해 책임지지 않습니다.</p>                
                    </div>
                    <!-- End About -->
                    
                    <!-- Link List -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <div class="headline"><h2 class="heading-sm">Useful Links</h2></div>
                        <ul class="list-unstyled link-list">
                            <li><a href="${pageContext.request.contextPath}/main.do">HOME</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="${pageContext.request.contextPath}/notice/list.do">공지 사항</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="${pageContext.request.contextPath}/cafe/list.do">카페 구경하기</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="${pageContext.request.contextPath}/findMember/list.do">멤버 구하기</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="${pageContext.request.contextPath}/help/list.do">도움말</a><i class="fa fa-angle-right"></i></li>
                        </ul>
                    </div>
                    <!-- End Link List -->                   

                    <!-- Blog Tweets -->
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
                            <i class="fa fa-phone"></i>Phone: 010 1234 5678 <br />
                            <i class="fa fa-globe"></i>Website: <a href="#">www.GatherStudy.com</a> <br />
                            <i class="fa fa-envelope"></i>Email: <a href="GatherStudy@naver.com">GatherStudy@naver.com</a> 
                        </address>
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
</div><!--/wrapper-->

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


<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="${pageContext.request.contextPath}/Js_Set/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/Js_Set/bootstrap.js"></script>

<script type="text/javascript">
    jQuery(document).ready(function() {
      	App.init();
    });
    
    function noticeUpdateValidation(){
    	var title = $("#notice_title").val();
    	var content = $("#notice_content").val();
    	
    	if(!title){
    		alert("글 제목은 필수로 입력하셔야 입니다.");
    		$("#notice_title").focus();
    	}else if(!content){
    		alert("글 내용은 필수로 입력하셔야 합니다.");
    		$("#notice_content").focus();
    	}else {
    		noticeUpdate();
    	}
    }
    
    function noticeUpdate(){
    	$.ajax({		
    		url : "${pageContext.request.contextPath}/notice/update.do",
    		type:'POST',
    		data :  $("#updateform").serialize(),
    		success:function(data){
    			if(data == "success"){
    				alert("공지사항이 수정되었습니다.^^");
    				location.href = "${pageContext.request.contextPath}/notice/list.do"
    			}
    			return false;
    		}
    	})
    }  
</script>

<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
    <script src="assets/plugins/html5shiv.js"></script>
    <script src="assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</html>