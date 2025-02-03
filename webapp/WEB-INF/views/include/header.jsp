<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div class="container-fluid">
	<nav class="navbar navbar-expand-lg navbar-mainbg" style="margin-bottom:0; max-height:7vh; 
	background-color:#123478;">
		<c:if test="${sessionScope.user != null}">
			<a class="navbar-brand navbar-logo text-white font-weight-bold" href="/info/signUp" 
				style="font-size:1.6rem;">(주)금구</a>
		</c:if>
		<c:if test="${sessionScope.user == null}">
			<a class="navbar-brand navbar-logo text-white font-weight-bold" href="/"
				style="font-size:1.6rem;">(주)금구</a>
		</c:if>
			
			
			
			
		<c:if test="${sessionScope.user != null}">        
	        <button class="navbar-toggler" type="button" data-toggle="collapse" 
	        	data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" 
	        	aria-expanded="false" aria-label="Toggle navigation">
	        <i class="fas fa-bars text-white"></i>
	        </button>
	        
	        
	        
	        <div class="collapse navbar-collapse ml-2" id="navbarSupportedContent">
	        	<div class="container-fluid">
		        	<div class="d-flex justify-content-end">
						<c:if test="${sessionScope.user != null}">
							<div class="p-1 ml-auto">
						  		<label class="control-label text-white" style="padding:0;"><strong>${sessionScope.user.name}님</strong>
						  		환영합니다.</label>
							</div>
							<div class="p-1">
						  		<div style="padding:0;">
							  		<button type="button" class="btn btn-secondary btn-sm"
							  		onclick="location.href='/gumgu/logout'">로그아웃</button>		  		
						  		</div>
							</div>
		
						</c:if>
		        	</div>
				</div>
	        </div>
		</c:if>
	</nav>
</div>



	