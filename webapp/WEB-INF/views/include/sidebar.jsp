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
<link rel="stylesheet" href="/tkheat/css/sidebar-css.css" />
<link rel="stylesheet" href="/tkheat/css/font-awesome.min.css" />

<!-- 사이드바 템플릿 사용-->
<script type="text/javascript" src="/tkheat/js/jquery.min.js"></script>
<script type="text/javascript" src="/tkheat/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/tkheat/css/bootstrap.min.css" />

<!-- 제이쿼리홈페이지 js -->
<script type="text/javascript" src="/tkheat/js/jquery.js"></script>

<!-- 모달 -->
<script type="text/javascript" src="/tkheat/js/jquery.modal.js"></script>
<link rel="stylesheet" href="/tkheat/css/jquery.modal.css">

<!-- dataTable -->
<script type="text/javascript" src="/tkheat/js/datatables.min.js"></script>
<link rel="stylesheet" href="/tkheat/css/datatables.min.css">



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

embed:focus {

  outline: none;

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
					
					<c:if test="${sessionScope.user.user_level == '관리자'}">
						<li class="active">
						<a href="#Submenu1"
							data-toggle="collapse" aria-expanded="false"
							class="dropdown-toggle menuHeader">기준정보관리</a>
							<ul class="collapse list-unstyled" id="Submenu1">
								<li>
									<a href="javascript:void(0);" onclick="menuClick('사용자 관리','/home/test');"
										class="menuBody">사용자 관리
									</a>
								</li>
								<li>
									<a href="javascript:void(0);" onclick="menuClick('거래처 관리','/home/test');"
										class="menuBody">거래처 관리
									</a>
								</li>
								<li>
									<a href="javascript:void(0);" onclick="menuClick('제품 마스터','/home/test');"
										class="menuBody">제품 마스터
									</a>
								</li>
								<li>
									<a href="javascript:void(0);" onclick="menuClick('설비 마스터','/home/test');"
									class="menuBody">설비 마스터
									</a>
								</li>
								<li>
									<a href="javascript:void(0);" onclick="menuClick('공정 마스터','/home/test');"
									class="menuBody">공정 마스터
									</a>
								</li>
								<li>
									<a href="javascript:void(0);" onclick="menuClick('설비 비가동코드','/info/nonoperManage');"
									class="menuBody">설비 비가동코드</a>
								</li>
							</ul>
						</li>
					</c:if>

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
							<c:if test="${sessionScope.user.user_level == '관리자'}">
								<li>
									<a href="javascript:void(0);" onclick="menuClick('출고완료현황','/inout/jaegoStatus');"
									class="menuBody">출고완료현황
									</a>
								</li>
								<li>
									<a href="javascript:void(0);" onclick="menuClick('출고대기현황','/inout/outWaitStatus');"
									class="menuBody">출고대기현황
									</a>
								</li>
								<li>
									<a href="javascript:void(0);" onclick="menuClick('외주현황','/inout/outSourcingStatus');"
									class="menuBody">외주현황
									</a>
								</li>
							</c:if>
						</ul>
					</li>
					
					<li><a href="#Submenu3" 
							data-toggle="collapse"
							aria-expanded="false" 
							class="dropdown-toggle menuHeader">공정관리</a>
						<ul class="collapse list-unstyled" id="Submenu3">
							<c:if test="${sessionScope.user.user_level == '관리자'}">
								<li>
									<a href="javascript:void(0);" onclick="menuClick('공정작업현황(LOT추적)','/process/processWorkStatus');"
									class="menuBody">공정작업현황(LOT추적)
									</a>
								</li>
								<li>
									<a href="javascript:void(0);" onclick="menuClick('설비가동률분석','/process/processOperating');"
									class="menuBody">설비가동률분석</a>
								</li>
								<li>
									<a href="javascript:void(0);" onclick="menuClick('전력량관리','/process/kwhManage');"
									class="menuBody">전력량관리</a>
								</li>
								<li>
									<a href="javascript:void(0);" onclick="menuClick('수리이력관리','/process/repairManage');"
									class="menuBody">수리이력관리</a>
								</li>
							</c:if>
							<li>
								<a href="javascript:void(0);" onclick="menuClick('알람이력관리','/process/alarmManage');"
								class="menuBody">알람이력관리</a>
							</li>
							<li>
								<a href="javascript:void(0);" onclick="menuClick('알람랭킹관리','/process/alarmRankingManage');"
								class="menuBody">알람랭킹관리</a>
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
								<a href="javascript:void(0);" onclick="menuClick('작업현황관리','/work/workStatusManage');"
								class="menuBody">작업현황관리</a>
							</li>
							<li>
								<a href="javascript:void(0);" onclick="menuClick('LOT 생산이력관리','/work/lotTrackingManage');"
								class="menuBody">LOT 생산이력관리</a>
							</li>
							
<!--
							<li>
								<a href="javascript:void(0);" onclick="menuClick('생산모니터링','/work/processMonitoring');"
								class="menuBody">생산모니터링</a>
							</li>

							<li>
								<a href="javascript:void(0);" onclick="menuClick('생산모니터링 신설비','/work/OVERVIEW');"
								class="menuBody">생산모니터링 신설비</a>
							</li>
-->							
							<li>
								<a href="javascript:void(0);" onclick="window.open('http://gumgu.iptime.org/gumguFactory/processMonitoring.jsp')"
								class="menuBody">생산모니터링</a>
							</li>

							<li>
								<a href="javascript:void(0);" onclick="window.open('http://gumgu.iptime.org/gumguFactory/OVERVIEW90.jsp')"
								class="menuBody">생산모니터링 신설비</a>
							</li>

							<li>
								<a href="javascript:void(0);" onclick="menuClick('온도모니터링','/work/googleChartTest');"
								class="menuBody">온도모니터링</a>
							</li>
							<c:if test="${sessionScope.user.user_id == 'hjko'}">
								<li>
									<a href="javascript:void(0);" onclick="menuClick('구글차트','/work/googleChartTest');"
									class="menuBody">구글차트</a>
								</li>
							</c:if>
							<c:if test="${sessionScope.user.user_id == 'hjko'}">
								<li>
									<a href="javascript:void(0);" onclick="menuClick('구글차트테스트','/work/googleChart_jsp');"
									class="menuBody">구글차트테스트</a>
								</li>
							</c:if>
							<c:if test="${sessionScope.user.user_id == 'hjko'}">
								<li>
									<a href="javascript:void(0);" onclick="menuClick('하이차트','/work/highChartTest');"
									class="menuBody">하이차트</a>
								</li>
							</c:if>
							
							
							<c:if test="${sessionScope.user.user_level == '관리자'}">
								<li>
									<a href="javascript:void(0);" onclick="menuClick('작업일보','/work/workReportManage');"
									class="menuBody">작업일보</a>
								</li>
							</c:if>
						</ul>
					</li>
					<c:if test="${sessionScope.user.user_level == '관리자'}">
						<li><a href="#Submenu4" 
								data-toggle="collapse"
								aria-expanded="false" 
								class="dropdown-toggle menuHeader">품질관리</a>
							<ul class="collapse list-unstyled" id="Submenu4">
	  							
								<li>
									<a href="javascript:void(0);" onclick="menuClick('수입검사관리','/qc/qcInManage');"
									class="menuBody">수입검사관리</a>
								</li> 							
								<li>
									<a href="javascript:void(0);" onclick="menuClick('수입출하검사관리','/qc/qcInOutManage');"
									class="menuBody">수입출하검사관리</a>
								</li>
								<li>
									<a href="javascript:void(0);" onclick="menuClick('검사기준서/협정서관리','/qc/qcStandardManage');"
									class="menuBody">검사기준서/협정서관리</a>
								</li>
								<li>
									<a href="javascript:void(0);" onclick="menuClick('4M/ISIR관리','/qc/qc4MISIRManage');"
									class="menuBody">4M/ISIR관리</a>
								</li>
								<li>
									<a href="javascript:void(0);" onclick="menuClick('도면관리','/qc/qcDrawingManage');"
									class="menuBody">도면관리</a>
								</li>
								<li>
									<a href="javascript:void(0);" onclick="menuClick('부적합관리','/qc/qcBadManage');"
									class="menuBody">부적합관리</a>
								</li>
								<li>
									<a href="javascript:void(0);" onclick="menuClick('정기검사관리','/qc/qcPeriodManage');"
									class="menuBody">정기검사관리</a>
								</li>
								<li>
									<a href="javascript:void(0);" onclick="menuClick('표준서관리','/qc/qcPyoManage');"
									class="menuBody">표준서관리</a>
								</li>
								<li>
									<a href="javascript:void(0);" onclick="menuClick('관리도X-R BAR','/qc/qcXBAR');"
									class="menuBody">관리도X-R BAR</a>
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
	<!-- 
								<li>
									<a href="javascript:void(0);" onclick="menuClick('제품별 입출고현황','/oper/productInOutStatus');"
									class="menuBody">제품별 입출고현황
									</a>
								</li>
	 -->
								
								<li>
									<a href="javascript:void(0);" onclick="menuClick('제품별 생산현황','/oper/productProcessStatus');"
									class="menuBody">제품별 생산현황
									</a>
								</li>
	
	<!-- 							
								<li>
									<a href="javascript:void(0);" onclick="menuClick('업체별 입출고현황','/oper/clientInOutStatus');"
									class="menuBody">업체별 입출고현황
									</a>
								</li>
	 -->
	<!--  							
								<li>
									<a href="javascript:void(0);" onclick="menuClick('설비별 생산현황','/oper/machineProcessStatus');"
									class="menuBody">설비별 생산현황
									</a>
								</li>
	 -->							
								<li>
									<a href="javascript:void(0);" onclick="menuClick('매출현황','/oper/monthSalesStatus');"
									class="menuBody">매출현황
									</a>
								</li>
								<li>
									<a href="javascript:void(0);" onclick="menuClick('일일매출현황','/oper/daySalesStatus');"
									class="menuBody">일일매출현황</a>
								</li>
								<li>
									<a href="javascript:void(0);" onclick="menuClick('마감현황','/oper/allInOutStatus');"
									class="menuBody">마감현황
									</a>
								</li>
								<li>
									<a href="javascript:void(0);" onclick="menuClick('KPI현황','/oper/kpiStatus');"
									class="menuBody">KPI현황
									</a>
								</li>
							</ul>
						</li>
					</c:if>
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

	if(($(".nav-link.active")[0].text).indexOf("생산모니터링") != -1){
		$("#sidebar").addClass("active");
	}

//console.log($(".nav-link.active")[0]);
//console.log($(".nav-link.active")[0].text);
//console.log(($(".nav-link.active")[0].text).indexOf("생산모니터링"));
//console.log($(".nav-link.active")[0].value);
	
	

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
			url:"/tkheat/user/userMenuClick",
			type:"post",
			data:{menu:menu, link:link},
			success:function(result){
				if(result == "Y"){
//					location.href=link;
					location.href="/tkheat/user/usersMenuOkSelect";
					
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
							<c:when test="${tab.tab_idx eq 0 }">
								<li class="nav-item">
									<a class="nav-link active" data-toggle="tab"
										href="#${tab.tab_id}">${tab.menu_name}
										&nbsp;<i class="fa fa-times menuCloseBtn" aria-hidden="true"										
										onclick="menuDelete('${tab.menu_name}')"></i>
									</a>
								</li>
							</c:when>
							<c:otherwise>
								<li class="nav-item">
									<a class="nav-link" data-toggle="tab"
										href="#${tab.tab_id}">${tab.menu_name}
										&nbsp;<i class="fa fa-times menuCloseBtn" aria-hidden="true"
										onclick="menuDelete('${tab.menu_name}')"></i>
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
						<c:when test="${tab.tab_idx eq 0 }">
							<div class="tab-pane fade active show row" id="${tab.tab_id}">

								<iframe src="${tab.menu_url }" frameborder="0" scrolling="no" 
									class="col-md-12"
									style="min-height: 87.7vh; min-width:100vh;
									padding-left:0; padding-right:0;"></iframe>
	
							</div>							
						</c:when>
						
						<c:otherwise>
							<div class="tab-pane fade row" id="${tab.tab_id}">
 						
								<iframe src="${tab.menu_url }" frameborder="0" scrolling="no" 
									class="col-md-12"
									style="min-height: 87.7vh; min-width:100vh;
									padding-left:0; padding-right:0;"></iframe>	
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

	$.ajax({
		url:"/tkheat/user/userMenuDelete",
		type:"post",
		data:{name:t_name},
		success:function(result){
			if(result == "Y"){
				location.href="/tkheat/user/usersMenuOkSelect";
			}else{
				alert("로그인 안된상태");
			}
			
		}
	});
}
</script>
</body>
</html>