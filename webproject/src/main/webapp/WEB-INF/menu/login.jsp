<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

  <head>
  <%
	Cookie[] cookies = request.getCookies();
	String email = "";
	if(cookies!=null){
		for(int i=0;i<cookies.length;i++){
			if(cookies[i].getName().equals("email")){
				email = cookies[i].getValue();
			}
		}
	}
%>
  
  <style type="text/css">
  *{
  margin: 0px;
  padding: 0px;
  text-decoration: none;
  font-family:sans-serif;

}

.loginForm {
  position:absolute;
  width:300px;
  height:400px;
  padding: 30px, 20px;
  background-color:#FFFFFF;
  text-align:center;
  top:50%;
  left:50%;
  transform: translate(-50%,-50%);
  border-radius: 15px;
}

.loginForm h2{
  text-align: center;
  margin: 30px;
}

.idForm{
  border-bottom: 2px solid #adadad;
  margin: 30px;
  padding: 10px 10px;
}

.passForm{
  border-bottom: 2px solid #adadad;
  margin: 30px;
  padding: 10px 10px;
}

.id {
  width: 100%;
  border:none;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
}

.pw {
  width: 100%;
  border:none;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
}

.btn {
  position:relative;
  left:40%;
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
.bottomText {
  text-align: center;
}
 	 </style>
  </head>

  <body width="100%" height="100%"; style="background-color:  #999ECB;">
  
    <form action="/webproject/menu/login.do" method="post" class="loginForm">
      <h2>Login</h2>
      <div class="idForm">
        <input type="text" name="email" class="email" placeholder=" email" value="<%= email%>">
      </div>
      <div class="passForm">
        <input type="password" name="pass" class="pass" placeholder=" pass" >
      </div>
      
      <button type="submit" class="btn" onclick="button()" value="LOG IN">
        LOG IN
      </button>
      
       <button type="submit" class="btn" onclick="button()" value="LOG OUT">
        LOG OUT 
      </button>
      
      
      <!-- ========================================== -->
     <div  onclick="kakaoLogin();"> 
     	<a id="custom-login-btn" href="javascript:loginWithKakao()">
    		<img src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg" width="222" /> 
    	</a>
    </div>
    
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script> 

<script>
	// 카카오로그인
	Kakao.init('99295f8e9f602f0a5c6e8475da68ab33');
	console.log(Kakao.isInitialized()); // sdk초기화여부판단
	function kakaoLogin() {
		Kakao.Auth.login({
			success: function (response) {
				Kakao.API.request({
					url: '/v2/user/me',
					success: function (response) {
						// 유저 아이디, 이메일 주소, 이름을 Session에 저장
						sessionStorage.setItem("user_info", response.id);
						sessionStorage.setItem("kakao_nickname", response.kakao_account.profile.nickname);
						sessionStorage.setItem("kakao_birthday", response.kakao_account.birthday);
						sessionStorage.setItem("kakao_email", response.kakao_account.email);
						sessionStorage.setItem("kakao_gender", response.kakao_account.gender);
						
						// 네이버 로그인과 카카오 로그인을 구분하기 위해 별도의 세션을 저장
						sessionStorage.setItem("kinds","kakao"); 
						
						console.log(response);
					},
					fail: function (error) {
						console.log(error)
					},
				})
			},
			fail: function (error) {
				console.log(error)
			},
		})
	}
</script><hr>
      
      <div class="bottomText">
        아직 회원이 아니신가요? <a href="/webproject/joinPage.do">가입하기</a>
      </div>
      <div class="bottomText">
        업체 등록 및 가입 <a href="/webproject/shop_joinPage.do">가입하기</a>
      </div>
       <div class="bottomText">
        업체 로그인 <a href="/webproject/shop_loginpage.do">로그인</a>
      </div>
    </form>
    
  </body>
</html>