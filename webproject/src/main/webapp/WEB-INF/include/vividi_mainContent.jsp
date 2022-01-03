<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <meta name="description" content="">
	    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
	    <meta name="generator" content="Hugo 0.88.1">
	
	    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/carousel/">
	
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
		<link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
		<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
		<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
		<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
		<link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
		<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
		<meta name="theme-color" content="#7952b3">
		
		
		
		
		
		
		
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
  <link href="assets/css/style.css" rel="stylesheet">
		
		
		
		
		
		
		
	
	
	    <style>
	      .bd-placeholder-img {
	        font-size: 1.125rem;
	        text-anchor: middle;
	        -webkit-user-select: none;
	        -moz-user-select: none;
	        user-select: none;
	      }
	
	      @media (min-width: 768px) {
	        .bd-placeholder-img-lg {
	          font-size: 3.5rem;
	        }
	      }
	      
			body {
			  padding-top: 0rem; /* 바디 탑 패딩 */
			  padding-bottom: 3rem;
			  color: #5a5a5a;
			}
			
			
			
			/* =======캐러셀======== */
			
			#Carouseldiv{
				background: linear-gradient(to top, #999ECB, #376B97, #020D42, #01011D); } /* 이게 작동함 */
			
			}
			
			.container-fluid{
				height: 50px;
			}
			
			#btn1{
				margin-right:20px;
			}

			.carousel {
			/* height: 600px; */
			  margin-bottom: 4rem;
			  width: 80%;
			  margin-left:auto;
			margin-right:auto;
			}
			.carousel-caption {
			  bottom: 3rem;
			  z-index: 10;
			}
			
			.carousel-item {
			   height: 55rem;/* 캐러셀 세로길이 */
			}
			.carousel-item > img {
			  padding-top: 4rem;
			  position: absolute;
			  top: 0;
			  left: 0;
			  min-width: 100%;
			  /* min-height: 800px; */
			  height: 53rem; /* 캐러셀 컨텐츠 세로 길이 */
			}
			
			#c-text{  /* 캐러셀 텍스트 */
				margin-top: 300px;
				/* width : 70%;
				margin-left: auto;
				margin-right: auto; */
				color: white;
				text-align: right;
				font-size: 40pt;
			}
			#c-text2{  /* 캐러셀 텍스트 */
				margin-top: 300px;
				/* width : 70%;
				margin-left: auto;
				margin-right: auto; */
				color: white;
				text-align: center;
			}
			
			
			
			/* =============버튼 css================== */
			.btn {
			  position:relative;
			  left:0%; 
			  transform: translateX(-50%);
			  margin-bottom: 40px;
			  width:80%;
			  height:40px;
			  background: linear-gradient(125deg,#81ecec,#6c5ce7,#81ecec);
			  background-position: left;
			  background-size: 200%;
			  color:white;
			  font-weight: bold;
			  border:none;
			  cursor:pointer;
			  transition: 0.4s;
			  display:inline;
			}
			
			.btn:hover {
			  background-position: right;
			  
			}
			/* =============버튼 css================== */
			
			
			
			
			.marketing .col-lg-4 {
			  margin-bottom: 1.5rem;
			  text-align: center;
			}
			.marketing h2 {
			  font-weight: 400;
			}
			.marketing .col-lg-4 p {
			  margin-right: .75rem;
			  margin-left: .75rem;
			}
			
			.featurette-divider {
			  margin: 5rem 0; 
			}
			
			.featurette-heading {
			  font-weight: 300;
			  line-height: 1;
			  letter-spacing: -.05rem;
			}
			
			@media (min-width: 40em) {
			  .carousel-caption p {
			    margin-bottom: 1.25rem;
			    font-size: 1.25rem;
			    line-height: 1.4;
			  }
			
			  .featurette-heading {
			    font-size: 50px;
			  }
			}
			
			@media (min-width: 62em) {
			  .featurette-heading {
			    margin-top: 7rem;
			  }
			}
	
	    </style>
	
	  </head>
	<body>
		<main>
		<!-- <div style="background-color: #010831;"> -->
		<div id="Carouseldiv">
		
		  <div id="myCarousel" class="carousel slide" data-bs-ride="carousel"> <!-- data-bs-ride="carousel" -->
		    <div class="carousel-indicators">
		      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
		      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
		    </div>
		    <div class="carousel-inner">
		      <div class="carousel-item active" data-bs-interval="4000">
				<img src="/webproject/images/bibidi.gif" id="img1"/>
		      </div>
		      <div class="carousel-item" data-bs-interval="2500">
		        <div class="container">
		          <div id="c-text">
		            <p>여러분 옷장속에 잠들어 있는오래된 옷들!</p>
		            <p>사이즈가 맞지 않아 한번도 입지 않은 새 옷들!</p>
		            <p>모두 비비디바비디부 하세요!</p>
		          </div>
		        </div>
		      </div>
		      <div class="carousel-item" data-bs-interval="2500">
		        <div class="container">
		          <div id="c-text2">
		            <p style="font-size: 50pt">비비디바비디부</p>
		            <p style="font-size: 15pt">우리집 근처 수선 맛집 찾기 웹서비스</p>
		            <p><a class="btn btn-lg btn-primary" href="/webproject/map/search.do">비.바.부 하러가기</a></p>
		          </div>
		        </div>
		      </div>
		    </div>
		    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
		      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		      <span class="visually-hidden">Previous</span>
		    </button>
		    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
		      <span class="carousel-control-next-icon" aria-hidden="true"></span>
		      <span class="visually-hidden">Next</span>
		    </button>
		  </div>
		  </div>	
		  <div class="container marketing">
		    <div class="row">
		      <div class="col-lg-4">
				<img src="/webproject/images/gps.png" style="width:140px;height:140px;"/>
				<h2>수선집 찾기</h2>
		        <p>우리집 근처 가장 가까운 수선집부터 숨겨져있는 수선집까지! 나에게 꼭 맞는 수선집을 찾아보세요.           </p>
		      </div><!-- /.col-lg-4 -->
		      
		      
		      <div class="col-lg-4">
				<img src="/webproject/images/sewing.png" style="width:140px;height:140px;"/>
		        <h2>수선 대행</h2>
		        <p>수선을 맡기러 갈 시간이 없으신가요? 걱정마세요. 비비디바비디부가 원하시는 수선집에 대신 수선을 맡겨드립니다.</p>
		      </div><!-- /.col-lg-4 -->
		      
		      
		      <div class="col-lg-4">
		      
				<img src="/webproject/images/review.png" style="width:140px;height:140px;"/>
		        <h2>생생 후기</h2>
		        <p>이 수선집은 정말 나에게 맞는 수선집일까?? 먼저 수선을 받았던 이용자들의 생생한 후기를 찾아보세요.        </p>
		      </div><!-- /.col-lg-4 -->
		    </div><!-- /.row -->
		    
		    
		    <div class="row">
		      <div class="col-lg-4">
		        <p ><a class="btn btn-secondary" href="/webproject/map/search.do">찾아보기 &raquo;</a></p>
		      </div><!-- /.col-lg-4 -->
		      
		      
		      <div class="col-lg-4">
		        <p><a class="btn btn-secondary" href="/webproject/map/search.do">신청하기 &raquo;</a></p>
		      </div><!-- /.col-lg-4 -->
		      
		      
		      <div class="col-lg-4">
		      
		        <p><a class="btn btn-secondary" href="/webproject/board/reviewlist.do">후기보기 &raquo;</a></p>
		      </div><!-- /.col-lg-4 -->
		    </div><!-- /.row -->
		    
		    
		    
		    <hr class="featurette-divider">
		
		    <div class="row featurette">
		      <div class="col-md-7">
		        <h2 class="featurette-heading">위치기반 서비스.</h2>
		        <p class="lead">갑자기 옷 수선이 필요할때, 어떤 수선집에 수선을 맡겨야하나 고민이셨죠? 비비디바비디부는 현재 위치를 기반으로 주변의 수선집들을 지도를 통해 간편하게 알려줍니다.  .</p>
		      </div>
		      <div class="col-md-5">
		      	<img src="/webproject/images/map.jpeg" width="500" height="500"/>
		
		      </div>
		    </div>
		
		    <hr class="featurette-divider">
		
		    <div class="row featurette">
		      <div class="col-md-7 order-md-2">
		        <h2 class="featurette-heading">생생 후기를 통한 실력 검증</h2>
		        <p class="lead">이렇게 많은 수선집 중 어디에 수선을 맡겨야 할까요? 비.바.부를 통해 먼저 수선을 받은 이용자들의 생생 후기를 확인해보세요. 당신에게 꼭 맞는 비.비.부가 나타날거에요!.</p>
		      </div>
		      <div class="col-md-5 order-md-1">
		      	<img src="/webproject/images/bibabu.gif" width="500" height="500"/>
		
		      </div>
		    </div>
		
		    <hr class="featurette-divider">
		
		    <div class="row featurette">
		      <div class="col-md-7">
		        <h2 class="featurette-heading">대신 수선 맡겨드릴게요 :)</h2>
				<p class="lead">비비디바비디부를 통해 마음에드는 수선집을 찾으셨나요? 그런데 거리가 너무 멀다구요? 맡기러 갈 시간도 없으시구요? 걱정하지마세요. 비비디바비디부가 대신 수선을 맡겨드립니다.</p>
		      </div>
		      <div class="col-md-5">
				<img src="/webproject/images/repaire.png" width="500" height="500"/>
		      </div>
		    </div>
		
		    <hr class="featurette-divider">
		
		  </div><!-- /.container -->
		  <footer class="container">
		    <p class="float-end"><a href="#">Back to top</a></p>
		    <p>&copy; Multi campus, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
		  </footer>
		</main>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
		
	</body>
</html>