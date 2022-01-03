<%@page import="multi.webproject.map.StoreVO"%>
<%@page import="multi.webproject.review.reviewVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 


	<head> 
		<meta charset="UTF-8"> 
		<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0">  -->
		<title>회원가입 화면 샘플 - Bootstrap</title>
		
		 <!-- Bootstrap CSS --> 
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> 
		
		
		<style> 
		
		body { 
		/* min-height: 100vh;  */
		/* 90deg, #81ecec,#6c5ce7, #020D42, #020D42, #020D42 */
		background: linear-gradient(120deg, #81ecec,#6c5ce7, #020D42); }  /* 이게 작동함 */
		
		.card2 {
			margin-top: 150px;
			margin-bottom: 300px;
			width: 100%;
			padding: 32px; 
			
			background: #fff; 
			-webkit-border-radius: 10px; 
			-moz-border-radius: 10px; 
			border-radius: 10px; 
			-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
			 -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15); 
			box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15) 
			} 
			
			.No1storecard{
				 
				   /*  border: 1px solid transparent;
				    border-radius: 10px;
				    background-image: linear-gradient(white, white), linear-gradient(to right, #fbfcb9be, #ffcdf3aa, #65d3ffaa);
				    background-origin: border-box;
				    background-clip: content-box, border-box; */
				    height:400px;
				    box-sizing: border-box; 
				    border: 5px; 
				    border-style: solid; 
				    border-image: linear-gradient(#e66465, #9198e5); 
				    border-image-slice: 1;

			
			}
			.secondstorebox{
				border : 3px solid #D2D2D2; 
				border-radius: 10px;  
				width:100%; height: 370px; 
				margin-left:auto; margin-right: auto; 
				margin-top: 20px; padding-bottom: 250px;
			}
		
		</style> 
	</head> 
	
	<body> 
	
		<% 
		reviewVO categoryandarea = (reviewVO)request.getAttribute("categoryandarea");
		
		ArrayList<StoreVO> top5Infolist= (ArrayList<StoreVO>)request.getAttribute("topstoreAllinfolist");
		
	
		%>
	
	
		<div class="container"> 
			<div class="card2" style=";">
				<%if(top5Infolist != null){
					int size = top5Infolist.size();
					StoreVO top1store = top5Infolist.get(0);
					%>
					<div  style="width:100%; margin-left:auto; margin-right: auto;">
						<%-- <div style="background-color: red; height:100%; width:30%; float: left;">
							<img src="/webproject/images/shop_images/<%=detail.getShop_img()%>" style="width : 95%"/>
						</div> --%>
						
						
						<div class="row No1storecard">
						
							<div style="  width:33%; ">
								<a href="/webproject/shop/shop_detail.do?str_code=<%=top1store.getStr_code()%>">
									<img src="/webproject/images/shop_images/<%=top1store.getShop_img()%>" class="card-img-top" alt="..." style="height : 270px; margin-top: 10px;"/>
								</a>
								<div class="card-body" style="text-align: center;">
									   <p class="card-text"><h3><%=top1store.getStorename() %></h3></p>
								</div>
							</div>
								
								
							<div style="width:67%; margin-left: 0%">
								
								<div style="  width:100%; margin-top: 30px; ">
									<div style="text-align: center;">
										<p class="card-text"><h2><%=categoryandarea.getArea()%></h2></p>
										<p class="card-text"><h1>NO.1 <%=categoryandarea.getCategory()%> 수선 맛집!</h1></p>
									</div>
									<div style=" width:90%; margin-left:auto; margin-right:auto; margin-top: 30px;">
										<p class="card-text"><h4>상호: <%=top1store.getStorename() %></h4></p>
										<p class="card-text"><h4>주소: <%=top1store.getAddr() %></h4></p>
										<p class="card-text"><h4>전화번호: <%=top1store.getTel_num() %></h4></p>
										<p class="card-text"><h4>영업 시간: <%=top1store.getTime() %></h4></p>
										<%-- <p class="card-text"><h4>평균 별점: <%=top1store.getScore() %>점</h4></p> --%>
									</div>
								</div>
							</div>
						
						</div>
						
					</div>
					
					
					<div class="row">
					
						<%for(int i=1; i<size; i++){
							StoreVO topstores = top5Infolist.get(i);
							
							%>
								<div class=" col-sm-6" >
									<div class="row secondstorebox">
										<div style="  width:65%; ">
											<a href="/webproject/shop/shop_detail.do?str_code=<%=topstores.getStr_code()%>">
												<img src="/webproject/images/shop_images/<%=topstores.getShop_img()%>" class="card-img-top" alt="..." style="height : 250px; margin-top: 10px;"/>
											</a>
											<div class="card-body" style="text-align: center;">
												   <p class="card-text"><h3><%=topstores.getStorename() %></h3></p>
											</div>
										</div>
											
											
										<div style="width:35%; margin-left: 0%">
											
											<div style="  width:100%; margin-top: 50px; ">
												<div style="text-align: center;">
													<div style="margin-top: 150px;"><h2>NO.<%=i+1%></h2></div>
												</div>
												
												<%-- <p class="card-text"><h4>평균 별점: <%=topstores.getScore() %>점</h4></p> --%>
											</div>
										</div>
									</div>
								</div>
						<%}%>
						
					</div>
					<%}else{%>
					<div style="height:200px;">
						<div style="margin-top: 150px; text-align: center;">
							<h1>조회된 목록이 없습니다.</h1>
						</div>
					</div>
						
					
					<%} %>
			</div>
			
			
		 </div>
		 
		 
 
		 
		 
	</body> 


</html>