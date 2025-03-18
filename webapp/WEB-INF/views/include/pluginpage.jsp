<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 제이쿼리홈페이지 js -->
<script type="text/javascript" src="/tkheat/js/jquery-3.7.1.min.js"></script>

<!-- Tabulator 테이블 -->
<script type="text/javascript" src="/tkheat/js/tabulator/tabulator.js"></script>
<link rel="stylesheet" href="/tkheat/css/tabulator/tabulator_simple.css">

<!-- moment -->
<script type="text/javascript" src="/tkheat/js/moment/moment.min.js"></script>

<!-- 화면캡쳐용 -->
<script type="text/javascript" src="/tkheat/js/html2canvas.js"></script>


<!-- 하이차트 -->
<script type="text/javascript" src="/tkheat/js/highchart/highcharts.js"></script>
<script type="text/javascript" src="/tkheat/js/highchart/exporting.js"></script>
<script type="text/javascript" src="/tkheat/js/highchart/export-data.js"></script>
<script type="text/javascript" src="/tkheat/js/highchart/data.js"></script>


<!-- Air Datepicker -->
<script type="text/javascript" src="/tkheat/js/airdatepicker/datepicker.min.js"></script>
<script type="text/javascript" src="/tkheat/js/airdatepicker/datepicker.ko.js"></script>
<link rel="stylesheet" href="/tkheat/css/airdatepicker/datepicker.min.css"> 
<style>
	
</style>
<script>

$(function(){
	rpImagePopup();
	
	//airDatePicker 설정
	//날짜 : 일
	 $(".daySet").datepicker({
    	language: 'ko',
    	autoClose: true,
    }); 
	    
	//날짜 : 월
   $(".monthSet").datepicker({
	    language: 'ko',           // 한국어 설정
	    view: 'months',           // 월만 표시
	    minView: 'months',        // 월만 선택 가능
	    dateFormat: 'yyyy-mm',    // 연도-월 형식 지정
	    autoClose: true,          // 월 선택 후 자동 닫힘
	});
   

    //날짜 : 년
	 $(".yearSet").datepicker({
	  language: 'ko',
      view: 'years',          // 연도만 표시
      minView: 'years',       // 연도만 표시하여 날짜 선택 비활성화
      dateFormat: 'yyyy',     // 연도 형식 지정
      autoClose: true,        // 연도 선택 후 자동 닫힘
      language: 'ko'          // 한국어 설정
  });
	
	
});

function rpImagePopup() {
    var img = document.createElement("img");
//    console.log(img);
    
    // $(img).attr("src", "imgs/noimage_01.gif");
    $(img).css("width", "600");
    $(img).css("height", "500");
    
    var div = document.createElement("div");
    $(div).css("position", "absolute");
    $(div).css("display", "none");
    $(div).css("z-index", "24999");
    $(div).append(img);
    $(div).hide();
    $("body").append(div);

    $(document).on("mouseover", ".rp-img-popup > img", function(){
            $(img).attr("src", $(this).attr("src"));
            $(div).show();
            var iHeight = (document.body.clientHeight / 2) - $(img).height() / 2 + document.body.scrollTop;   // 화면중앙
            var iWidth = (document.body.clientWidth / 2) - $(img).width() / 2 + document.body.scrollLeft;
            $(div).css("left", iWidth);
            $(div).css("top", 100);
        })
        .on("mouseout", ".rp-img-popup > img", function(){
            $(div).hide();
        });
    
    $(document).on("mouseover", ".rp-img-popup", function(){
        $(img).attr("src", $(this).attr("src"));
        $(div).show();
        var iHeight = (document.body.clientHeight / 2) - $(img).height() / 2 + document.body.scrollTop;   // 화면중앙
        var iWidth = (document.body.clientWidth / 2) - $(img).width() / 2 + document.body.scrollLeft;
        $(div).css("left", iWidth);
        $(div).css("top", 100);
    })
    .on("mouseout", ".rp-img-popup", function(){
        $(div).hide();
    });
}
function pageObject(paramKey){
//	console.log("받은 키값 : "+paramKey);
	var obj = {
			"a01":["/tkheat/product/ipgo","입고관리"],
			"a02":["/tkheat/product/chulgo","출고관리"],
			"a03":["/tkheat/product/jaegoStatus","재고현황(상세정보)"],
			"a04":["/tkheat/product/pJaegoStatus","제품별재고현황"],
			"a05":["/tkheat/product/chulgoWaiting","출고대기현황"],
			"a06":["/tkheat/product/workStatus","공정작업현황"],
			"a07":["/tkheat/product/ipChulDelete","입출고삭제현황"],
			"a08":"",
			"a09":"",
			"a10":"",
			"b01":["/tkheat/production/workInstruction","작업지시"],
			"b02":["/tkheat/production/workSchedule","작업스케줄"],
			"b03":["/tkheat/production/workStatus","작업현황"],
			"b04":["/tkheat/production/nonReprot","부적합보고서"],
			"b05":["/tkheat/production/prodWaitingStatus","생산대기현황"],
			"b06":["/tkheat/production/lotIpgo","LOT추적 관리(입고)"],
			"b07":["/tkheat/production/lotHeat","LOT추적 관리(열처리LOT)"],
			"c01":["/tkheat/process/readySiljuk","준비 작업실적"],
			"c02":["/tkheat/process/cleanSiljuk","전세정 작업실적"],
			"c03":["/tkheat/process/chimSiljuk","침탄 작업실적"],
			"c04":["/tkheat/process/gojuSiljuk","고주파 작업실적"],
			"c05":["/tkheat/process/temSiljuk","템퍼링 작업실적"],
			"c06":["/tkheat/process/shortSiljuk","쇼트/샌딩 작업실적"],
			"c07":["/tkheat/process/facSiljuk","설비별 작업실적"],
			"c08":["/tkheat/process/prodFaulty","제품별 불량현황"],
			"c09":["/tkheat/process/queHard","소입경도현황"],
			"c10":["/tkheat/process/temHard","템퍼링경도현황"],
			"c11":"",
			"c12":"",
			"d01":["/tkheat/monitoring/pumMonitoring","품질관리모니터링"],
			"d02":"",
			"d03":"",
			"e01":["/tkheat/preservation/sparePart","SparePart관리"],
			"e02":["/tkheat/preservation/begaInsert","설비비가동등록"],
			"e03":["/tkheat/preservation/begaAnaly","설비비가동율분석"],
			"e04":["/tkheat/preservation/suriHistory","설비수리이력관리"],
			"e05":["/tkheat/preservation/jeomgeomInsert","설비점검기준등록"],
			"e06":["/tkheat/preservation/dayJeomgeom","설비별점검현황(일별)"],
			"e07":["/tkheat/preservation/monthJeomgeom","설비별점검현황(월별)"],
			"e08":["/tkheat/preservation/gigiGojang","측정기기고장이력"],
			"e09":["/tkheat/preservation/gigiJeomgeom","측정기기점검관리"],
			"f01":["/tkheat/quality/suip","수입검사"],
			"f02":["/tkheat/quality/nonInsert","부적합등록"],
			"f03":["/tkheat/process/queHard","소입경도현황"],
			"f04":["/tkheat/process/temHard","템퍼링경도현황"],
			"f05":["/tkheat/quality/jajuStatus","자주검사불량현황"],
			"f06":["/tkheat/quality/jajuJochi","자주검사불량조치관리"],
			"f07":["/tkheat/quality/xBar","Xbar-R관리도"],
			"f08":"",
			"f09":"",
			"g01":["/tkheat/operation/pIpgoStatus","제품별입고현황"],
			"g02":["/tkheat/operation/pChulgoStatus","제품별출고현황"],
			"g03":["/tkheat/operation/cuIpgoStatus","거래처별입고현황"],
			"g04":["/tkheat/operation/cuChulgoStatus","거래처별출고현황"],
			"g05":["/tkheat/operation/yearSale","년간매출현황"],
			"g06":["/tkheat/operation/monthBul","월별불량현황"],
			"g07":["/tkheat/operation/cuMonthBul","월별거래처별불량현황"],
			"g08":["/tkheat/operation/prodSiljuk","제품별작업실적"],
			"g09":["/tkheat/process/facSiljuk","설비별 작업실적"],
			"g10":["/tkheat/operation/notice","공지사항"],
			"g11":["/tkheat/operation/monthSale","월매출현황(마감)"],
			"g12":"",
			"g13":"",
			"g14":"",
			"g15":"",
			"g16":"",
			"g17":"",
			"g18":"",
			"g19":"",
			"h01":["/tkheat/management/productInsert","제품등록"],
			"h02":["/tkheat/management/cutumInsert","거래처등록"],
			"h03":["/tkheat/management/facInsert","설비등록"],
			"h04":["/tkheat/management/chimStandard","침탄로작업표준"],
			"h05":["/tkheat/management/userinsert","작업자등록"],
			"h06":["/tkheat/management/goStandard","고주파로작업표준"],
			"h07":["/tkheat/management/plugInspection","PLUG점검기준등록"],
			"h08":["/tkheat/management/authority","사원별권한등록"],
			"h09":["/tkheat/management/measurement","측정기기관리"],
			"h10":["/tkheat/management/coilInsert","코일등록"],
			"h11":["/tkheat/management/plugInsert","PLUG등록"],
			"h12":"",
			"h13":"",
	};

	
	return obj[paramKey];
}

</script>
