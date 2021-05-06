<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html> 
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="ko"> <!--<![endif]-->  
<head>
    <title>Blog Large Right Sidebar | Unify - Responsive Website Template</title>

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
    
    <!--======== 스타일 변경하기======= -->
    <style>    
    #RPath{
		color:#2ecc71;
	}
    #CTitle{
		font-size:30px;
		    
    }
    /*
    	지도 관련 스타일
    */
    
    </style>
    <!--======== 스타일 변경하기======= -->
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
	                    	<li><a href="#">관리자 페이지</a></li>  
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
            <h1 class="pull-left" id="RPath"><b>예약페이지</b></h1>
            <ul class="pull-right breadcrumb">
                <li><a href="${pageContext.request.contextPath}/main.do">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/cafe/list.do">카페 구경하기</a></li>
                <li class="active">예약하기</li>
            </ul>
        </div>
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

    <!--=== Content Part ===-->
    <div class="container content">		
    	<div class="row blog-page">    
            <!-- Left Sidebar -->
        	<div class="col-md-8">  
                <!--Blog Post-->        
                <div class="blog margin-bottom-20">
                    <p id="CTitle">${cafe.cafe_name}</p>
                    <div class="blog-post-tags">
                        <ul class="list-unstyled list-inline blog-tags">
                            <li>
                                <a href="#">${cafe.cafe_hashtag1}</a> 
                                <a href="#">${cafe.cafe_hashtag2}</a>
                                <a href="#">${cafe.cafe_hashtag3}</a>
                                <a href="#">${cafe.cafe_hashtag4}</a>
                            </li>
                        </ul>                                                
                    </div>
                    <div class="blog-img">
                        <div class="carousel slide carousel-v1" id="myCarousel">
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img width="750" height="550" src="${pageContext.request.contextPath}/${cafe.cafe_image1}">
                                </div>
                                <div class="item">
                                    <img width="750" height="550" src="${pageContext.request.contextPath}/${cafe.cafe_image2}">
                                    </div>
                                <div class="item">
                                    <img width="750" height="550" src="${pageContext.request.contextPath}/${cafe.cafe_image3}">
                                </div>
                            </div>
                            
                            <div class="carousel-arrow">
                                <a data-slide="prev" href="#myCarousel" class="left carousel-control">
                                    <i class="fa fa-angle-left"></i>
                                </a>
                                <a data-slide="next" href="#myCarousel" class="right carousel-control">
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <p id="CTitle" style="white-space: pre-line;">${cafe.cafe_linescription}</p>
                </div>  
               <div class="tab-v1">
	                    <ul class="nav nav-tabs margin-bottom-20 nav-justified" id="Introduction">
	                        <li class="active"><a data-toggle="tab" href="#home">공간소개</a></li>
	                        <li ><a data-toggle="tab" href="#settings2">시설안내</a></li>
	                        <li><a data-toggle="tab" href="#settings3">유의사항</a></li>
	                        <li><a data-toggle="tab" href="#settings4">환불정책</a></li>
	                        <li><a data-toggle="tab" href="#settings5">Q&A</a></li>
	                        <li><a data-toggle="tab" href="#settings6">이용후기</a></li>
	                    </ul>
	                    <div class="tab-content">
	                        <!-- Tab Content 1 -->
	                        <div id="home" class="tab-pane fade in active">
	                            <div id="accordion-v1" class="panel-group acc-v1">
	                                <div class="panel panel-default">
	                                    <div class="panel-heading">
	                                        <h4 class="panel-title">
	                                            <a href="#collapse-One" data-parent="#accordion-v1" data-toggle="collapse" class="accordion-toggle">
	                                                공간소개
	                                            </a>
	                                        </h4>
	                                    </div>
	                                    <div class="panel-collapse collapse in" id="collapse-One">
	                                        <div class="panel-body">
	                                        		<p style="white-space: pre-line;"><font size="3pt" >${cafe.cafe_spaceintroduction}</font></p>
	                                            <hr>
	                                            <p>
	                                            <b>주소</b>&emsp;${cafe.cafe_address}
	                                            <p>
	                                            <b>연락처</b>&emsp;${cafe.cafe_contact}
	                                            <p>
	                                            <b>영업시간</b>&emsp;${cafe.cafe_time}
	                                            <p>
												<b>휴무일</b>&emsp;${cafe.cafe_rest}
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>    
	                        </div>
	                        <!-- End Tab Content 1 -->
	
	                        <!-- Tab Content 2 -->
	                        <div id="settings2" class="tab-pane fade">
	                            <div id="accordion-v2" class="panel-group acc-v1">
	                                <div class="panel panel-default">
	                                    <div class="panel-heading">
	                                        <h4 class="panel-title">
	                                            <a href="#collapse-v2-One" data-parent="#accordion-v2" data-toggle="collapse" class="accordion-toggle">
	                                               	시설안내
	                                            </a>
	                                        </h4>
	                                    </div>
	                                    <div class="panel-collapse collapse in" id="collapse-v2-One">
	                                        <div class="panel-body">
	                   	                     <p style="white-space: pre-line;"><font size="3pt" >${cafe.cafe_infrainformation}</font></p>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>    
	                        </div>
	                        <!-- Tab Content 2 -->
	                        
	                        <!-- Tab Content 3 -->
	                        <div id="settings3" class="tab-pane fade">
	                            <div id="accordion-v3" class="panel-group acc-v1">
	                                <div class="panel panel-default">
	                                    <div class="panel-heading">
	                                        <h4 class="panel-title">
	                                            <a href="#collapse-v3-One" data-parent="#accordion-v3" data-toggle="collapse" class="accordion-toggle">
	                                                유의사항
	                                            </a>
	                                        </h4>
	                                    </div>
	                                    <div class="panel-collapse collapse in" id="collapse-v3-One">
	                                        <div class="panel-body">
	                                            <p style="white-space: pre-line;"><font size="3pt" >${cafe.cafe_note}</font></p>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>    
	                        </div>
	                        <!-- Tab Content 3 -->
	                        
	                        <!-- Tab Content 4 -->                        
	                        <div id="settings4" class="tab-pane fade">
	                            <div id="accordion-v4" class="panel-group acc-v1">
	                                <div class="panel panel-default">
	                                    <div class="panel-heading">
	                                        <h4 class="panel-title">
	                                            <a href="#collapse-v4-One" data-parent="#accordion-v4" data-toggle="collapse" class="accordion-toggle">
	                                                환불정책
	                                            </a>
	                                        </h4>
	                                    </div>
	                                    <div class="panel-collapse collapse in" id="collapse-v4-One">
	                                        <div class="panel-body">
	                                            <p style="white-space: pre-line;"><font size="3pt" >${cafe.cafe_refund}</font></p>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <!-- Tab Content 4 -->
	                        
	                        <!-- 5 -->
	                        <div id="settings5" class="tab-pane fade">
	                            <div id="accordion-v4" class="panel-group acc-v1">
	                                <div class="panel panel-default">
	                                    <div class="panel-heading">
	                                        <h4 class="panel-title">
	                                            <a href="#collapse-v5-One" data-parent="#accordion-v5" data-toggle="collapse" class="accordion-toggle">
	                                                Q&A
	                                            </a>
	                                        </h4>
	                                    </div>
	                                    <div class="panel-collapse collapse in" id="collapse-v5-One">
	                                        <div class="panel-body">
	                                            Q&A댓글
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <!-- 5 -->
	                        
	                        <!-- 6 -->
	                        <div id="settings6" class="tab-pane fade">
	                            <div id="accordion-v4" class="panel-group acc-v1">
	                                <div class="panel panel-default">
	                                    <div class="panel-heading">
	                                        <h4 class="panel-title">
	                                            <a href="#collapse-v6-One" data-parent="#accordion-v6" data-toggle="collapse" class="accordion-toggle">이용자 리뷰</a>
	                                        </h4>
	                                    </div>
	                                    
	                                    <div class="panel-collapse collapse in" id="collapse-v6-One">
	                                        <div class="panel-body">
	                                            <div class="headline"><h2>이용자 리뷰</h2></div>
	                                         
		                                     <!-- 레코드가 없다면 -->
											<c:if test="${count==0}">
											    <div>
											          <h4>고객이 작성한 리뷰가 없습니다.</h4>
											     </div>
											</c:if>
					
	                                        <div class="row-v4">
								                <div class="col-md-pull pull-left">             
								                     <c:forEach var="evaluation_list" items="${evaluation_list}">
									                     <div class="row">
									                        <div class="col-sm-2">
									                            <img class="img-responsive rounded-x" src="${pageContext.request.contextPath}/assets/img/team/logo.png" >
									                        </div>
									                        <div class="col-sm-10">
									                            <blockquote>
									                            	<div class="row">
										                             	<div class="col-sm-2">
											                             	<h2 style="font-weight: bolder;">${evaluation_list.member_id}</h2>
											                            </div>

											                            <c:if test="${evaluation_list.order_eval_score==1}">
											                             	<div class="col-sm-4 col-sm-offset-6">
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
											                             	<div class="col-sm-4 col-sm-offset-6">
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
											                             	<div class="col-sm-4 col-sm-offset-6">
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
											                             	<div class="col-sm-4 col-sm-offset-6">
												                             	  <ul class="list-inline star-vote">
																                      <li><i class="color-green fa fa-star"></i></li>
																                      <li><i class="color-green fa fa-star"></i></li>
																                      <li><i class="color-green fa fa-star"></i></li>
																                      <li><i class="color-green fa fa-star"></i></li>
																                      <li><i class="color-green fa fa-star-o"></i></li>
																                 </ul>
												                            </div>       
											                            </c:if>     
											                            										                           
											                            <c:if test="${evaluation_list.order_eval_score ==5}">
											                             	<div class="col-sm-4 col-sm-offset-6">
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
										                            <h5>제목 : ${evaluation_list.order_eval_title}</h5>
									                                <p>${evaluation_list.order_eval_content}</p>
									                            	<h6 style="font-weight: lighter;">${evaluation_list.order_eval_regdate}</h6>
									                            </blockquote> 
									                            

									                            <blockquote>
										                            <c:forEach var="evaluation_reply_list" items="${evaluation_reply_list}">
											                            <c:if test="${evaluation_list.order_eval_id==evaluation_reply_list.order_eval_id}">
												                            	<h2 style="color: purple; font-weight: bolder;">호스트의 답글</h2>
												                            	<p>${evaluation_reply_list.order_eval_reply_content}</p>
												                            	<h6 style="font-weight: lighter;">${evaluation_reply_list.order_eval_reply_regdate}</h6>
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
	                        <!-- 6 -->       
	                                            
	                    </div>
	                </div> 
            </div><!-- col-md-8 -->
            <!-- End Left Sidebar -->

            <!-- Right Sidebar -->
        	<div class="col-md-4 magazine-page">
            	<!-- Search Bar -->
                <div class="headline headline-md"><h2>예약하기</h2></div> 
                           
 				<div class="tab-pane fade in active" id="home-1">
	                <div class="tag-box tag-box-v1 margin-bottom-40">
	                    <div class="tab-pane fade in active" id="home-1">
                            <form action="cafe/order.do" method="post" id="reservationForm" class="sky-form">
                                <fieldset>
                                    <section>
                                        <div class="headline"><h2>예약 날짜 선택</h2></div>
                                        <label class="input">
                                            <i class="icon-append fa fa-calendar"></i>
                                            <input type="text" name="reser_date" id="date">
                                        </label>
                                    </section>
                                 </fieldset>
                                 
                                 <fieldset>
			                        <section>
			                            <div class="headline"><h2> 예약 시간 선택</h2></div>
			                            <div class="row">
                                    		<div class="col col-7">
                                            	<select name="reser_time" id="reser_time" class="form-control">
							                        <option></option>
							                        <option>오전 01:00</option>
							                        <option>오전 02:00</option>
							                        <option>오전 03:00</option>
							                        <option>오전 04:00</option>
							                        <option>오전 05:00</option>
							                        <option>오전 06:00</option>
							                        <option>오전 07:00</option>
							                        <option>오전 08:00</option>
							                        <option>오전 09:00</option>
							                        <option>오전 10:00</option>
							                        <option>오전 11:00</option>
							                        <option>오후 12:00</option>
							                        <option>오후 13:00</option>
							                        <option>오후 14:00</option>
							                        <option>오후 15:00</option>
							                        <option>오후 16:00</option>
							                        <option>오후 17:00</option>
							                        <option>오후 18:00</option>
							                        <option>오후 19:00</option>
							                        <option>오후 20:00</option>
							                        <option>오후 21:00</option>
							                        <option>오후 22:00</option>
							                        <option>오후 23:00</option>
							                        <option>오전 24:00</option>
							                    </select>   
                                  			</div>
                                  		</div>
                                  	</section>
			                     </fieldset>
                   
                                 <fieldset>
			                        <section>
			                            <div class="headline"><h2> 사용 시간 선택</h2></div>
			                            <div class="row">
                                    		<div class="col col-7">
                                            	<select name="reser_usertime" id="reser_usertime" class="form-control">
							                        <option></option>
							                        <option value="1">1시간</option>
							                        <option value="2">2시간</option>
							                        <option value="3">3시간</option>
							                        <option value="4">4시간</option>
							                        <option value="5">5시간</option>
							                        <option value="6">6시간</option>
							                        <option value="7">7시간</option>
							                        <option value="8">8시간</option>
							                        <option value="9">9시간</option>
							                        <option value="10">10시간</option>
							                    </select>   
                                  			</div>
                                  		</div>
                                  	</section>
			                     </fieldset>
			                     
                                 <fieldset>
                                    <section>
                                        <div class="headline"><h2>세부 공간 선택</h2></div>
                                        <div class="row">
                                        	<div class="col col-12">
                                            <table>
                                            	<tr>
                                                	<td width="30%">
                                                		<label class="radio"><input type="radio" id="reser_category" name="reser_category" checked value="${cafe.cafe_category1}"><i class="rounded-x"></i>${cafe.cafe_category1}</label>
                                                	</td>
                                                	<td width="70%" align="right"><fmt:formatNumber value="${cafe.cafe_category1Price}" pattern="#,###" /> / 시간(인)</td>
                                                </tr>
                                                <tr>
                                                	<td width="30%">
                                                		<label class="radio"><input type="radio" id="reser_category" name="reser_category" value="${cafe.cafe_category2}"><i class="rounded-x"></i>${cafe.cafe_category2}</label>
                                                	</td>
                                                	<td width="70%" align="right" ><fmt:formatNumber value="${cafe.cafe_category2Price}" pattern="#,###" /> / 시간(인)</td>                                          		
                                                </tr>
                                            </table>
                                            </div>
                                        </div>   
                                    </section>
                                </fieldset>
                                
                                <fieldset>
                                    <section>
                                        <div class="headline"><h2>총 예약 인원</h2></div>
                                        <div class="row">
                                            <div class="col col-7">
                                            	<select id="reser_person" name="reser_person" class="form-control">
							                        <option></option>
							                        <option>1</option>
							                        <option>2</option>
							                        <option>3</option>
							                        <option>4</option>
							                        <option>5</option>
							                        <option>6</option>
							                    </select>    
                                            </div>
                                        </div>   
                                    </section>
                                </fieldset>
                                                        
                                <fieldset>
                                    <section>
                                        <div class="headline"><h2>고객 요청 사항</h2></div>
                                       <label class="textarea">
			                                <textarea id="reser_request" name="reser_request" rows="3"></textarea>
			                           </label>
			                         </section>
                                </fieldset>
                                <input type="hidden" name="member_id" value="${sessionScope.loginUser.member_id}">
                                <input type="hidden" name="cafe_id" value="${cafe.cafe_id}">
                                <input type="hidden" name="reser_categoryPersonPrice" value="${cafe.cafe_category1Price}">
                                <input type="button" onclick="reservationForm()" class="btn-u btn-block btn-u-green" type="button" value="예약하기">
                             </form>
                        </div>	    
                    </div>                
	             </div>
            </div>
            <!-- End Right Sidebar -->
        </div><!--/row-->        
    </div><!--/container-->		
    <!--=== End Content Part ===-->

    <!--===========================
    
  	   Footer 하단시작이요오
  
    =============================-->
    <hr>
    <div id="footer-v2" class="footer-v2">
        <div class="footer">
            <div class="container">
                <div class="row">
                    <!-- About -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <a class="logo" href="homepage.html">
                		<img src="${pageContext.request.contextPath}/assets/logoimg/MainLogo.png" alt="Logo" width="180"></a>
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
</div><!--/wrapper-->

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
        FancyBox.initFancybox();        
        LoginForm.initLoginForm();
        ContactForm.initContactForm();
        Datepicker.initDatepicker();
        });
</script>

<!-- 회원가입 뒷배경 슬라이드쇼 -->
<script type="text/javascript">
    function reservationForm(){
    	var date = $("#date").val();
    	var orderTime =$("#reser_time").val();	
    	var useTime = $("#reser_usertime").val();
    	var category = $("#reser_category").val();
    	var person = $("#reser_person").val();
    	var request = $("#reser_request").val();
    	    	
    	if(!date){
    		alert("원하시는 날짜 선택해주세요.");
    		$("#reser_date").focus();
    	}else if(!orderTime){
    		alert("원하시는 예약 시간을 선택해주세요.");
    		$("#reser_time").focus();
    	}else if(!useTime){
    		alert("사용 시간을 선택해주세요.");
    		$("#reser_usertime").focus();
    	}else if(!category){
    		alert("원하시는 카테고리를 선택해주세요.");
    		$("#reser_category").focus();
    	}else if(!person){
    		alert("예약인원을 선택해주세요.");
    		$("#reser_person").focus();
    	}else if(!request){
    		alert("요청사항을 입력해주세요.");
    		$("#reser_request").focus();
    	}else {
    		reservation()
    	}
    }
    
    function reservation(){
    	$.ajax({		
    		url : "${pageContext.request.contextPath}/cafe/order.do",
    		type:'POST',
    		data :  $("#reservationForm").serialize(),
    		success:function(data){
    			if(data == "success"){
    				alert("예약이 완료됐습니다.^^");
    				location.href = "${pageContext.request.contextPath}/user/mypage_reservation.do?member_id=${sessionScope.loginUser.member_id}"
    			} else if(data == "fail"){
    				alert("로그인 후 예약 부탁드립니다 ^^");
    				location.href = "${pageContext.request.contextPath}/user/login.do";
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