<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>GatherStudy - user</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- color -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/theme-colors/blue.css">

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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/fancybox/source/jquery.fancybox.css">    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">

    <!-- CSS Page Style -->    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/pages/blog.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/pages/blog_magazine.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/custom.css">
    <!-- 스타일존 -->
	<style>    
	    #RPath{
			color:#2ecc71;
		}
	    #CTitle{
			font-size:30px;
			    
	    }
    	#Dstyle{
    		text-align: center;
    	}
    	#Dtext{
    		font-size: 24px;
    	}
    	#DDDtext{
    		color:#FF5050;
    	}
    	#userF{
    		color:#52C6F3;
    	}
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

	<div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left" id="RPath"><b>마이페이지</b></h1>
        </div>
    </div><!--/breadcrumbs-->
    
    <!-- 중단 시작 -->
     <div class="container content">		
    	<div class="row blog-page"> 
			<div id="Dstyle">
	    	<div class="tab-pane fade in active" id="home-1">
                            <form action="/user/mypage_infoDelete.do" method="post"  class="sky-form" id="deleteform">
                                <header>회원탈퇴</header>
                                
                                <fieldset>
                                	<div id="Dtext">                  
                                        <b id="userF">${member.member_id}</b> 라는 아이디를 쓰고계신                 
                                        <i class="fa fa-user">&ensp;</i><b id="userF"> ${member.member_name}</b>님!!<br>
                                        정말로 회원을 탈퇴하실껀가요????
                                    </div>
                                    <p>
                                    <div id="DDDtext">
                                   	※회원 탈퇴시 모든정보가 삭제 되며 복구가 불가능하오니 참고바랍니다.
                                   	</div>
                                    <p>
                                    <div class="col-md-offset-4 col-md-4 col-md-offset-4">
                                    	<i class="fa fa-lock">&ensp;</i><b>비밀번호</b>
                                    	<input type="password" class="form-control" id="pwd1" name="member_pwd" placeholder="Password"><br>
                                    	<input type="hidden" name="member_id" value="${sessionScope.loginUser.member_id}">
                                    	<i class="fa fa-lock">&ensp;</i><b>비밀번호 확인</b>
                                    	<input type="password" class="form-control" id="pwd2" placeholder="Password">
                                    </div>
                                </fieldset>
                                <footer class="pull">
	                                	<div class="pull-left">
	                                		<a type="button" class="btn-u btn-u-red" onclick="DeleteUpValidation()">탈퇴하기</a>
	                                	</div>
										<div class="pull-right">
	                                		<a type="button" class="btn-u" href="${pageContext.request.contextPath}/user/mypage_info.do?member_id=${sessionScope.loginUser.member_id}">탈퇴 취소 하기</a>
	                                	</div>
                                </footer>
                            </form>
                            <!--/ Success states for elements -->
        	</div>
		</div>
	</div>
</div>
 <div class="margin-bottom-50"></div>

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
    </div>

<!-- JS Global Compulsory -->			
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/smoothScroll.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/sky-forms-pro/skyforms/js/jquery.form.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/plugins/sky-forms-pro/skyforms/js/jquery.maskedinput.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/plugins/sky-forms-pro/skyforms/js/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/custom.js"></script>
<!-- JS Page Level -->           
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/app.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/forms/login.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/forms/contact.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/plugins/fancy-box.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/plugins/datepicker.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
      	App.init();
        OwlCarousel.initOwlCarousel();        
        ParallaxSlider.initParallaxSlider();
    });
    
    function DeleteUpValidation(){
    	var userPw = $("#pwd1").val();	
    	var userPwCheck = $("#pwd2").val();
		if(!userPw){
    		alert("비밀번호 입력은 필수입니다.");
    		$("#pwd1").focus();
    	}else if(!userPwCheck){
    		alert("비밀번호 확인 입력은 필수입니다.");
    		$("#pwd2").focus();
    	}else if(userPw != userPwCheck){
    		alert("비밀번호가 맞지 않습니다.");
    		$("#userPwCheck").focus();		
    	}else {
    		DeleteUp();
    	}
    }
    
    function DeleteUp(){
    	$.ajax({		
    		url : "${pageContext.request.contextPath}/user/mypage_infoDelete.do",
    		type:'POST',
    		data :  $("#deleteform").serialize(),
    		success:function(data){
    			if(data == "success"){
    				alert("회원이 탈퇴가 완료되었습니다.");
    				location.href = "${pageContext.request.contextPath}/main.do"
    			} else if(data == "pwdFail"){
    				alert("회원정보에 등록된 패스워드가 틀립니다!!");
    			}
    			return false
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