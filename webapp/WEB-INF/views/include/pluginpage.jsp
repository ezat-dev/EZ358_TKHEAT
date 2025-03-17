<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 제이쿼리홈페이지 js -->
<script type="text/javascript" src="/geomet/js/jquery-3.7.1.min.js"></script>

<!-- Tabulator 테이블 -->
<script type="text/javascript" src="/geomet/js/tabulator/tabulator.js"></script>
<link rel="stylesheet" href="/geomet/css/tabulator/tabulator_simple.css">

<!-- moment -->
<script type="text/javascript" src="/geomet/js/moment/moment.min.js"></script>

<!-- 화면캡쳐용 -->
<script type="text/javascript" src="/geomet/js/html2canvas.js"></script>


<!-- 하이차트 -->
<script type="text/javascript" src="/geomet/js/highchart/highcharts.js"></script>
<script type="text/javascript" src="/geomet/js/highchart/exporting.js"></script>
<script type="text/javascript" src="/geomet/js/highchart/export-data.js"></script>
<script type="text/javascript" src="/geomet/js/highchart/data.js"></script>


<!-- Air Datepicker -->
<script type="text/javascript" src="/geomet/js/airdatepicker/datepicker.min.js"></script>
<script type="text/javascript" src="/geomet/js/airdatepicker/datepicker.ko.js"></script>
<link rel="stylesheet" href="/geomet/css/airdatepicker/datepicker.min.css"> 
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
			"a01":"",
			"a02":"",
			"a03":"",
			"a04":"",
			"a05":"",
			"a06":"",
			"a07":"",
			"a08":"",
			"a09":"",
			"a10":"",
			"b01":"",
			"b02":"",
			"b03":"",
			"b04":"",
			"b05":"",
			"c01":"",
			"c02":"",
			"c03":"",
			"c04":"",
			"c05":"",
			"c06":"",
			"c07":"",
			"c08":"",
			"c09":"",
			"c10":"",
			"c11":"",
			"c12":"",
			"d01":"",
			"d02":"",
			"d03":"",
			"e01":"",
			"e02":"",
			"e03":"",
			"e04":"",
			"e05":"",
			"e06":"",
			"e07":"",
			"e08":"",
			"e09":"",
			"f01":"",
			"f02":"",
			"f03":"",
			"f04":"",
			"f05":"",
			"f06":"",
			"f07":"",
			"f08":"",
			"f09":"",
			"g01":"",
			"g02":"",
			"g03":"",
			"g04":"",
			"g05":"",
			"g06":"",
			"g07":"",
			"g08":"",
			"g09":"",
			"g10":"",
			"g11":"",
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
			"h04":"",
			"h05":["/tkheat/management/userinsert","작업자등록"],
			"h06":"",
			"h07":"",
			"h08":["/tkheat/management/authority","사원별권한등록"],
			"h09":"",
			"h10":["/tkheat/management/coilInsert","코일등록"],
			"h11":["/tkheat/management/plugInsert","PLUG등록"],
			"h12":"",
			"h13":"",
	};

	
	return obj[paramKey];
}

</script>
