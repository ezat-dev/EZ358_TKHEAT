<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">	
<title>금구 웹페이지</title>

<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css" >
 
<!-- 모달 -->
<script type="text/javascript" src="js/jquery.modal.js"></script>
<link rel="stylesheet" href="css/jquery.modal.css" >


<style>
/*로그인 스타일*/
	.colorgraph {
	  height: 5px;
	  border-top: 0;
	  background: #c4e17f;
	  border-radius: 5px;
	  background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	  background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	  background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	  background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	}

/*회원가입 스타일*/
	.help-block{
    	color:#b94a48;
    }
</style>
</head>
<body>
	
	<div class="container">
		<div class="row" style="margin-top:20px">
		    <div class="col-xs-9 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
				<form role="form" id="loginForm" class="form-horizontal">
					<fieldset>
						<h2 class="text-center">로 그 인</h2>
						<hr class="colorgraph">
							
						<div class="form-group">
							<label for="u_id" class="control-label col-xs-3">아이디</label>
							<div class="col-xs-9">
								<input type="text" name="u_id" id="u_id" class="form-control input-lg">
							</div>		                    
						</div>
							
							
						<div class="form-group">
							<label for="u_pw" class="control-label col-xs-3">비밀번호</label>
							<div class="col-xs-9">
								<input type="password" name="u_pw" id="u_pw" class="form-control input-lg">
							</div>		                    
						</div>
						
						<!-- 비밀번호 저장 
						<span class="button-checkbox">
							<button type="button" class="btn" data-color="info">Remember Me</button>
		                    <input type="checkbox" name="remember_me" id="remember_me" checked="checked" class="hidden">
							<a href="" class="btn btn-link pull-right">Forgot Password?</a>
						</span>
						 -->
						 
						<hr class="colorgraph">
						<div class="row">
							<div class="col-xs-6 col-sm-6 col-md-6">
		                        <input type="button" class="btn btn-lg btn-success btn-block"
		                        onclick="login();" 
		                        value="로그인">
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>	
	
<script>
//전역변수	
	var _modal;


//이벤트

	
//함수

	//로그인
	function login(){
		var id = $("#u_id").val();
		var pw = $("#u_pw").val();

		$.ajax({
			url:"/info/login",
			type:"post",
			data:{u_id:id, u_pw:pw},
			success:function(result){
				if(result == "fail"){
					modal_alert();
				}else if(result == "success"){
					location.href="/info/userRegister";
				}
			}
		});
	}


	//회원가입
	function signUp(){
//		console.log("등장");

		
		
		var form = $("#signUp_form")[0];
		var id = form.signUp_id.value;
		var pw = form.signUp_pw.value;
		var name = form.signUp_name.value;
		var phone = form.signUp_phone.value;

		if(!_idCheck && !_pwCheck){
			return;
		}else{
			$.ajax({
				url:"/info/userRegister",
				type:"post",
				data:{
					u_id:id, u_pw:pw,
					u_name:name, u_phone:phone
					},
				success:function(result){
					modal_signUpComplete();
				}
			});
		}
	}
	
	//모달
	function modal_alert(){
		_modal = modal({
			type:"primary",
			title:"로그인 알림창",
			text:"아이디와 비밀번호를 확인해주십시오!",
			size:"small",
			autoclose:false,					//모달창이 생기고 자동으로 닫히지 않게
			closeClick:false,
			background: 'rgba(0,0,0,0.35)',
			buttons: [{
				text: '닫 기', //Button Text
				val: 'ok', //Button Value
				eKey: true, //Enter Keypress
				addClass: 'btn-light-blue btn-square', //Button Classes (btn-large | btn-small | btn-green | btn-light-green | btn-purple | btn-orange | btn-pink | btn-turquoise | btn-blue | btn-light-blue | btn-light-red | btn-red | btn-yellow | btn-white | btn-black | btn-rounded | btn-circle | btn-square | btn-disabled)
				onClick: function(argument) {
//					console.log(argument);
					_modal.close();
//					alert('Look in console!');

				}
			}, ]
		});
	}


	
</script>
</body>
</html>