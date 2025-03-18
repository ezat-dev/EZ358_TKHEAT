package com.tkheat.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProductController {

	 //입고관리 - 화면로드
	 @RequestMapping(value = "/product/ipgo", method = RequestMethod.GET)
	 public String ipgo() {
		 return "/product/ipgo.jsp";
	 }	 
	 
	 //출고관리 - 화면로드
	 @RequestMapping(value = "/product/chulgo", method = RequestMethod.GET)
	 public String chulgo() {
		 return "/product/chulgo.jsp";
	 }	 
	 
	 //재고현황(상세정보) - 화면로드
	 @RequestMapping(value = "/product/jaegoStatus", method = RequestMethod.GET)
	 public String jaegoStatus() {
		 return "/product/jaegoStatus.jsp";
	 }	 
	 
	 //제품별재고현황 - 화면로드
	 @RequestMapping(value = "/product/pJaegoStatus", method = RequestMethod.GET)
	 public String pJaegoStatus() {
		 return "/product/pJaegoStatus.jsp";
	 }	 
	 
	 //출고대기현황 - 화면로드
	 @RequestMapping(value = "/product/chulgoWaiting", method = RequestMethod.GET)
	 public String chulgoWaiting() {
		 return "/product/chulgoWaiting.jsp";
	 }	 
	 
	 //공정작업현황 - 화면로드
	 @RequestMapping(value = "/product/workStatus", method = RequestMethod.GET)
	 public String workStatus() {
		 return "/product/workStatus.jsp";
	 }	 
	 
	 //입출고삭제현황 - 화면로드
	 @RequestMapping(value = "/product/ipChulDelete", method = RequestMethod.GET)
	 public String ipChulDelete() {
		 return "/product/ipChulDelete.jsp";
	 }	 
	
	
}
