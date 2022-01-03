<%@page import="multi.erp.users.usersVO"%>
<%@page import="multi.erp.users.shopVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="/webproject/common/css/top2style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Dewi - v4.6.0
  * Template URL: https://bootstrapmade.com/dewi-free-multi-purpose-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  
</head>
	
	  </head>
	  <body>
	    <%usersVO user = (usersVO) session.getAttribute("loginUser"); %>
	    <%shopVO shop = (shopVO) session.getAttribute("loginShop"); %>
		<!-- ======= Header ======= -->
		  <header id="header" class="fixed-top ">
		    <div class="container d-flex align-items-center justify-content-between">
		
		      <h1 class="logo"><a href="/webproject/index2.do">BIBBIDI-BOBBIDI-BOO</a></h1>
		      <!-- Uncomment below if you prefer to use an image logo -->
		      <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
		
		      <nav id="navbar" class="navbar">
		        <ul>
		          <!-- <li><a class="nav-link scrollto active" href="#services">Services</a></li> -->
		          <li class="dropdown"><a href="#"><span>Services</span> <i class="bi bi-chevron-down"></i></a>
		          	<ul>
		          		<li><a href="/webproject/map/search.do">수선집 검색</a></li>
		          		<li><a href="#">수선대행 신청하기</a></li>
		          	</ul>
		          </li>	
		          
		          
		          <!-- <li><a class="nav-link scrollto " href="#portfolio">Portfolio</a></li> -->
		          <li class="dropdown"><a href="#"><span>COMMUNITY</span> <i class="bi bi-chevron-down"></i></a>
		            <ul>
		              <li class="dropdown"><a href="/webproject/board/reviewlist.do"><span>후기</span> <i class="bi bi-chevron-right"></i></a>
		                <ul>
		                  <li><a href="#">셔츠 후기</a></li>
		                  <li><a href="#">바지 후기</a></li>
		                  <li><a href="#">외투 후기</a></li>
		                  <li><a href="#">정장 후기</a></li>
		                  <li><a href="#">리폼 후기</a></li>
		                </ul>
		              </li>
		              <li><a href="/webproject/board/list.do">자유게시판</a></li>
		            </ul>
		          </li>
		          <li class="dropdown"><a href="#"><span>CONTACT</span> <i class="bi bi-chevron-down"></i></a>
		            <ul>
		              <li><a href="/webproject/board/noticelist.do">공지사항</a></li>
	               </ul>
		              </li>
		          
		          
		          <%if(user==null && shop==null) {%>
		          <li><a class="getstarted scrollto" href="/webproject/menu/login.do">login</a></li>
		          <%}else if(user==null || shop==null){ %>
		          <li><a class="getstarted scrollto" href="/webproject/menu/logout.do">logout</a></li>
		          <%} %>
		        </ul>
		        <i class="bi bi-list mobile-nav-toggle"></i>
		      </nav><!-- .navbar -->
		
		    </div>
		  </header><!-- End Header -->
		  
		  <!-- Template Main JS File -->
 			 <script src="/webproject/common/js/tob2js.js"></script>
  
	</body>
</html>