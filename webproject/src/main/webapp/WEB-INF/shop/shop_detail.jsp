<%@page import="multi.webproject.review.reviewVO"%>
<%@page import="java.util.List"%>
<%@page import="multi.webproject.map.StoreVO"%>
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
			
			.storecard{
				 
				   /*  border: 1px solid transparent;
				    border-radius: 10px;
				    background-image: linear-gradient(white, white), linear-gradient(to right, #fbfcb9be, #ffcdf3aa, #65d3ffaa);
				    background-origin: border-box;
				    background-clip: content-box, border-box; */
				    height:370px;
				    box-sizing: border-box; 
				    border: 5px; 
				    border-style: solid; 
				    border-image: linear-gradient(#e66465, #9198e5); 
				    border-image-slice: 1;

			
			}
			.writereview{
				border : 2px solid #D2D2D2; 
				border-radius: 10px;  
				width:100%; height: 300px; 
				margin-left:auto; margin-right: auto; 
				margin-top: 20px; padding-bottom: 250px;
			}
			.reviewlist{
				/* border : 2px solid #D2D2D2; 
				border-radius: 10px; */
				width:100%; /* height: 500px;  */
				margin-left:auto; margin-right: auto; 
				margin-top: 20px;
			}
			
			
			
			
			
			
		
		
		
		
			.star-rating {
				  display: flex;
				  flex-direction: row-reverse;
				  font-size: 2rem;
				  line-height: 2.5rem;
				  justify-content: space-around;
				  padding: 0 0.2em;
				  text-align: right;
				  width: 5em;
				}
				 
				.star-rating input {
				  display: none;
				}
				 
				.star-rating label {
				  -webkit-text-fill-color: transparent; /* Will override color (regardless of order) */
				  -webkit-text-stroke-width: 2.3px;
				  -webkit-text-stroke-color: #2b2a29;
				  cursor: pointer;
				}
				 
				.star-rating :checked ~ label {
				  -webkit-text-fill-color: gold;
				}
				 
				.star-rating label:hover,
				.star-rating label:hover ~ label {
				  -webkit-text-fill-color: #fff58c;
				}
				
				
				.star-ratings {
					  color: #aaa9a9; 
					  position: relative;
					  unicode-bidi: bidi-override;
					  width: max-content;
					  -webkit-text-fill-color: transparent; /* Will override color (regardless of order) */
					  -webkit-text-stroke-width: 1.3px;
					  -webkit-text-stroke-color: #2b2a29;
					}
					 
					.star-ratings-fill {
					  color: #fff58c;
					  padding: 0;
					  position: absolute;
					  z-index: 1;
					  display: flex;
					  top: 0;
					  left: 0;
					  overflow: hidden;
					  -webkit-text-fill-color: gold;
					}
					 
					.star-ratings-base {
					  z-index: 0;
					  padding: 0;
					}
		
		
		
		
		
		
		
		/* .btn {
		  position:relative;
		  left:50%;
		  transform: translateX(-50%);
		  margin-bottom: 40px;
		  width:100%;
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
		} */
		
		
		
		
		</style> 
	</head> 
	
	<body> 
		<script>
			
		</script>
		<% ArrayList<StoreVO> detaillist= (ArrayList<StoreVO>) request.getAttribute("detaillist");
		StoreVO detail = detaillist.get(0);
		
		ArrayList<reviewVO> reviewlist = (ArrayList<reviewVO>) request.getAttribute("reviewlist");
		int size = reviewlist.size();
		
		//int avgscore = (int)request.getAttribute("avgscore");
		request.getAttribute("avgscore");
		//System.out.println(request.getAttribute("avgscore"));
		%>
	
	
		<div class="container"> 
			<div class="card2" style=";">
				
					<div class="row" style="width:100%; margin-left:auto; margin-right: auto;">
						<%-- <div style="background-color: red; height:100%; width:30%; float: left;">
							<img src="/webproject/images/shop_images/<%=detail.getShop_img()%>" style="width : 95%"/>
						</div> --%>
						
						
						<div class="storecard" style="  width:30%; ">
								
							<img src="/webproject/images/shop_images/<%=detail.getShop_img()%>" class="card-img-top" alt="..." style="height : 250px; margin-top: 10px;"/>
								
							<div class="card-body" style="text-align: center;">
								   <p class="card-text"><h3><%=detail.getStorename() %></h3></p>
							</div>
						</div>
							
							
						<div class="storecard" style="width:68%; margin-left: 2%">
							
							<div style="  width:100%; margin-top: 50px; ">
								<div style="text-align: center;">
									<p class="card-text"><h5>스토어 정보</h5></p>
								</div>
								<div style=" width:90%; margin-left:auto; margin-right:auto; margin-top: 30px;">
									<p class="card-text"><h4>상호: <%=detail.getStorename() %></h4></p>
									<p class="card-text"><h4>주소: <%=detail.getAddr() %></h4></p>
									<p class="card-text"><h4>전화번호: <%=detail.getTel_num() %></h4></p>
									<p class="card-text"><h4>영업 시간: <%=detail.getTime() %></h4></p>
									<p class="card-text"><h4>평균 별점: <%=request.getAttribute("avgscore")%>점</h4></p>
								</div>
							</div>
						</div>
					</div>
					
					<div class="writereview" >
						<!--====================별점==================================  -->
						<div style="width:100%; margin-top: 30px">
						<div style=" margin-left: 4%;"><h3>소중한 이용후기를 남겨주세요:)</h3></div>
						<form action="/webproject/review/insert.do" method="post">
							<div style="text-align: center;">
								<input type="hidden" name="id" value="jang"/>
								<input type="hidden" name="str_code" value="<%=detail.getStr_code() %>"/>
								<input type="hidden" name="area" value="<%=detail.getArea() %>"/>
								<input type="hidden" name="storeName" value="<%=detail.getStorename() %>"/>
								
								<div class="row">
									<div class="reviewcategory col-sm-3" style=" margin-left: 4%; margin-right: 38%;">
										<select name="category" class="form-control">
											<!-- <option value="바지">바지</option>
											<option value="셔츠">셔츠</option>
											<option value="정장">정장</option>
											<option value="아우터">아우터</option>
											<option value="청바지">청바지</option>
											<option value="치마">치마</option>
											<option value="원피스">원피스</option>
											<option value="리폼">리폼</option> -->
											<option value="pants">바지</option>
											<option value="shirts">셔츠</option>
											<option value="suit">정장</option>
											<option value="outer">아우터</option>
											<option value="jeans">청바지</option>
											<option value="skirt">치마</option>
											<option value="dress">원피스</option>
											<option value="reform">리폼</option>
										</select>
									</div>
									<div class="star-rating space-x-4 mx-auto">
										<input type="radio" id="5-stars" name="score" value="5" v-model="ratings"/>
										<label for="5-stars" class="star pr-4">★</label>
										<input type="radio" id="4-stars" name="score" value="4" v-model="ratings"/>
										<label for="4-stars" class="star">★</label>
										<input type="radio" id="3-stars" name="score" value="3" v-model="ratings"/>
										<label for="3-stars" class="star">★</label>
										<input type="radio" id="2-stars" name="score" value="2" v-model="ratings"/>
										<label for="2-stars" class="star">★</label>
										<input type="radio" id="1-star" name="score" value="1" v-model="ratings" />
										<label for="1-star" class="star">★</label>
									</div>
								</div>
								
								<!-- <input type="text"  name="area" placeholder="리뷰" onfocus="this.value=''" style="height: 100px;width: 95%;"> -->
								<textarea rows="5" cols="100" name="content"></textarea>
								<input type="submit" value="등록" style="height: 30px; ">
							</div>
						</form>
						</div>
						
						
						<!--====================별점==================================  -->
						
					</div>
					
					<div class="reviewlist">
						<br>
						<div style="text-align: center;"> <h5>신데델라들의 생생후기!</h5> </div>
						
						<div class="star-ratings">
							<div 
						    class="star-ratings-fill space-x-2 text-lg"
						    :style="{ width: ratingToPercent + '%' }"
							>
								<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
							</div>
							<div class="star-ratings-base space-x-2 text-lg">
								<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
							</div>
						</div>
						
						<hr>
						<%for(int i=0;i<size;i++){
							reviewVO review = reviewlist.get(i);
						%>
							<div class ="row" style="width:100%">
								<div style="width:10%; text-align: center"><%=review.getScore()%> 점 </div>
								<div style="width:55%"><%=review.getContent() %></div>
								<%-- <div style="width:20%; text-align: right;">아이디 : <%=review.getId() %> </div> --%>
								<div style="width:20%; text-align: right;">익명의 신데렐라 </div>
								<div style="width:15%; text-align: right;"><%=review.getWrite_date() %> </div>
							</div>
							<hr>
						
						<%} %>
						
						
						
					</div>
					
			</div>
			
			
		 </div>
		 
		 
 
		 
		 
	</body> 


</html>