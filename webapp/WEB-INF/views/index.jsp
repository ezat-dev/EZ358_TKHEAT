<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">	
<title>(주)태경열처리</title>

<!-- 사이드바 템플릿 사용--> 
<script type="text/javascript" src="/tkheat/js/jquery.min.js"></script>
<script type="text/javascript" src="/tkheat/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/tkheat/css/bootstrap.min.css" />

<!-- 제이쿼리홈페이지 js -->
<script type="text/javascript" src="/tkheat/js/jquery.js"></script>

<!-- 모달 -->
<script type="text/javascript" src="/tkheat/js/jquery.modal.js"></script>
<link rel="stylesheet" href="/tkheat/css/jquery.modal.css" />

<jsp:include page="include/pluginpage.jsp"/>

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
		
	<!-- alert다이얼로그 두줄 -->
	<div style="display:none;" id="alert3-form" title="확인창">
		<span id="alert3Span1" style="display:block;"></span>
		<span id="alert3Span2" style="display:block;"></span>
	</div>
		
	<!-- alert다이얼로그 두줄 -->
	<div style="display:none;" id="alert4-form" title="확인창">
		<span id="alert4Span1" style="display:block;"></span>
		<span id="alert4Span2" style="display:block;"></span>
	</div>

	<header>
		<jsp:include page="include/header.jsp"/>
	</header>
	
	<!-- alert다이얼로그 한줄 -->
	<div style="display:none;" id="alert-form" title="확인창">
		<span id="alertSpan"></span>
	</div>
	
	<!-- alert다이얼로그 한줄 -->
	<div style="display:none;" id="alert2-form" title="확인창">
		<span id="alert2Span1" style="display:block;"></span>
		<span id="alert2Span2" style="display:block;"></span>
	</div>

	<div class="container-fluid">
		<div class="d-flex align-items-center" style="height:70vh;">
			<div class="col-md-4"></div>
		    <div class="col-xs-9 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-2">
				<form role="form" id="loginForm" class="form-horizontal"  autocomplete="off">
					<fieldset>
						<h2 class="text-center">로 그 인</h2>
						<hr class="colorgraph">
							
						<div class="form-group">
							<label for="user_id" class="control-label col-xs-3">아이디</label>
							<div class="col-xs-9">
								<input type="text" name="user_id" id="user_id" class="form-control input-lg">
							</div>		                    
						</div>
							
							
						<div class="form-group">
							<label for="user_pw" class="control-label col-xs-3">비밀번호</label>
							<div class="col-xs-9">
								<input type="password" name="user_pw" id="user_pw" class="form-control input-lg"
								 autocomplete="off" onkeypress="cpas_lock(event);">
							</div>
						<p id="capslock" style="position:relative; border:2px solid #003b83; width:300px; bottom:0px; display:none"> 
						    &nbsp;<b>CapsLock</b> 키가 눌려있습니다.&nbsp;
						</p>
						
						</div>
						 
						<hr class="colorgraph">
						<div class="row">
							<div class="col-xs-6 col-sm-6 col-md-6">
		                        <button type="button" class="btn btn-lg btn-success btn-block"
		                        onclick="login();">로그인</button>
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

	//비밀번호 정규표현식
	var check = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{9,12}$/;


//이벤트
	$("#user_id").keydown(function(e){
		if(e.keyCode == 13){
			login();
		}
	});

	$("#user_pw").keydown(function(e){
		if(e.keyCode == 13){
			login();
		}
	});

//함수

	function cpas_lock(e){
        var keyCode = 0;
        var shiftKey = false;
        keyCode = e.keyCode;
        shiftKey = e.shiftKey;
        if (((keyCode >= 65 && keyCode <= 90) && !shiftKey)
                || ((keyCode >= 97 && keyCode <= 122) && shiftKey)) {
            show_caps_lock();
            setTimeout("hide_caps_lock()", 3500);
        } else {
            hide_caps_lock();
        }		
	}

	 
    function show_caps_lock() {
         $("#capslock").show();
    }
 
    function hide_caps_lock() {
         $("#capslock").hide();
    }	

	//로그인
	function login(){
		var id = $("#user_id").val();
		var pw = $("#user_pw").val();
		//console.log("클릭 : " + id + " / " + pw);

		$.ajax({
			url:"/tkheat/user/login",
			type:"post",
			data:{"user_id":id, "user_pw":pw},
			success:function(result){
				if(result == "fail"){
//					modal_alert();


					$("#alert-form").dialog("option","title","로그인 확인!");
					$("#alertSpan").text("아이디 또는 비밀번호를 확인해주십시오!");
					alertDialog.dialog("open");
					return;
					
				}else{
					location.href=result;
/*
					if(!check.test(pw)) { 
						// 처리할 문장						
						$("#alert3-form").dialog("option","title","비밀번호 정책변경");
						$("#alert3Span1").text("숫자, 문자, 특수문자를 포함하여 ");
						$("#alert3Span2").text("9~12자리로 입력해주시기 바랍니다.");
						alert3Dialog.dialog("open");

						return;
					}else{
						
					}
*/
				}
			}
		});
		
	}


	var alertDialog;
	
	alertDialog = $("#alert-form").dialog({
	  autoOpen: false,
	  height: 200,
	  width: 400,
	  modal: false,
      open: function(event, ui){
    	$('#alert-form .ui-dialog').css('zIndex', 20032);
  		$("#alert-form").dialog("option", "height", 200 );
		$("#alert-form").dialog("option", "width", 400 );				
      },
	  buttons: {
	        "확 인": function(){
     			alertDialog.dialog("close");
	        }
		  }
	});	



	var alert3Dialog;
	
	alert3Dialog = $("#alert3-form").dialog({
	  autoOpen: false,
	  height: 220,
	  width: 400,
	  modal: false,
      open: function(event, ui){
    	$('#alert3-form .ui-dialog').css('zIndex', 20030);
    	$("#alert3-form").dialog("option", "height", 220 );
    	$("#alert3-form").dialog("option", "width", 400 );				
      },
	  buttons: {
		  	"변 경": function(){
			  alert3Dialog.dialog("close");
			  //수정하는 다이얼로그가 열리도록
			  //아이디는 자동표시, 현재비밀번호 입력, 변경할 비밀번호 입력
			  //현재 아이디, 비밀번호가 일치할 경우에만 변경할 비밀번호 적용
			  $("#n_id").val($("#u_id").val());
			  pwChangeModalDialog.dialog("open");
			},
	        "닫 기": function(){
     			alert3Dialog.dialog("close");
	        }
		  }
	});		


	var alert4Dialog;
	
	alert4Dialog = $("#alert4-form").dialog({
	  autoOpen: false,
	  height: 220,
	  width: 400,
	  modal: false,
      open: function(event, ui){
    	$('#alert4-form .ui-dialog').css('zIndex', 20035);
    	$("#alert4-form").dialog("option", "height", 220 );
    	$("#alert4-form").dialog("option", "width", 400 );				
      },
	  buttons: {
	        "닫 기": function(){
     			alert4Dialog.dialog("close");
	        }
		  }
	});		
	

	var pwChangeModalDialog;
	pwChangeModalDialog = $("#pwChangeModal").dialog({
		title:"비밀번호 변경",		
		autoOpen: false,
		stack: true,
     	open: function(event, ui){
    		$("#pwChangeModal").dialog("option", "height", 350 );
    		$("#pwChangeModal").dialog("option", "width", 500 );				
      	},
		height: 250,
		width: 450,	      
		buttons: {
	        "적 용": function() {

				var n_id = $("#n_id").val();	//현재 아이디
				var n_pw = $("#n_pw").val();	//현재 비밀번호
				var c_pw = $("#c_pw").val();	//변경할 비밀번호

				if(!check.test(c_pw)) { 
					// 처리할 문장						
					$("#alert4-form").dialog("option","title","비밀번호 복잡도 체크");
					$("#alert4Span1").text("숫자, 문자, 특수문자를 포함하여 ");
					$("#alert4Span2").text("9~12자리로 입력해주시기 바랍니다.");
					alert4Dialog.dialog("open");

					return;
				}

				$.ajax({
					url:"/info/userPwChange",
					type:"post",
					dataType:"json",
					data:{
						"n_id":n_id,
						"n_pw":n_pw,
						"c_pw":c_pw},
					success:function(result){
						if(result.r_str == "fail"){
							$("#alert-form").dialog("option","title","비밀번호 확인!");
							$("#alertSpan").text("현재 비밀번호를 확인해주십시오!");
							alertDialog.dialog("open");
							
						}else{

							pwChangeModalDialog.dialog("close");
							
							$("#alert-form").dialog("option","title","비밀번호 변경완료!");
							$("#alertSpan").text("변경한 비밀번호로 로그인 해주십시오!");
							alertDialog.dialog("open");

						}
					}
				});

	        },       
    		"닫 기": function() {
    			pwChangeModalDialog.dialog("close");
    		}
      	},
      	close: function() {
      		pwChangeModalDialog.dialog("close");
      	}
	});
	
</script>
</body>
</html>