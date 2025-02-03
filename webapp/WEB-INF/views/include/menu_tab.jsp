<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>금구</title>

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
.colorgraph {
	height: 5px;
	border-top: 0;
	background: #c4e17f;
	border-radius: 5px;
	background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%,
		#f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%,
		#db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%,
		#669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%,
		#f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%,
		#db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%,
		#669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca
		25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe
		50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1
		87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca
		25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe
		50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1
		87.5%, #62c2e4 87.5%, #62c2e4);
}

.error {
	color: red;
}


</style>


</head>
<!-- data-toggle="tab"  -->
<!-- 
<ul class="nav nav-tabs">
	<c:forEach var="tab" items="${tabList}">
	  <li class="nav-item" id="${tab.t_id}">
	  
	    <a class="nav-link" href="javascript:void(0);" onclick="tabMove('${tab.link}','${tab.t_id }');">${tab.name}</a>
	  </li>	
	</c:forEach>
</ul>
 -->
<header>
	<jsp:include page="../include/header.jsp" flush="true" />
</header>
<div class="container-fluid">

	<div class="row"> 
<!-- col-sm-3 col-md-2 했다가 지움 사용중인건  -->	
		<div class="col-xs-3">
			<jsp:include page="../include/sidebar.jsp" />
		</div>
<!--  -->

		<div class="col-xs-6 col-sm-6 col-md-9 col-sm-offset-2 col-md-offset-3 ">
			<ul class="nav nav-tabs">
				<c:forEach var="tab" items="${tabList}">
					<c:choose>
						<c:when test="${tab.t_idx eq 0 }">
							<li class="nav-item"><a class="nav-link active" data-toggle="tab"
							href="#${tab.t_id}">${tab.name}</a></li>
						</c:when>
						<c:otherwise>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#${tab.t_id}">${tab.name}</a></li>
						
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<li class="nav-item">
					<a class="nav-link active" href="#">메뉴관리</a>
				</li>
			</ul>
			
			
			
			
			
			
			
			
			<div id="myTabContent" class="tab-content container-fluid">
				<c:forEach var="tab" items="${tabList}">
					<c:choose>
						<c:when test="${tab.t_idx eq 0 }">
							<div class="tab-pane fade active show row" id="${tab.t_id}">
								<iframe src="${tab.link }" frameborder="0" scrolling="no" 
									class="col-md-12"
									style="min-height: 82.2vh; min-width:100vh;
									padding-left:0; padding-right:0;"></iframe>
							</div>							
						</c:when>
						<c:otherwise>
							<div class="tab-pane fade row" id="${tab.t_id}">
								<iframe src="${tab.link }" frameborder="0" scrolling="no" 
									class="col-md-12"
									style="min-height: 82.2vh; min-width:100vh;
									padding-left:0; padding-right:0;"></iframe>
							</div>							
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</div>



			<!-- 제이쿼리홈페이지 js 
<script type="text/javascript" src="/js/jquery.js"></script>
-->


		</div>
	</div>



</div>
<script>


/*함수*/
function tabMove(link, t_id){

	$("#"+t_id).addClass("alert-success");
	
	location.href=link;
} 
 
</script>

</body>
</html>




