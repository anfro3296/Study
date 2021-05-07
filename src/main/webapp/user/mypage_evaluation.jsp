<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="ko"> <!--<![endif]-->  
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
            <h1 class="pull-left" id="RPath"><b>My 예약</b></h1>
        </div>
    </div><!--/breadcrumbs-->
    
    <!-- 중단 시작 -->
     <div class="container content">		
    	<div class="row blog-page"> 
    	   <div class="col-md-2  hidden-xs related-search">
				<div class=" s-results margin-bottom-50">
       				<div class="row">
                   			<div class="col-md-12 col-sm-4">
		                        <h3 id="RPath">My 예약</h3>
		                        <ul class="list-unstyled">
		                            <li><a href="${pageContext.request.contextPath}/user/mypage_reservation.do?member_id=${sessionScope.loginUser.member_id}">예약내역조회/취소</a></li>
		                            <li><a href="${pageContext.request.contextPath}/user/mypage_evaluation.do?member_id=${sessionScope.loginUser.member_id}">구매후기작성/조회</a></li>
		                            <li><a href="#">장바구니</a></li>   
		                       </ul>
		                       <hr>
	                    	</div>       

                    		<div class="col-md-12 col-sm-4">
	                        	<h3 id="RPath">My 정보</h3>
                       		<ul class="list-unstyled">
                            	<li><a href="${pageContext.request.contextPath}/user/mypage_info.do?member_id=${sessionScope.loginUser.member_id}">개인정보확인/수정</a></li>       
                        	</ul>
	                        	<hr>
                    		</div>                                                                      		        
            		</div>
            	</div>
            </div>
            
			<div class="col-md-10">
		    	<div class="tab-pane fade in active" id="home-1">
	            	<div class="panel panel-green margin-bottom-40">
	                    <div class="panel-heading">
	                        <h3 class="panel-title"><i class="fa fa-user"></i>My 예약</h3>
	                    </div>
	                    <div class="panel-body">
	                        <table class="table table-hover" style="text-align: center;">
	                            <thead>
	                                <tr class="active">
	                                    <td width="8%">예약번호</td>
	                                    <td width="15%">스터디 카페명</td>
	                                    <td width="6%">공간</td>
	                                    <td width="10%">예약 날짜</td>
	                                    <td width="10%">예약 시간</td>
	                                    <td width="9%">사용 시간</td>
	                                    <td width="8%">사용 인원</td>
	                                    <td width="9%">결제 금액</td>
	                                    <td width="8%">예약 상태</td>
	                                    <td width="17%">후기 작성</td>
	                                </tr>
	                            </thead>
	                            
	                            <!-- 레코드가 없다면 -->
								<c:if test="${count==0}">
								    <tr>
								       <td colspan="11" align="center">
								          사용하신 예약 내역이 없습니다.
								       </td>
								    </tr>
								</c:if>
						
	                            <tbody>
	                            	<c:forEach var="OrderList" items="${OrderList}">  
	                               		 <tr>
	                                	   <td width="8%">${OrderList.reser_number}</td>
		                                   <td width="15%">${OrderList.cafe_name}</td>
		                                   <td width="6%">${OrderList.reser_category}</td>
		                                   <td width="10%">${OrderList.reser_date}</td>
		                                   <td width="10%">${OrderList.reser_time}</td>
		                                   <td width="9%">${OrderList.reser_usertime}시간</td>
		                                   <td width="8%">${OrderList.reser_person}명</td>
		                                   <td width="9%"><fmt:formatNumber value="${OrderList.reser_price}" pattern="#,###" />원</td>
		                                   <td width="8%">${OrderList.reser_status}</td>
		                                   <c:if test="${OrderList.reser_evaluationCheck=='YES'}">
		                                 	  <td width="17%"><input type="button" class="btn-u btn-u-sm btn-u-red" value="후기 작성 완료" disabled></td>
										   </c:if>
										   <c:if test="${OrderList.reser_evaluationCheck=='NO'}">
		                                 	  <td width="17%"><input type="button" class="btn-u btn-u-sm btn-u-green" value="후기 작성 하기" onclick="location.href='${pageContext.request.contextPath}/user/mypage_evaluationWrite.do?reser_number=${OrderList.reser_number}' "></td>
										   </c:if>
		                                   </tr>
	                                </c:forEach>
	                            </tbody>
	                        </table>
	                    </div>                      
	                </div>
	        	</div>
			</div>
		
			<div class="col-md-10 col-md-offset-2">
		    	<div class="tab-pane fade in active" id="home-1">
	            	<div class="panel panel-green margin-bottom-40">
	                    <div class="panel-heading">
	                        <h3 class="panel-title"><i class="fa fa-user"></i>작성한 리뷰</h3>
	                    </div>
	                    <div class="panel-body">
							<div class="row-v4">
								<div class="col-md-pull pull-left">             
									<c:forEach var="evaluation_list" items="${evaluationList}">
									<div class="row">
										<div class="col-sm-2">
									    	<img align="middle" class="img-responsive" src="${pageContext.request.contextPath}/${evaluation_list.cafe_image1}" style="width:180px; height:110px">
									     </div>
									     
									     <div class="col-sm-10">
									     	<blockquote>
									        	<div class="row">
										        	<div class="col-sm-4">
											        	<h2 style="font-weight: bolder;">${evaluation_list.cafe_name}</h2>
											        </div>

											        <c:if test="${evaluation_list.order_eval_score==1}">
											        <div class="col-sm-4 col-sm-offset-4">
												    	<ul class="list-inline star-vote">
															<li><i class="color-green fa fa-star"></i></li>
															<li><i class="color-green fa fa-star-o"></i></li>
															<li><i class="color-green fa fa-star-o"></i></li>
															<li><i class="color-green fa fa-star-o"></i></li>
															<li><i class="color-green fa fa-star-o"></i></li>
														</ul>
												     </div>       
											         </c:if>   
											                            
											         <c:if test="${evaluation_list.order_eval_score==2}">
											         <div class="col-sm-4 col-sm-offset-4">
												     	<ul class="list-inline star-vote">
															<li><i class="color-green fa fa-star"></i></li>
															<li><i class="color-green fa fa-star"></i></li>
															<li><i class="color-green fa fa-star-o"></i></li>
															<li><i class="color-green fa fa-star-o"></i></li>
															<li><i class="color-green fa fa-star-o"></i></li>
													  	</ul>
												      </div>       
											          </c:if>   
											                            											                            
											         <c:if test="${evaluation_list.order_eval_score==3}">
											         <div class="col-sm-4 col-sm-offset-4">
												     	<ul class="list-inline star-vote">
															<li><i class="color-green fa fa-star"></i></li>
															<li><i class="color-green fa fa-star"></i></li>
															<li><i class="color-green fa fa-star"></i></li>
															<li><i class="color-green fa fa-star-o"></i></li>
															<li><i class="color-green fa fa-star-o"></i></li>
													  	</ul>
												      </div>       
											          </c:if>   
											          
											         <c:if test="${evaluation_list.order_eval_score==4}">
											         <div class="col-sm-4 col-sm-offset-4">
												     	<ul class="list-inline star-vote">
															<li><i class="color-green fa fa-star"></i></li>
															<li><i class="color-green fa fa-star"></i></li>
															<li><i class="color-green fa fa-star"></i></li>
															<li><i class="color-green fa fa-star"></i></li>
															<li><i class="color-green fa fa-star-o"></i></li>
													  	</ul>
												      </div>       
											          </c:if>   
											          
											         <c:if test="${evaluation_list.order_eval_score==5}">
											         <div class="col-sm-4 col-sm-offset-4">
												     	<ul class="list-inline star-vote">
															<li><i class="color-green fa fa-star"></i></li>
															<li><i class="color-green fa fa-star"></i></li>
															<li><i class="color-green fa fa-star"></i></li>
															<li><i class="color-green fa fa-star"></i></li>
															<li><i class="color-green fa fa-star"></i></li>
													  	</ul>
												      </div>       
											          </c:if>   											          											          											                           					                                     
										        </div>
										        <p>${evaluation_list.order_eval_content}</p>
										        <h6 style="font-weight: lighter;">${evaluation_list.order_eval_regdate}</h6>
									        </blockquote> 
									              
									        <blockquote>
										    	<c:forEach var="replyList" items="${replyList}">
											    	<c:if test="${evaluation_list.order_eval_id==replyList.order_eval_id}">
												    	<h2 style="color: purple; font-weight: bolder;">호스트의 답글</h2>
												        <p>${replyList.order_eval_reply_content}</p>
												        <h6 style="font-weight: lighter;">${replyList.order_eval_reply_regdate}</h6>
											        </c:if>
										        </c:forEach>
									        </blockquote>									                              
									     </div>
									</div>
									<hr>
								    </c:forEach>
								</div>
							</div>
	                    </div>                      
	                </div>
	        	</div>
			</div>
		
		
	</div>
</div>
 <div class="margin-bottom-30"></div>



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
    });
</script>
<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
    <script src="assets/plugins/html5shiv.js"></script>
    <script src="assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</html>