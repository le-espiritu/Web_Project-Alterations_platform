<%@page import="multi.webproject.map.StoreVO"%>
<%@page import="java.util.ArrayList"%>
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
	
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="description" content="">
		<meta name="keywords" content="">
		
		<link rel="stylesheet" href="static/common/css/bootstrap.min.css">
		<link rel="stylesheet" href="static/common/css/font-awesome.min.css">
		
		<!-- Main css -->
		<link rel="stylesheet" href="static/common/css/style.css">
		<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">
				
		
	    <style>

			.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
			.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
			.map_wrap {position:relative;width:100%;height:500px;}
			#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
			.bg_white {background:#fff;}
			#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
			#menu_wrap .option{text-align: center;}
			#menu_wrap .option p {margin:10px 0;}  
			#menu_wrap .option button {margin-left:5px;}
			#placesList li {list-style: none;}
			#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
			#placesList .item span {display: block;margin-top:4px;}
			#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
			#placesList .item .info{padding:10px 0 10px 55px;}
			#placesList .info .gray {color:#8a8a8a;}
			#placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
			#placesList .info .tel {color:#009900;}
			#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
			#placesList .item .marker_1 {background-position: 0 -10px;}
			#placesList .item .marker_2 {background-position: 0 -56px;}
			#placesList .item .marker_3 {background-position: 0 -102px}
			#placesList .item .marker_4 {background-position: 0 -148px;}
			#placesList .item .marker_5 {background-position: 0 -194px;}
			#placesList .item .marker_6 {background-position: 0 -240px;}
			#placesList .item .marker_7 {background-position: 0 -286px;}
			#placesList .item .marker_8 {background-position: 0 -332px;}
			#placesList .item .marker_9 {background-position: 0 -378px;}
			#placesList .item .marker_10 {background-position: 0 -423px;}
			#placesList .item .marker_11 {background-position: 0 -470px;}
			#placesList .item .marker_12 {background-position: 0 -516px;}
			#placesList .item .marker_13 {background-position: 0 -562px;}
			#placesList .item .marker_14 {background-position: 0 -608px;}
			#placesList .item .marker_15 {background-position: 0 -654px;}
			#pagination {margin:10px auto;text-align: center;}
			#pagination a {display:inline-block;margin-right:10px;}
			#pagination .on {font-weight: bold; cursor: default;color:#777;}

	    	body {
		 		padding-top: 3rem;
				padding-bottom: 3rem;
		  		color: #5a5a5a;
			}
		
			.container-fluid{
				height: 50px;
			}
			
			#btn1{
				margin-right:20px;
			}
			
			
			
			
			/* ======top5 박스들 css========= */
			.tob-box{
				height: 300px;
				/* background-color: #22507f; */
				/* background: linear-gradient(125deg,#81ecec,#6c5ce7,#81ecec); */
				background: linear-gradient(90deg, #81ecec,#6c5ce7, #020D42, #020D42, #020D42);
				background-position: right;
				background-size: 200%;
				cursor:pointer;
				transition: 0.4s;
				margin-top : 20px;
				text-align: center;
				/* border: 7px solid yellow; */
				border-radius: 2em; 
				
				
				
			}
				
				
			.tob-box:hover {
	 			 background-position: left;
	 			 /* border: 10px solid #67930F; */
	 			 width:100%;
			}
			/* ======top5 박스들 css========= */
	
				
				
				
			p {
			    display: inline-block;
	    		margin-top: 70px;
	    		color: white;
	    		font-size: 40pt;
			}
		
	    </style>
	  </head>
	<body>
		
		
	
		<main>
			<div style="height: 20px"> </div>
			<div style="text-align: center; margin-top: 20px; margin-bottom: 20px;">
				<h2>지금 근처의 가장 솜씨 좋은 수선집을 한눈에 확인하세요!</h2>
			</div>
			
			
			
			<div id="map" style="width:100%;height:400px;"></div>
			
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=185df546e900ad892d94d8c8eb58456c&libraries=services"></script>
			<script>
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				    mapOption = { 
				        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
				        level: 4 // 지도의 확대 레벨 
				    }; 
				
				var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
				
				// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
				if (navigator.geolocation) {
				    
				    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
				    navigator.geolocation.getCurrentPosition(function(position) {
				        
				        var lat = position.coords.latitude, // 위도
				            lon = position.coords.longitude; // 경도
				        
				        var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
				            message = '<div style="padding:5px;">★★현재위치★★.</div>'; // 인포윈도우에 표시될 내용입니다
				        
				        // 마커와 인포윈도우를 표시합니다
				        displayMarker(locPosition, message);
				            
				            
				            
				        //------------------주소로 지도에 업체 표시하기-------------------------
				       
				        var storeaddrs=[
				        	['경기 안양시 동안구 관악대로 183','정가네옷수선'],
				        	['경기 안양시 동안구 관악대로 167','대림수선'],
				        	['경기 안양시 동안구 관악대로 267','목련옷수선'],
				        	['서울 강남구 테헤란로77길 55','수선마루'],
				        	['서울 강남구 테헤란로64길 9 대우선릉아이빌 206호','명품수선'],
				        	['서울 강남구 선릉로 574','백투백명품가방수선 '],
				        	['서울 강남구 삼성로100길 23-16','한마음옷수선'],
				        	['서울 강남구 테헤란로 323 휘닉스빌딩 지하 26호','던힐명품수선'],
				        	['서울 강남구 삼성로115길 45','맞춤명품수선'],
				        	['서울 강남구 봉은사로78길 34','은이네수선'],
				        	['서울 강남구 영동대로114길 10','그린세탁명품옷수선'],
				        	['서울 강남구 봉은사로57길 18 1층','은희네명품옷수선 '],
				        	['서울 강남구 영동대로112길 10','수선마루'],
				        	['서울 강남구 삼성로119길 41','뉴제일옷수선'],
				        	['서울 강남구 테헤란로 517','현대의류수선'],
				        ]
				        
				        for(var i=0; i<storeaddrs.length; i++){
				        	var geocoder = new kakao.maps.services.Geocoder();
				        	
						     // 주소로 좌표를 검색합니다
						     geocoder.addressSearch(storeaddrs[i][0], function(result, status) {
			
						         // 정상적으로 검색이 완료됐으면 
						          if (status === kakao.maps.services.Status.OK) {
			
						             var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
			
						             // 결과값으로 받은 위치를 마커로 표시합니다
						             var marker = new kakao.maps.Marker({
						                 map: map,
						                 position: coords
						             });
						             
						          // 마커에 커서가 오버됐을 때 마커 위에 표시할 인포윈도우를 생성합니다
						             var iwContent = '<div style="padding:5px;">수선!</div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다

						             // 인포윈도우를 생성합니다
						             var infowindow = new kakao.maps.InfoWindow({
						                 content : iwContent
						             });

						             // 마커에 마우스오버 이벤트를 등록합니다
						             kakao.maps.event.addListener(marker, 'mouseover', function() {
						               // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
						                 infowindow.open(map, marker);
						             });

						             // 마커에 마우스아웃 이벤트를 등록합니다
						             kakao.maps.event.addListener(marker, 'mouseout', function() {
						                 // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
						                 infowindow.close();
						             });

			
						             // 인포윈도우로 장소에 대한 설명을 표시합니다
						             /* var infowindow2 = new kakao.maps.InfoWindow({
						                 content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
						             });
						             infowindow2.open(map, marker); */
			
						             
						         } 
						     });
				        }
				             
					   //------------------------------------------------------------- 
				            
				            
				            
				      });
				    
				} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
				    
				    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667),    
				        message = 'geolocation을 사용할수 없어요..'
				        
				    displayMarker(locPosition, message);
				}
				
				// 지도에 마커와 인포윈도우를 표시하는 함수입니다
				function displayMarker(locPosition, message) {
				
				    // 마커를 생성합니다
				    var marker = new kakao.maps.Marker({  
				        map: map, 
				        position: locPosition
				    }); 
				    
				    var iwContent = message, // 인포윈도우에 표시할 내용
				        iwRemoveable = true;
				
				    // 인포윈도우를 생성합니다
				    var infowindow = new kakao.maps.InfoWindow({
				        content : iwContent,
				        removable : iwRemoveable
				    });
				    
				    // 인포윈도우를 마커위에 표시합니다 
				    infowindow.open(map, marker);
				    
				    // 지도 중심좌표를 접속위치로 변경합니다
				    map.setCenter(locPosition);      
				}    
			</script>
			<!-- ===================지도======================= -->
			
			
			
			
			
			
			
			<div style="text-align: center; padding-top: 15px" >
				<form action="/webproject/map/area_list.do" method="post">
					<input type="text"  name="area" placeholder="주소로 검색하세요" onfocus="this.value=''" style="height: 40px;width: 350px; text-align: center; color : gray">
					<input type="submit" value="검색" style="height: 40px;">
				</form>
			</div>
			
			
			
			
			<div style="margin-top: 15px; padding-botoom: 15px; background-color: #020D42">
				<div class="container" >
				
					<div class="row" >
						<div class="col-lg-3">
							<div class="tob-box"> 
								<a href="/webproject/shop/shop_top5.do?category=pants"><p>바지수선 TOP5</p> </a>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="tob-box"> 
								<a href="/webproject/shop/shop_top5.do?category=shirts"><p>셔츠수선 TOP5</p> </a>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="tob-box"> 
								<a href="/webproject/shop/shop_top5.do?category=suit"><p>정장수선 TOP5</p> </a>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="tob-box"> 
								<a href="/webproject/shop/shop_top5.do?category=outer"><p>아우터수선 TOP5</p> </a>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="tob-box"> 
								<a href="/webproject/shop/shop_top5.do?category=jeans"><p>청바지수선 TOP5</p> </a>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="tob-box"> 
								<a href="/webproject/shop/shop_top5.do?category=skirt"><p>치마수선 TOP5</p> </a>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="tob-box"> 
								<a href="/webproject/shop/shop_top5.do?category=dress"><p>원피스수선 TOP5</p> </a>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="tob-box"> 
								<a href="/webproject/shop/shop_top5.do?category=reform"><p>리폼 TOP5</p> </a>
							</div>
						</div>
					</div>
					
				</div>
			</div>
			
			
			
		</main>
		
	
	</body>
</html>