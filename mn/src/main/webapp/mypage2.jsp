<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file = "/header.jsp" %>

<head>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="resources/dashboard/css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <!-- <link rel="stylesheet" href="resources/dashboard/css/fullcalendar.min.css"> -->
    <!-- https://fullcalendar.io/ -->
    <link rel="stylesheet" href="resources/dashboard/css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="resources/dashboard/css/tooplate.css">
    <style type="text/css">
    	.tm-block-title{
    		text-align: center;
    		background-color:#FAEFE2;
    		font-size: 20px;
    		font-family: esamanru; 
    		margin-top: -20px;
    		margin-bottom: -30px;
    		padding: 10px 0px;
    		margin-bottom: 10px;
    		border-radius: 10px;
    	}
    		/* 반려동물 프로필 css*/
		.pet_box{
			 width: 70px;
		    height: 70px; 
		    border-radius: 70%;
		    overflow: hidden;
			border: solid #FAEFE2 2px;
		}
		.pet_profile{
			width: 100%;
			height: 100%;
			object-fit:cover;
		}
    </style>
    <style type="text/css">
    
    
    </style>
    <script type="text/javascript">
    </script>
</head>

<body id="reportsPage">
    <div class="" id="home">
    	<input type="hidden" id="session" value="${sessionScope.userInfo}">
    	
    	<div style="margin-top: 30px; left:70%; padding-left: 1100px; height: 70px;">
    		<div style="float: left">
	    		<div class="pet_box">
	    			<img class="pet_profile" src="/mn/resources/petimg/basic_pet.png"  style="left:70%; font-family: esamanru;">
	    		</div>
    		</div>
    		<div style="display: inline-block;padding-top: 30px; padding-left: 10px;"><span style="left:73%;;">반려동물을 등록해주세요</span></div>
    		<div style="display:inline-block;margin-top: -20px; "><button id="petRegist" class="btn bueno-btn" style="left:20px;" onclick="location.href='/mn/pet/petList.do'">반려동물 등록</button></div>
    	</div>
        <div class="container">
        
        	<!-- header start -->
            <div class="row">
                <div class="col-12">

                </div>
            </div>
            <!-- header end -->
            
            
            <!-- 세션확인용 -->
            <a href="#">회원 seq : ${sessionScope.userInfo.mem_num}</a>
            
            <!-- row -->
            <div class="row tm-content-row tm-mt-big">
                <div class="tm-col tm-col-big">
                    <div class="bg-white h-100">
                        	<h2 class="tm-block-title">[동물이름] 몸무게</h2>
                        <canvas id="lineChart"></canvas>
                    </div>
                </div>
                <div class="tm-col tm-col-big">
                    <div class="bg-white h-100">
                        <h2 class="tm-block-title">이번달 지출내역</h2>
                        <canvas id="barChart"></canvas>
                    </div>
                </div>
                
                <div class="tm-col tm-col-small">
                    <div class="bg-white h-100">
                        <h2 class="tm-block-title">세부일정</h2>
                        <ol class="tm-list-group">
                            <li class="tm-list-group-item">oo</li>
                            <li class="tm-list-group-item">Lorem ipsum doloe</li>
                            <li class="tm-list-group-item">Read reports</li>
                            <li class="tm-list-group-item">Write email</li>
                                                    </ol>
                    </div>
                </div>
                
                <%-- <div class="tm-col tm-col-small">
                    <div class="bg-white tm-block h-100">
                        <!-- <h2 class="tm-block-title">파이차트~</h2> -->
                        <canvas id="pieChart" class="chartjs-render-monitor"></canvas>
                    </div>
                </div> --%>


				<!-- 

                <div class="tm-col tm-col-big">
                    <div class="bg-white tm-block h-100">
                        <div class="row">
                            <div class="col-8">
                                <h2 class="tm-block-title d-inline-block">Top Product List</h2>

                            </div>
                            <div class="col-4 text-right">
                                <a href="products.html" class="tm-link-black">View All</a>
                            </div>
                        </div>
                        <ol class="tm-list-group tm-list-group-alternate-color tm-list-group-pad-big">
                            <li class="tm-list-group-item">
                                Donec eget libero
                            </li>
                            <li class="tm-list-group-item">
                                Nunc luctus suscipit elementum
                            </li>
                            <li class="tm-list-group-item">
                                Maecenas eu justo maximus
                            </li>
                            <li class="tm-list-group-item">
                                Pellentesque auctor urna nunc
                            </li>
                            <li class="tm-list-group-item">
                                Sit amet aliquam lorem efficitur
                            </li>
                            <li class="tm-list-group-item">
                                Pellentesque auctor urna nunc
                            </li>
                            <li class="tm-list-group-item">
                                Sit amet aliquam lorem efficitur
                            </li>
                        </ol>
                    </div>
                </div>
                <div class="tm-col tm-col-big">
                    <div class="bg-white tm-block h-100">
                        <h2 class="tm-block-title">달력</h2>
                        <div id="calendar"></div>
                        <div class="row mt-4">
                            <div class="col-12 text-right">
                                <a href="calendar.jsp" class="tm-link-black">일정관리</a>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="tm-col tm-col-small">
                    <div class="bg-white tm-block h-100">
                        <h2 class="tm-block-title">세부일정</h2>
                        <ol class="tm-list-group">
                            <li class="tm-list-group-item">List of tasks</li>
                            <li class="tm-list-group-item">Lorem ipsum doloe</li>
                            <li class="tm-list-group-item">Read reports</li>
                            <li class="tm-list-group-item">Write email</li>
                            
                            <li class="tm-list-group-item">Call customers</li>
                            <li class="tm-list-group-item">Go to meeting</li>
                            <li class="tm-list-group-item">Weekly plan</li>
                            <li class="tm-list-group-item">Ask for feedback</li>
                            
                            <li class="tm-list-group-item">Meet Supervisor</li>
                            <li class="tm-list-group-item">Company trip</li>
                        </ol>
                    </div>
                </div>
                
                -->
                
            </div>
            <footer class="row tm-mt-small">
                <div class="col-12 font-weight-light">
                    <!-- <p class="d-inline-block tm-bg-black text-white py-2 px-4">
                        Copyright &copy; 2018. Created by
                        <a href="http://www.tooplate.com" class="text-white tm-footer-link">Tooplate</a> |  Distributed by <a href="https://themewagon.com" class="text-white tm-footer-link">ThemeWagon</a>
                    </p> -->
                </div>
            </footer>
        </div>
    </div>
    <script src="resources/dashboard/js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="resources/dashboard/js/moment.min.js"></script>
    <!-- https://momentjs.com/ -->
    <script src="resources/dashboard/js/utils.js"></script>
    <script src="resources/dashboard/js/Chart.min.js"></script>
    <!-- http://www.chartjs.org/docs/latest/ -->
    <!-- <script src="resources/dashboard/js/fullcalendar.min.js"></script> -->
    <!-- https://fullcalendar.io/ -->
    <script src="resources/dashboard/js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script src="resources/dashboard/js/tooplate-scripts.js"></script>
    <script>
        let ctxLine,
            ctxBar,
            ctxPie,
            optionsLine,
            optionsBar,
            optionsPie,
            configLine,
            configBar,
            configPie,
            lineChart;
       		barChart;
        // DOM is ready
        $(function () {
            updateChartOptions();
            drawLineChart(); // Line Chart
            drawBarChart(); // Bar Chart
            drawPieChart(); // Pie Chart
            drawCalendar(); // Calendar

            $(window).resize(function () {
                updateChartOptions();
                updateLineChart();
                updateBarChart();
                reloadPage();
            });
        })
    </script>
</body>


<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>FullCalendar Example</title>
    <link rel=" shortcut icon" href="./resources/FullCalendar/image/favicon.ico">

    <link rel="stylesheet" href="./resources/FullCalendar/vendor/css/fullcalendar.min.css" />
    <link rel="stylesheet" href="./resources/FullCalendar/vendor/css/bootstrap.min.css">
    <link rel="stylesheet" href='./resources/FullCalendar/vendor/css/select2.min.css' />
    <link rel="stylesheet" href='./resources/FullCalendar/vendor/css/bootstrap-datetimepicker.min.css' />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <link rel="stylesheet" href="./resources/FullCalendar/css/main.css">

</head>

<body>
    <div class="container">

        <!-- 일자 클릭시 메뉴오픈 -->
        <div id="contextMenu" class="dropdown clearfix">
            <ul class="dropdown-menu dropNewEvent" role="menu" aria-labelledby="dropdownMenu"
                style="display:block;position:static;margin-bottom:5px;">
                <li><a tabindex="-1" href="#">산책</a></li>
                <li><a tabindex="-1" href="#">목욕</a></li>
                <li><a tabindex="-1" href="#">몸무게 측정</a></li>
                <li><a tabindex="-1" href="#">접종</a></li>
                <li><a tabindex="-1" href="#">지출</a></li>
                <li><a tabindex="-1" href="#">기타</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="#" data-role="close">Close</a></li>
            </ul>
        </div>

        <div id="wrapper">
        <h2 class="tm-block-title">세부일정</h2>
            <div id="loading"></div>
            <div id="calendar"></div>
        </div>


        <!-- 일정 추가 MODAL -->
        <div class="modal fade" tabindex="-1" role="dialog" id="eventModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title"></h4>
                    </div>
                    <div class="modal-body">

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-allDay">하루종일</label>
                                <input class='allDayNewEvent' id="edit-allDay" type="checkbox"></label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-title">일정명</label>
                                <input class="inputModal" type="text" name="edit-title" id="edit-title"
                                    required="required" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-start">시작</label>
                                <input class="inputModal" type="text" name="edit-start" id="edit-start" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-end">끝</label>
                                <input class="inputModal" type="text" name="edit-end" id="edit-end" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-type">구분</label>
                                <select class="inputModal" type="text" name="edit-type" id="edit-type">
                                    <option value="산책">산책</option>
		                            <option value="목욕">목욕</option>
		                            <option value="몸무게 측정">몸무게 측정</option>
		                            <option value="접종">접종</option>
		                            <option value="지출">지출</option>
		                            <option value="기타">기타</option>
                                </select>
                            </div>
                        </div>
                        
                        
                        
                        <div class="row sch_walk">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-title">산책시간</label> <!--  -->
                                <input class="inputModal" type="time" name="sch_walk" id="sch_walk"
                                    required="required" />
                            </div>
                        </div>
                        
                        <div class="row sch_ex">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-type">지출항목</label>
                                <select class="inputModal" type="text" name="sch_expenditure" id="sch_expenditure">
                                    <option value="사료/간식">사료/간식</option>
		                            <option value="장난감">장난감</option>
		                            <option value="병원">병원</option>
		                            <option value="미용/의류">미용/의류</option>
		                            <option value="기타">기타</option>
                                </select>
                            </div>
                        </div>
                        
                        <div class="row sch_ex">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-title">지출내역</label> <!-- 숫자만 쓸수있게 -->
                                <input class="inputModal" type="number" name="sch_exDetails" id="sch_exDetails"
                                    required="required" />
                            </div>
                        </div>

                        <div class="row sch_weight">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-title">몸무게</label> <!-- 숫자만 쓸수있게 -->
                                <input class="inputModal" type="number" name="sch_petWeight" id="sch_petWeight"
                                    required="required" />
                            </div>
                        </div>
                        
                        
                        
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-username">반려동물</label>
                                <select class="inputModal" type="text" name="edit-username" id="edit-username">
                                    <option value="강아지1">강아지1</option>
                                    <option value="강아지2">강아지2</option>
                                    <option value="고양이1">고양이1</option>
                                    <option value="고양이2">고양이2</option>
                                    <option value="고양이3">고양이3</option>
                                </select>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-color">색상</label>
                                <select class="inputModal" name="color" id="edit-color">
                                    <option value="#D25565" style="color:#D25565;">빨간색</option>
                                    <option value="#9775fa" style="color:#9775fa;">보라색</option>
                                    <option value="#ffa94d" style="color:#ffa94d;">주황색</option>
                                    <option value="#74c0fc" style="color:#74c0fc;">파란색</option>
                                    <option value="#f06595" style="color:#f06595;">핑크색</option>
                                    <option value="#63e6be" style="color:#63e6be;">연두색</option>
                                    <option value="#a9e34b" style="color:#a9e34b;">초록색</option>
                                    <option value="#4d638c" style="color:#4d638c;">남색</option>
                                    <option value="#495057" style="color:#495057;">검정색</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-desc">설명</label>
                                <textarea rows="4" cols="50" class="inputModal" name="edit-desc"
                                    id="edit-desc"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer modalBtnContainer-addEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-primary" id="save-event">저장</button>
                    </div>
                    <div class="modal-footer modalBtnContainer-modifyEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        <button type="button" class="btn btn-danger" id="deleteEvent">삭제</button>
                        <button type="button" class="btn btn-primary" id="updateEvent">저장</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->

        <div class="panel panel-default">

            <div class="panel-heading">
                <h3 class="panel-title">필터</h3>
            </div>

            <div class="panel-body">

                <div class="col-lg-6">
                    <label for="calendar_view">구분별</label>
                    <div class="input-group">
                        <select class="filter" id="type_filter" multiple="multiple">
                            <option value="산책">산책</option>
                            <option value="목욕">목욕</option>
                            <option value="몸무게 측정">몸무게 측정</option>
                            <option value="접종">접종</option>
                            <option value="지출">지출</option>
                            <option value="기타">기타</option>
                        </select>
                    </div>
                </div>

                <div class="col-lg-6">
                    <label for="calendar_view">등록자별</label>
                    <div class="input-group">
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="강아지1"
                                checked>강아지1</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="강아지2"
                                checked>강아지2</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="고양이1"
                                checked>고양이1</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="고양이2"
                                checked>고양이2</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="고양이3"
                                checked>고양이3</label>
                    </div>
                </div>


            </div>
        </div>
        <!-- /.filter panel -->
    </div>
    <!-- /.container -->

    <script src="./resources/FullCalendar/vendor/js/jquery.min.js"></script>
    <script src="./resources/FullCalendar/vendor/js/bootstrap.min.js"></script>
    <script src="./resources/FullCalendar/vendor/js/moment.min.js"></script>
    <script src="./resources/FullCalendar/vendor/js/fullcalendar.min.js"></script>
    <script src="./resources/FullCalendar/vendor/js/ko.js"></script>
    <script src="./resources/FullCalendar/vendor/js/select2.min.js"></script>
    <script src="./resources/FullCalendar/vendor/js/bootstrap-datetimepicker.min.js"></script>
    <script src="./resources/FullCalendar/js/main.js"></script>
    <script src="./resources/FullCalendar/js/addEvent.js"></script>
    <script src="./resources/FullCalendar/js/editEvent.js"></script>
    <script src="./resources/FullCalendar/js/etcSetting.js"></script>
    
    <script type="text/javascript">
	
    
    	function categoryHide(){
    		$(".sch_walk").hide();
    		$(".sch_ex").hide();
    		//$("#sch_exDetails").hide();
    	};
    	categoryHide();

    	function walkShow(){
    		$(".sch_walk").show();
    	}
    	function exShow(){
    		$(".sch_ex").show();
    	}
    	
    	
    	$("#edit-type").change(function(){
    	    var sch_type =  $(this).val();
    	    alert(sch_type);
    	    if (sch_type == "산책"){
    	    	categoryHide();
    	    	walkShow();
    	    }else if (sch_type == "지출"){
    	    	categoryHide();
    	    	esShow();
    	    }else{
    	    	categoryHide();
    	    }
    	});
	
    	
    	// 반려동물 등록 버튼 클릭 시
/*     	$('#petRegist').click(function () {
			if(('#session').val()==null){ // 로그인 하지 않았다면
				alert('로그인 후 이용해주세요.');
			}else{
			location.href='/mn/pet/petList.do';
			}
		}) */

    </script>
    
</body>

</html>