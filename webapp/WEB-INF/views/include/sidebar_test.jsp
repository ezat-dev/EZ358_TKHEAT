<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900">
	
<!-- 사이드바 기본css -->
<link rel="stylesheet" href="/css/sidebar-css.css" />
<link rel="stylesheet" href="/css/font-awesome.min.css" />

<!-- 사이드바 템플릿 사용-->
<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/css/bootstrap.min.css" />

<!-- 제이쿼리홈페이지 js -->
<script type="text/javascript" src="/js/jquery.js"></script>

<!-- 모달 -->
<script type="text/javascript" src="/js/jquery.modal.js"></script>
<link rel="stylesheet" href="/css/jquery.modal.css">

<!-- dataTable -->
<script type="text/javascript" src="/js/datatables.min.js"></script>
<link rel="stylesheet" href="/css/datatables.min.css">


<style>
#sidebar{
	background-color:#123478;
}


.menuCloseBtn:hover{
	color:red;
}

.menuHeader{
	font-size:12pt;
	font-weight:700;
}


.menuBody{
	font-size:10pt;
	font-weight:700;
}


</style>

</head>
<body>





<!-- 
<header>
	<jsp:include page="../include/header.jsp" flush="true" />
</header>
 -->
 	
	<div class="wrapper d-flex align-items-stretch">
		
		
	<!-- 왼쪽 메뉴바 시작 -->
		<nav id="sidebar">
			<div class="custom-menu">
				<button type="button" id="sidebarCollapse" class="btn btn-primary"
				style="padding-left:6px; padding-top:3px;">
					<i id="sideFA" class="fa fa-arrow-circle-left fa-2x"></i> 
					<span class="sr-only">Toggle Menu</span>
				</button>
			</div>

			
			<div class="p-4">
				<ul class="list-unstyled components mb-2">
					<li class="active">
					<a href="#Submenu1"
						data-toggle="collapse" aria-expanded="false"
						class="dropdown-toggle menuHeader">기준정보관리</a>
						<ul class="collapse list-unstyled" id="Submenu1">
							<li>
								<a href="javascript:void(0);" onclick="menuClick('사용자 관리','/info/userManage');"
									class="menuBody">사용자 관리
								</a>
							</li>
							<li>
								<a href="javascript:void(0);" onclick="menuClick('거래처 관리','/info/clientManage');"
									class="menuBody">거래처 관리
								</a>
							</li>
							<li>
								<a href="javascript:void(0);" onclick="menuClick('제품 마스터','/info/productMaster');"
									class="menuBody">제품 마스터
								</a>
							</li>
							<li>
								<a href="javascript:void(0);" onclick="menuClick('설비 마스터','/info/machineMaster');"
								class="menuBody">설비 마스터
								</a>
							</li>
							<li>
								<a href="javascript:void(0);" onclick="menuClick('공정 마스터','/info/processMaster');"
								class="menuBody">공정 마스터
								</a>
							</li>
							<li>
								<a href="javascript:void(0);" onclick="menuClick('설비 비가동코드','/info/nonoperManage');"
								class="menuBody">설비 비가동코드</a>
							</li>
						</ul>
					</li>

					<li><a href="#Submenu5" 
							data-toggle="collapse"
							aria-expanded="false" 
							class="dropdown-toggle menuHeader">입출고관리</a>
						<ul class="collapse list-unstyled" id="Submenu5">
							<li>
								<a href="javascript:void(0);" onclick="menuClick('입고관리','/inout/orderManage');"
								class="menuBody">입고관리
								</a>
							</li>
							<li>
								<a href="javascript:void(0);" onclick="menuClick('출고관리','/inout/outManage');"
								class="menuBody">출고관리
								</a>
							</li>
							<li>
								<a href="#"
								class="menuBody">재고현황
								</a>
							</li>
							<li>
								<a href="#"
								class="menuBody">출고대기현황
								</a>
							</li>
							<li>
								<a href="#"
								class="menuBody">공정작업현황
								</a>
							</li>
						</ul>
					</li>
					
					<li><a href="#Submenu3" 
							data-toggle="collapse"
							aria-expanded="false" 
							class="dropdown-toggle menuHeader">공정관리</a>
						<ul class="collapse list-unstyled" id="Submenu3">
							<li>
								<a href="#"
								class="menuBody">제품별작업관리</a>
							</li>
							<li>
								<a href="#"
								class="menuBody">설비별작업관리</a>
							</li>
							<li>
								<a href="#"
								class="menuBody">출고대기현황</a>
							</li>
							<li>
								<a href="#"
								class="menuBody">설비가동률분석</a>
							</li>
							<li>
								<a href="#"
								class="menuBody">수리이력관리</a>
							</li>
						</ul>
					</li>
					
					<li><a href="#Submenu2" 
							data-toggle="collapse"
							aria-expanded="false" 
							class="dropdown-toggle menuHeader">생산관리</a>
						<ul class="collapse list-unstyled" id="Submenu2">
							<li>
								<a href="javascript:void(0);" onclick="menuClick('작업지시관리','/work/workOrderManage');"
								class="menuBody">작업지시관리
								</a>
							</li>
							<li>
								<a href="#"
								class="menuBody">작업현황관리</a>
							</li>
							<li>
								<a href="#"
								class="menuBody">생산대기관리</a>
							</li>
							<li>
								<a href="#"
								class="menuBody">LOT추적관리</a>
							</li>
							<li>
								<a href="#"
								class="menuBody">생산모니터링</a>
							</li>
							<li>
								<a href="javascript:void(0);" onclick="menuClick('온도모니터링','/work/temperMonitoring');"
								class="menuBody">온도모니터링</a>
							</li>
							<li>
								<a href="#"
								class="menuBody">작업일보</a>
							</li>
						</ul>
					</li>

					<li><a href="#Submenu4" 
							data-toggle="collapse"
							aria-expanded="false" 
							class="dropdown-toggle menuHeader">품질관리</a>
						<ul class="collapse list-unstyled" id="Submenu4">
							<li>
								<a href="#"
								class="menuBody">수입검사관리</a>
							</li>
							<li>
								<a href="#"
								class="menuBody">부적합등록</a>
							</li>
							<li>
								<a href="#"
								class="menuBody">자주검사 불량현황</a>
							</li>
							<li>
								<a href="#"
								class="menuBody">품질정보 관리</a>
							</li>
							<li>
								<a href="#"
								class="menuBody">생산리포트</a>
							</li>
							<li>
								<a href="#"
								class="menuBody">불량정보
								</a>
							</li>
						</ul>
					</li>
<!-- 
					<li><a href="#Submenu6" data-toggle="collapse"
						aria-expanded="false" class="dropdown-toggle">스마트패드 공정정보관리</a>
						<ul class="collapse list-unstyled" id="Submenu6">
							<li><a href="#">공정정보관리</a></li>
							<li><a href="#">공정알람정보</a></li>
							<li><a href="#">작업현황</a></li>
							<li><a href="#">출고대기현황</a></li>
						</ul>
					</li>
 -->
 
					<li><a href="#Submenu7" 
							data-toggle="collapse"
							aria-expanded="false" 
							class="dropdown-toggle menuHeader">생산경영정보</a>
						<ul class="collapse list-unstyled" id="Submenu7">
							<li>
								<a href="#"
								class="menuBody">제품별 입출고현황
								</a>
							</li>
							<li>
								<a href="#"
								class="menuBody">제품별생산현황
								</a>
							</li>
							<li>
								<a href="#"
								class="menuBody">거래처별 입출고현황
								</a>
							</li>
							<li>
								<a href="#"
								class="menuBody">설비별 생산현황
								</a>
							</li>
							<li>
								<a href="#"
								class="menuBody">월매출현황
								</a>
							</li>
							<li>
								<a href="#"
								class="menuBody">년간매출현황
								</a>
							</li>
							<li>
								<a href="#"
								class="menuBody">일일매출현황
								</a>
							</li>
							<li>
								<a href="#"
								class="menuBody">입출고현황
								</a>
							</li>
							<li>
								<a href="#"
								class="menuBody">KPI현황
								</a>
							</li>
						</ul>
					</li>
				</ul>

				
				
				<div class="footer">
					<p>
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved
					</p>
				</div>
			</div>			
		</nav>
	<!-- 왼쪽 메뉴바 끝 -->
		
		<!-- 사이드바 템플릿 사용 
<script type="text/javascript" src="/js/jquery.min.js"></script>
<script src="/js/popper.js"></script>
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
-->
		<!-- 사이드바 기본js -->
		
<script src="/js/sidebar.js"></script>


<script>
$(function(){


	
	$("#content ul li a").click(function(e){
		console.log(e);
		
		e.preventDefault();
		$("#view_content").load($(this).attr('href'));
	});


/*	
	if("${menuCount}" == null){
		$("#sidebar").removeClass("active");
	}else{
		$("#sidebar").addClass("active");
	}
*/	
});





$("#sidebarCollapse").on("click",function(){
	if($("#sidebar").hasClass("active") === true){
		
		$("#sideFA").removeClass("fa-arrow-circle-left");
		$("#sideFA").addClass("fa-arrow-circle-right");
	}else{
		$("#sideFA").addClass("fa-arrow-circle-left");
		$("#sideFA").removeClass("fa-arrow-circle-right");

	}
	
});


//함수
	function menuClick(menu,link){
//		console.log("함수는 옴");
		
		//href="/info/userManage"
		$.ajax({
			url:"/gumgu/menuClick",
			type:"post",
			data:{menu:menu, link:link},
			success:function(result){
				if(result == "Y"){
//					location.href=link;
					location.href="/gumgu/usersMenu";
					
				}else{
					alert("로그인 안된상태");
				}
				
			}
		});
	}

</script>
<!--  style="min-height: 100vh;" -->


<!-- 
		<header>
			<jsp:include page="../include/header.jsp" flush="true" />
		</header>
 -->
 
 <!--   pt-5  -->
 		
 		
 		
 		
 		
		<div id="content" class="pl-4 pl-md-5">
			<jsp:include page="../include/header.jsp" />
			
			<div class="container-fluid mt-2">
				<ul class="nav nav-tabs">
					<c:forEach var="tab" items="${tabList}">
						<c:choose>
							<c:when test="${tab.t_idx eq 0 }">
								<li class="nav-item">
									<a class="nav-link active" data-toggle="tab"
										href="${tab.m_link }">${tab.m_name}
										&nbsp;<i class="fa fa-times menuCloseBtn" aria-hidden="true"										
										onclick="menuDelete('${tab.m_name}')"></i>
									</a>
								</li>
							</c:when>
							<c:otherwise>
								<li class="nav-item">
									<a class="nav-link" data-toggle="tab"
										href="#${tab.m_link }">${tab.m_name}
										&nbsp;<i class="fa fa-times menuCloseBtn" aria-hidden="true"
										onclick="menuDelete('${tab.m_name}')"></i>
									</a>
								</li>
							
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</ul>
			</div>
			
			
			
			
			
			
			
			
			
			<div id="myTabContent" class="tab-content container-fluid">
				<c:forEach var="tab" items="${tabList}">
					<c:choose>
						<c:when test="${tab.t_idx eq 0 }">
							<div class="tab-pane fade active show row" id="${tab.t_id}">
								
								<div id="view_content" style="min-height: 87.7vh; min-width:100vh;
									padding-left:0; padding-right:0;"></div>
									
									

<!--  									
								<iframe src="${tab.m_link }" frameborder="0" scrolling="no" 
									class="col-md-12" seamless="seamless"
									style="min-height: 87.7vh; min-width:100vh;
									padding-left:0; padding-right:0;"></iframe>
 -->	
 
<!-- style="min-height: 87.7vh; min-width:100vh; -->
<!-- 
 								<embed src="${tab.m_link }" type="text/html" 
									class="col-md-12"									
									style="min-width:1200; min-height:840;
									padding-left:0; padding-right:0;"/>
 -->
 
<!--   
 								<embed src="${tab.m_link }" type="text/html"
 									width="100vh" height="87.7vh"/>
 -->									
									
									
 
<!--  								
 								<object data="${tab.m_link }" type="text/html"
									class="col-md-12"
									style="min-height: 87.7vh; min-width:100vh;
									padding-left:0; padding-right:0; overflow: none;"></object>
 -->
 
<!--  
 								<object data="${tab.m_link }" type="text/html" 									
 									width="100%" height="87.7%"
 									style="overflow:hidden;"></object>
 -->
 								
							</div>							
						</c:when>
						
						
						<c:otherwise>
							<div class="tab-pane fade row" id="${tab.t_id}">
<!--  						
								<iframe src="${tab.m_link }" frameborder="0" scrolling="no" 
									class="col-md-12" seamless="seamless"
									style="min-height: 87.7vh; min-width:100vh;
									padding-left:0; padding-right:0;"></iframe>
  -->
  								
<!-- style="min-height: 87.7vh; min-width:100vh; -->
<!-- 
 								<embed src="${tab.m_link }" type="text/html"
 									width="100vh" height="87.7vh"/>
 --> 									
 									
 									
 									
<!--  
 								<object data="${tab.m_link }" type="text/html"
 									width="100%" height="87.7%"
 									style="overflow:hidden;"></object>
 --> 								
									
							</div>							
						</c:otherwise>
					</c:choose>
				</c:forEach>
				
			</div>

		</div>

	</div>



<script>


/*함수*/
function tabMove(link, t_id){

	$("#"+t_id).addClass("alert-success");
	
	location.href=link;
} 

function menuDelete(t_name){
//	console.log("t_id : "+t_id);
	$.ajax({
		url:"/gumgu/menuDelete",
		type:"post",
		data:{name:t_name},
		success:function(result){
			if(result == "Y"){
				location.href="/gumgu/usersMenu";
			}else{
				alert("로그인 안된상태");
			}
			
		}
	});

	
}
 
</script>
	
	
</body>
</html>