<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html> 


	<head> 
		<meta charset="UTF-8"> 
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> 
		<script type="text/javascript">
		$(document).ready(function(){
	  		$("#email").on("keyup",function(){
	  			
	  			$.get("/webproject/menu/emailcheck.do", {"email":$("#email").val()}, 
	  					function(data){//data는 응답되어 오는 데이터를 자동으로 success란에 명시하는 함수의 매개변수로 전달
	  									$("#checkVal").text(data);}, "text");
	  		});
	  	});
		</script>
		
		<style> 
		body { 
		min-height: 100vh; 
		background: -webkit-gradient(linear, left bottom, right top, from(#999ECB), to(#041E50)); 
		background: -webkit-linear-gradient(bottom left, #999ECB 0%, #041E50 100%); 
		background: -moz-linear-gradient(bottom left, #999ECB 0%, #041E50 100%); 
		background: -o-linear-gradient(bottom left, #999ECB 0%, #041E50 100%); 
		
		background: linear-gradient(to top right, #999ECB 0%, #041E50 100%); } /* 이게 작동함 */
		
		.input-form {
		 max-width: 680px; 
		
		margin-top: 120px;
		 
		padding: 32px; 
		
		background: #fff; 
		-webkit-border-radius: 10px; 
		-moz-border-radius: 10px; 
		border-radius: 10px; 
		-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
		 -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15); 
		box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15) 
		} 
		
		
		.btn {
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
		
		
		</style> 
	</head> 
	
	<body> 
	<form role="form" class="form-horizontal" action="/webproject/menu/join.do" method="POST" name="myform">
		<div class="container"> 
			<div class="input-form-backgroud row"> 
				<div class="input-form col-md-12 mx-auto"> 
					<h4 class="mb-3">회원가입</h4> 
						<div class="row"> 
							<div class="col-md-6 mb-3"> 
								<label for="name">이름</label> 
								<input type="text" class="form-control" id="name" for="name" name="name" placeholder="이름" ]required> 
								<div class="invalid-feedback"> 
									이름을 입력해주세요. 
								</div> 
							</div> 
							
							<div class="col-md-6 mb-3"> 
								<label for="nickname">닉네임</label> 
								<input type="text" class="form-control" id="nickname" for="nickname" name="nickname" placeholder="닉네임"  required> 
								<div class="invalid-feedback"> 
									별명을 입력해주세요. 
								</div> 
							</div> 
						</div> 
							
						<div class="mb-3"> 
							<label for="email">이메일</label> 
							<input type="email" class="form-control" id="email" for="email" name="email" placeholder="you@example.com" required> 
								<div class="invalid-feedback"> 
									이메일을 입력해주세요. 
								</div> 
								<span id="checkVal">${result}</span>
						</div> 
							
						<div class="row"> 
							<div class="col-md-6 mb-3"> 
								<label for="pass" >비밀번호</label> 
								<input type="password" class="form-control" id="pass" for="pass" name="pass" placeholder="4자리이상 입력해주세요" required> 
								<div class="invalid-feedback">
									비밀번호를 입력해주세요. 
								</div> 
							</div> 
							
							<div class="col-md-6 mb-3">
								<label for="pass2">비밀번호 확인</label>
								<input type="password" class="form-control" id="pass2" for="pass2" placeholder="동일한 비밀번호 입력" required> 
								<div class="invalid-feedback">
									비밀번호를 한번더 입력해주세요.
								</div> 
							</div> 
						</div>	
							
						<div class="mb-3"> 
							<label for="addr">주소</label> 
							<input type="text" class="form-control" id="addr" for="addr" name="addr" placeholder="서울특별시 강남구" required> 
								<div class="invalid-feedback"> 
									주소를 입력해주세요. 
								</div>
						</div> 
							
						<div class="mb-3"> 
							<label for="phone">휴대폰 번호</label>
							<input type="text" class="form-control" id="phone" for="phone" name="phone" placeholder="휴대폰 번호를 입력해주세요." required>
							<div class="invalid-feedback"> 
								휴대폰 번호를 입력해주세요
								</div>
						</div> 
							
						 
						<hr class="mb-4">
						<div class="custom-control custom-checkbox"> 
							<input type="checkbox" class="custom-control-input" id="aggrement" required> 
							<label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label> 
						</div> 
						
						<div class="mb-4"></div> 
						<button class="btn btn-primary btn-lg btn-block" type="submit">가입 완료</button>
					
				</div>
			</div> 
			
		 </div>
		 </form>
		 
		 <script>
			 window.addEventListener('load', () => {
			 const forms = document.getElementsByClassName('validation-form');
			
			 Array.prototype.filter.call(forms, (form) => {
			  form.addEventListener('submit', function (event) {
			  if (form.checkValidity() === false) { 
			 event.preventDefault();
			 event.stopPropagation();
			 } 
			
			
			form.classList.add('was-validated');
			 }, false);
			 });
			 }, false);
		 </script> 
		 
	</body> 


</html>