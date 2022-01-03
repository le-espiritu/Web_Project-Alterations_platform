<%@page import="multi.webproject.map.StoreVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		
		
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
		
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
	
		
		
		
		<!-- Latest compiled and minified CSS -->
		<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
		
		
		
			
	
	    <style>
	    
	    	/* ======top5 박스들 css========= */
			.tob-box{
				height: 70px;
				width: 90%;
				/* background-color: #22507f; */
				/* background: linear-gradient(125deg,#81ecec,#6c5ce7,#81ecec); */
				background: linear-gradient(90deg, #81ecec,#6c5ce7, #020D42, #020D42, #020D42);
				background-position: right;
				background-size: 200%;
				cursor:pointer;
				transition: 0.4s;
				margin-top : 20px;
				margin-bottom : 20px;
				text-align: center;
				/* border: 7px solid yellow; */
				border-radius: 0.1em; 
				
				
				
			}
				
				
			.tob-box:hover {
	 			 background-position: left;
	 			 /* border: 10px solid #67930F; */
	 			 width:100%;
			}
			/* ======top5 박스들 css========= */
		
		.top5_p {
			    /* display: inline-block; */
	    		margin-top: 10px;
	    		color: white;
	    		font-size: 15pt;
			}
	    
	    </style>
	  </head>
	  
	<body>
			
			<% ArrayList<StoreVO> storelist= (ArrayList<StoreVO>) request.getAttribute("storelist"); 
			int size = storelist.size();%>
			
			
			<div style="margin-top: 120px; padding-botoom: 20px; background-color: #020D42">
				<div class="container" >
				
					<div class="row" >
						<div id="gotopantsbest" OnClick="location.href ='/webproject/shop/shop_areatop5.do?category=pants&&area=<%=storelist.get(0).getArea() %>'"style="cursor:pointer; width:12.5%">
							<div class="tob-box"> 
								<p class="top5_p">바지수선 TOP5</p>
							</div>
						</div>
						<div OnClick="location.href ='/webproject/shop/shop_areatop5.do?category=shirt&&area=<%=storelist.get(0).getArea() %>'" style="cursor:pointer; width:12.5%">
							<div class="tob-box"> 
								<p class="top5_p">셔츠수선 TOP5</p>
							</div>
						</div>
						<div OnClick="location.href ='/webproject/shop/shop_areatop5.do?category=suit&&area=<%=storelist.get(0).getArea() %>'" style="cursor:pointer; width:12.5%">
							<div class="tob-box"> 
								<p class="top5_p">정장수선 TOP5</p>
							</div>
						</div>
						<div OnClick="location.href ='/webproject/shop/shop_areatop5.do?category=outer&&area=<%=storelist.get(0).getArea() %>'" style="cursor:pointer; width:12.5%">
							<div class="tob-box"> 
								<p class="top5_p">아우터수선 TOP5</p>
							</div>
						</div>
						<div OnClick="location.href ='/webproject/shop/shop_areatop5.do?category=jeans&&area=<%=storelist.get(0).getArea() %>'" style="cursor:pointer; width:12.5%">
							<div class="tob-box"> 
								<p class="top5_p">청바지수선 TOP5</p>
							</div>
						</div>
						<div OnClick="location.href ='/webproject/shop/shop_areatop5.do?category=skirt&&area=<%=storelist.get(0).getArea() %>'" style="cursor:pointer; width:12.5%">
							<div class="tob-box"> 
								<p class="top5_p">치마수선 TOP5</p>
							</div>
						</div>
						<div OnClick="location.href ='/webproject/shop/shop_areatop5.do?category=dress&&area=<%=storelist.get(0).getArea() %>'" style="cursor:pointer; width:12.5%">
							<div class="tob-box"> 
								<p class="top5_p">원피스수선 TOP5</p>
							</div>
						</div>
						<div OnClick="location.href ='/webproject/shop/shop_areatop5.do?category=reform&&area=<%=storelist.get(0).getArea() %>'" style="cursor:pointer; width:12.5%">
							<div class="tob-box"> 
								<p class="top5_p">리폼 TOP5</p>
							</div>
						</div>
					</div>
					
				</div>
			</div>
			
				<div class="container" style= "margin-top: 30px; margin-bottom: 300px;">
					<div class="row" >
						<%for(int i=0;i<size;i++){
							StoreVO store = storelist.get(i);
							
						%>
							<div class="col-lg-3" style= "margin-bottom: 20px">
								<div class="card" style="height : 380px">
									<a href="/webproject/shop/shop_detail.do?str_code=<%=store.getStr_code()%>">
										<img src="/webproject/images/shop_images/<%=store.getShop_img()%>" class="card-img-top" alt="..." style="height : 250px">
									</a>
									<div class="card-body">
									    <p class="card-text">상호: <%=store.getStorename()%></p>
									    <p class="card-text">주소: <%=store.getAddr() %></p>
									</div>
								</div>
							</div>
							
							
						<%} %>
						
					</div>
				</div>
				
		<%-- <script type="text/javascript">
		
			$(document).ready(function(){
				$("#gotopantsbest").click(function(){
					$(location).attr("href","/webproject/shop/shop_areatop5.do?category=pants&&area=<%=storelist.get(0).getArea()%>")
				})
			})
		    
		
		</script> --%>				
			     
			      
			    
		     
		     
		    
		    
		<!--     
		  <footer class="container">
		    <p class="float-end"><a href="#">Back to top</a></p>
		    <p>&copy; Multi campus, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
		  </footer> -->
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
		
	</body>
</html>