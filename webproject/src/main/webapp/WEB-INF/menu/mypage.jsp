<%@page import="multi.erp.users.usersVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function(){
		if(${msg ne null}){
			alert('${msg}');
		};
		
		if($("#pwForm").submit(function(){
			if($("#pass").val() !== $("#pass2").val()){
				alert("비밀번호가 다릅니다.");
				$("#pass").val("").focus();
				$("#pass2").val("");
				return false;
			}else if ($("#pass").val().length < 4) {
				alert("비밀번호는 4자 이상으로 설정해야 합니다.");
				$("#pass").val("").focus();
				return false;
			}else if($.trim($("#pass").val()) !== $("#pass").val()){
				alert("공백은 입력이 불가능합니다.");
				return false;
			}
		}));
	})
	
	<% 
			usersVO user =(usersVO) request.getAttribute("loginOkUser");
		%>
</script>
<title>마이페이지</title>
</head>
<body>
	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4" style="margin-top: 150px">
			<div class="w3-center w3-large w3-margin-top">
				<h3>My Page</h3>
			</div>
			<div>
				<form id="myForm" action="/webproject/menu/update_mypage.do" method="post">
				<p>
						<label>NAME</label> 
						<input class="w3-input" type="text" id="name" name="name"  value="<%= user.getName() %>" required> 
					</p>
					<p>
						<label>NICKNAME</label> 
						<input class="w3-input" type="text" id="nickname" name="nickname"  value="$<%= user.getNickname() %>" required> 
					</p>
					<p>
						<label>Email</label> 
						<input class="w3-input" type="text" id="email" name="email" value="<%= user.getEmail() %>" required> 
					</p>
					<p>
						<label>ADDR</label> 
						<input class="w3-input" type="text" id="addr" name="addr" value="<%= user.getAddr() %>" required> 
					</p>
					<p>
						<label>PHONE</label> 
						<input class="w3-input" type="text" id="phone" name="phone" value="<%= user.getPhone() %>" required> 
					</p>
					
					<p class="w3-center">
						<button type="submit" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">회원정보 변경</button>
					</p>
				</form>
				<br />
				<form id="pwForm" action="/webproject/menu/update_pass.do" method="post">	
					<input type="hidden" name="email" value="${ usersVO.email }">
					<p>
						<label>Password</label>
						<input class="w3-input" id="old_pass" name="old_pass" type="password" required>
					</p>
					<p>
						<label>New Password</label> 
						<input class="w3-input" id="pass" name="pass" type="password" required>
					</p>
					<p>
						<label>Confirm</label>
						<input class="w3-input" id="pass2" name="pass2" type="password" required>
					</p>
					<p class="w3-center">
						<button type="submit" id="joinBtn" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">비밀번호 변경</button>
					</p>
				</form>
			</div>
		</div>
	</div>
</body>
</html>