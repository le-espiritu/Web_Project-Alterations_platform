<%@page import="multi.erp.users.usersVO"%>
<%@page import="multi.erp.users.shopVO"%>
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
	      
	      
			
			.container-fluid{
				height: 50px;
			}
			
			#btn1{
				margin-right:20px;
			}

			
	
	    </style>
	
	  </head>
	  <body>
	      <%usersVO user = (usersVO) session.getAttribute("loginUser"); %>
	      <%shopVO shop = (shopVO) session.getAttribute("loginShop"); %>
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
		          
		        </ul>
		        <form class="d-flex">
		         <%if(user==null && shop==null) {%>
		          <a class="btn btn-outline-success" id="btn1" type="submit" href="/webproject/menu/login.do">log in</a>
		           <%}else if(user==null || shop==null){ %>
		          <a class="btn btn-outline-success" id="btn1" type="submit" href="/webproject/menu/logout.do">log out</a>
		           <%} %>
		        </form>
		        
		      </div>
		    </div>
		  </nav>
		</header>
	</body>
</html>