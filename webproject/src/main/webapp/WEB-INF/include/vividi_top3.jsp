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
			
			
			#c-text{
				margin-top: 200px;
				/* width : 70%;
				margin-left: auto;
				margin-right: auto; */
				color: white;
				text-align: right;
				font-size: 40pt;
			}
			#c-text2{
				margin-top: 200px;
				/* width : 70%;
				margin-left: auto;
				margin-right: auto; */
				color: white;
				text-align: center;
			}
			
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
	    
		<header>
		  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
		    <div class="container-fluid" >
		      <a class="navbar-brand" href="/webproject/index2.do">비비디바비디부</a>
		      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
		        <span class="navbar-toggler-icon"></span>
		      </button>
		      <div class="collapse navbar-collapse" id="navbarCollapse">
		        <ul class="navbar-nav me-auto mb-2 mb-md-0">
		          
		           <li class="nav-item">
		            <a class="nav-link active" aria-current="page" href="/webproject/map/search.do">수선검색</a>
		          </li>
		          
		           <li class="nav-item">
		            <a class="nav-link active" aria-current="page" href="#">수선대행신청</a>
		          </li>
		          
		           <li class="nav-item">
		            <a class="nav-link active" aria-current="page" href="/webproject/board/list.do">자유게시판</a>
		          </li>
		          
		          <li class="nav-item">
		            <a class="nav-link active" aria-current="page" href="/webproject/board/reviewlist.do">후기</a>
		          </li>
		          
		           <li class="nav-item">
		            <a class="nav-link active" aria-current="page" href="/webproject/board/noticelist.do">공지사항</a>
		          </li>
		          
		        <!--   <li class="nav-item">
		            <a class="nav-link active" aria-current="page" href="/webproject/menu/list.do">목록</a>
		          </li> -->
		          
		        </ul>
		       <!--  <form class="d-flex">
		          <button class="btn btn-outline-success" id="btn1" type="submit">회원가입</button>
		          <a class="btn btn-outline-success" id="btn1" type="submit" href="/webproject/menu/login.do">log in</a>
		          <button class="btn btn-outline-success" type="submit">log out</button>
		        </form> -->
		        
		      </div>
		    </div>
		  </nav>
		</header>
	</body>
</html>