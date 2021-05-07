<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>GatherStudy - user</title>

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

    <!-- CSS Page Style -->    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/pages/page_log_reg_v1.css">    

    <!-- CSS Customization -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/custom.css">
    
    
    
    <!-- 
================스타일 추가 하기=====================
    -->
    <style type="text/css">
    .reg-page {
    	padding:20px;
    }
   </style>  
    <!-- 
================스타일 추가 끝========================= 
    -->
<title>Insert title here</title>
</head>
<body>
<div class="wrapper">
    <!--=== Header ===-->    
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
	                <c:choose>
						<c:when test="${!empty sessionScope.loginAdmin}">
	                    	<li><a href="${pageContext.request.contextPath}/login.do">관리자 페이지</a></li>  
	                    	<li class="topbar-devider"></li>   
	                    	<li><a href="${pageContext.request.contextPath}/user/logout.do">로그아웃</a></li>
						</c:when>
						
						<c:when test="${!empty sessionScope.loginCafe}">
	                    	<li><a href="${pageContext.request.contextPath}/cafe/reservationList.do?cafe_id=${sessionScope.loginCafe.cafe_id}">호스트 센터</a></li>
	                    	<li class="topbar-devider"></li>   
	                    	<li><a href="${pageContext.request.contextPath}/user/logout.do">로그아웃</a></li>   
						</c:when>
									
						<c:when test="${!empty sessionScope.loginUser}">
	                    	<li><a href="${pageContext.request.contextPath}/user/mypage_info.do?member_id=${sessionScope.loginUser.member_id}">마이페이지</a></li>
	                    	<li class="topbar-devider"></li>   
	                    	<li><a href="${pageContext.request.contextPath}/user/logout.do">로그아웃</a></li>   
						</c:when>
						
						<c:otherwise>
	                    	<li><a href="${pageContext.request.contextPath}/user/login.do">로그인</a></li>
	                    	<li class="topbar-devider"></li>   
	                    	<li><a href="${pageContext.request.contextPath}/user/register.do">회원가입</a></li>   
						</c:otherwise>
					</c:choose>      
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
            </div><!--/end container-->
        </div><!--/navbar-collapse-->
    </div>
    <!--=============================================
    
    								End Header 상단 끝입니다.!!!
    
    ================================================-->


    <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">사용자 로그인</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="${pageContext.request.contextPath}/main.do">홈</a></li>
                <li class="active">사용자 로그인</li>
            </ul>
        </div><!--/container-->
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->
<!--  
====================로그인 구역 시작========================
-->
	<!-- Cookie가 비어있지 않을 때 checked 속성을 줌 -->
	<c:if test="${not empty cookie.user_check}">
		<c:set value="checked" var="checked"/>
	</c:if>
	
	<form method="post" action="/user/login.do" id="loginform" >
    <!--=== Content Part ===-->
    <div class="container content">		
    	<div class="row">
            <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
                <form class="reg-page">
                    <div class="reg-header">            
                        <h2>사용자 로그인</h2>
                    </div>

                    <div class="input-group margin-bottom-20">
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        <input type="text" id="member_id" name="member_id" value="${cookie.user_check.value}" placeholder="아이디" class="form-control">
                    </div>                    
                    <div class="input-group margin-bottom-10">
                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                        <input type="password" id="pwd1" name="member_pwd" placeholder="비밀번호" class="form-control">
                    </div>                    
					<div class="row">
                        <div class="col-md-12">	
                            <label class="pull-left">	
                            	<input type="checkbox" id="remember_us" name="remember_userId" ${checked}> 아이디 저장                  
                        	</label>
                        </div>                     
            		</div>
					<input type="button" onclick="signInValidation()" class="btn-u btn-u-lg btn-block btn-u-blue" value="로그인">
                    <hr>
					<div class="col-md-pull">
                    <p style="text-align:center;" class="color-blue">아직 회원이 아니신가요?</p>
                    </div>
                    <p><a href="${pageContext.request.contextPath}/user/register.do"><button class="btn-u btn-block btn-u-blue" type="button" >회원가입</button></a></p>
                    <div class="row">
                    	<div class="col-md-12">
                        	<span class="pull-right">
                            	<a class="color-blue" href="#">비밀번호 찾기</a>
                            </span>
                            <span class="pull-left">
                            	<a class="color-blue" href="#">아이디 찾기</a>
                            </span>  
                        </div>
                	</div> 
                </form>            
            </div>
        </div><!--/row-->
    </div><!--/container-->		
    <!--=== End Content Part ===-->
    </form>

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
                <p class="text-center">2015 &copy; All Rights Reserved. Unify Theme by <a target="_blank" href="${pageContext.request.contextPath}/user/adminLogin.do">Htmlstream</a></p>
            </div> 
        </div><!--/copyright--> 
    </div>
    <!--=======================
    
     				Footer 하단끝끝

	========================-->
    
   
</div><!--/wrapper--><!-- 전체를 하나로 감싸주는 역할? -->

<!-- JS Global Compulsory -->           
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/bootstrap/js/bootstrap.min.js"></script> 
<!-- JS Implementing Plugins -->           
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/smoothScroll.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/custom.js"></script>
<!-- JS Page Level -->           
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/app.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
        });
</script>

<script type="text/javascript">
	function signInValidation(){
		var userId = $("#member_id").val();
		var userPw = $("#pwd1").val();
	
		if(!userId){
    		alert("아이디 입력은 필수입니다.");
    		$("#member_id").focus();
    	}else if(!userPw){
    		alert("비밀번호 입력은 필수입니다.");
    		$("#pwd1").focus();
    	}else {
    		signIn()
    	}
	}
	
    function signIn(){
    	$.ajax({		
    		url : "${pageContext.request.contextPath}/user/login.do",
    		type:'POST',
    		data : {
    			member_id : $("#member_id").val(),
    			member_pwd : $("#pwd1").val(),
				remember_userId : $("#remember_us").is(':checked')
			},
    		success:function(data){
    			if(data == "success"){
    				alert("로그인에 성공하셨습니다.");
    				location.href = "${pageContext.request.contextPath}/main.do";
    			}else if(data == "idFail"){
    				alert("ID가 존재하지 않습니다");
    				return false;
    				
    			} else if(data == "pwdFail") {
    				alert("패스워드가 틀렸습니다. 비밀번호를 확이해주세요");
    				return false;		
    			}
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