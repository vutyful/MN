var eventModal = $('#eventModal');

var modalTitle = $('.modal-title');
var editAllDay = $('#edit-allDay');
var editTitle = $('#edit-title');
var editStart = $('#edit-start');
var editEnd = $('#edit-end');
var editType = $('#edit-type');
var editColor = $('#edit-color');
var editDesc = $('#edit-desc');

var editUsername = $('#edit-username');



var editWalk = $('#sch_walk');
var editExpenditure = $('#sch_expenditure');
var editExDetails = $('#sch_exDetails');
var editPetWeight = $('#sch_petWeight');


var addBtnContainer = $('.modalBtnContainer-addEvent');
var modifyBtnContainer = $('.modalBtnContainer-modifyEvent');


/* ****************
 *  새로운 일정 생성
 * ************** */
var newEvent = function (start, end, eventType) {

    $("#contextMenu").hide(); //메뉴 숨김

    modalTitle.html('새로운 일정');
    editType.val(eventType).prop('selected', true);
    editTitle.val('');
    editStart.val(start);
    editEnd.val(end);
    editDesc.val('');
    
    addBtnContainer.show();
    modifyBtnContainer.hide();
    eventModal.modal('show');

	
	
	function categoryHide(){
    		$(".sch_walk").hide();
    		$(".sch_ex").hide();
    		//$("#sch_exDetails").hide();
    		$(".sch_weight").hide();
    };
    categoryHide();
    function walkShow(){
    	$(".sch_walk").show();
    };
    function exShow(){
    	$(".sch_ex").show();
    };
    function weightShow(){
    	$(".sch_weight").show();
    };
    
	if(editType.val() == "산책"){
		//categoryHide();
		walkShow();
	}else if (editType.val() == "지출"){
		//categoryHide();
		exShow();
	}else if (editType.val() == "몸무게 측정"){
		weightShow();
	};
	

    	
    /******** 임시 RAMDON ID - 실제 DB 연동시 삭제 **********/
    //var eventId = 1 + Math.floor(Math.random() * 1000);
    /******** 임시 RAMDON ID - 실제 DB 연동시 삭제 **********/

    //새로운 일정 저장버튼 클릭
    $('#save-event').unbind();
    $('#save-event').on('click', function () {

        var eventData = {
            //_id: eventId,
            title: editTitle.val(),
            start: editStart.val(),
            end: editEnd.val(),
            description: editDesc.val(),
            type: editType.val(),
            username: editUsername.val(),
            backgroundColor: editColor.val(),
            textColor: '#ffffff',
            allDay: false,
            
            walk : editWalk.val(),
			expenditure : editExpenditure.val(),
			exDetails : editExDetails.val(),
			petWeight : editPetWeight.val()
        };

        if (eventData.start > eventData.end) {
            alert('끝나는 날짜가 앞설 수 없습니다.');
            return false;
        }

        if (eventData.title === '') {
            alert('일정명은 필수입니다.');
            return false;
        }
        
        if (eventData.type == '산책') {
        	if (eventData.walk == ''){
        		alert('산책시간을 입력해주세요');
	            return false;
        	}
        }else if (eventData.type == '지출'){
        	if (eventData.exDetails == ''){
        		alert('지출내역을 입력해주세요');
	            return false;
        	}
        }else if (eventData.type == '몸무게 측정'){
        	if (eventData.petWeight == ''){
        		alert('몸무게를 입력해주세요');
	            return false;
        	}
        }
                

        var realEndDay;

        if (editAllDay.is(':checked')) {
            eventData.start = moment(eventData.start).format('YYYY-MM-DD');
            //render시 날짜표기수정
            eventData.end = moment(eventData.end).add(1, 'days').format('YYYY-MM-DD');
            //DB에 넣을때(선택)
            realEndDay = moment(eventData.end).format('YYYY-MM-DD');

            eventData.allDay = true;
        }

        $("#calendar").fullCalendar('renderEvent', eventData, true);
        eventModal.find('input, textarea').val('');
        editAllDay.prop('checked', false);
        eventModal.modal('hide');

        //새로운 일정 저장
        $.ajax({
            type: "get",
            url: "mn/addSchedule.do",
            dataType:'json',
            data: {
                sch_title : eventData.title,
                sch_description : eventData.description,
                sch_start : eventData.start,
                sch_end : eventData.end,
                sch_type : eventData.type,
                sch_pname : eventData.username,
                sch_backgroundColor : eventData.backgroundColor,
                sch_textColor : eventData.textColor,
                sch_allDay : eventData.allDay
                //pet_num = 
                
            },
            success: function (response) {
            	alert('db저장을 해보자');
                //DB연동시 중복이벤트 방지를 위한
                //$('#calendar').fullCalendar('removeEvents');
                //$('#calendar').fullCalendar('refetchEvents');
                //calendar;
                alert(response);
                var fixedDate = response.map(function (array) {
                    if (array.allDay == true && array.schstart !== array.end) {
                        array.end = moment(array.end).add(1, 'days'); // 이틀 이상 AllDay 일정인 경우 달력에 표기시 하루를 더해야 정상출력
                    }
                    return array;
                });
                callback(fixedDate);
                
            }
        });
    });
};