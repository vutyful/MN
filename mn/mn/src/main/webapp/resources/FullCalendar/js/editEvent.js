/* ****************
 *  일정 편집
 * ************** */
var editEvent = function (event, element, view) {

    $('#deleteEvent').data('id', event._id); //클릭한 이벤트 ID

    $('.popover.fade.top').remove();
    $(element).popover("hide");

    if (event.allDay === true) {
        editAllDay.prop('checked', true);
    } else {
        editAllDay.prop('checked', false);
    }

    if (event.end === null) {
        event.end = event.start;
    }

    if (event.allDay === true && event.end !== event.start) {
        editEnd.val(moment(event.end).subtract(1, 'days').format('YYYY-MM-DD HH:mm'))
    } else {
        editEnd.val(event.end.format('YYYY-MM-DD HH:mm'));
    }

    modalTitle.html('일정 수정');
    editTitle.val(event.title);
    editStart.val(event.start.format('YYYY-MM-DD HH:mm'));
    editType.val(event.type);
    editDesc.val(event.description);
    editColor.val(event.backgroundColor).css('color', event.backgroundColor);

    addBtnContainer.hide();
    modifyBtnContainer.show();
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
	
    

    //업데이트 버튼 클릭시
    $('#updateEvent').unbind();
    $('#updateEvent').on('click', function () {

        if (editStart.val() > editEnd.val()) {
            alert('끝나는 날짜가 앞설 수 없습니다.');
            return false;
        }

        if (editTitle.val() === '') {
            alert('일정명은 필수입니다.')
            return false;
        }
        
        
        if (editType.val() == "산책"){
        	if (editWalk.val() ==''){
        		alert('산책시간을 입력해주세요');
	            return false;
        	}
        }
        
        if (editType.val() == "지출"){
        	if (editExDetails.val() ==''){
        		alert('지출내역을 입력해주세요');
	            return false;
        	}
        }
        
        if (editType.val() == "몸무게 측정"){
        	if (editPetWeight.val() == ''){
        		alert('몸무게를 입력해주세요');
	            return false;
	        }
        }

        var statusAllDay;
        var startDate;
        var endDate;
        var displayDate;

        if (editAllDay.is(':checked')) {
            statusAllDay = true;
            startDate = moment(editStart.val()).format('YYYY-MM-DD');
            endDate = moment(editEnd.val()).format('YYYY-MM-DD');
            displayDate = moment(editEnd.val()).add(1, 'days').format('YYYY-MM-DD');
        } else {
            statusAllDay = false;
            startDate = editStart.val();
            endDate = editEnd.val();
            displayDate = endDate;
        }

        eventModal.modal('hide');

        event.allDay = statusAllDay;
        event.title = editTitle.val();
        event.start = startDate;
        event.end = displayDate;
        event.type = editType.val();
        event.backgroundColor = editColor.val();
        event.description = editDesc.val();
        event.username = editUsername.val();

        $("#calendar").fullCalendar('updateEvent', event);

        //일정 업데이트
        $.ajax({
            type: "get",
            url: "mn/updateSchedule.do",
            data: {
                sch_id : event.sch_id,
                sch_allDay : event.allDay,
		        sch_title : event.title,
		        sch_start : event.start,
		        sch_end : event.end,
		        sch_type : event.type,
		        sch_backgroundColor : event.backgroundColor,
		        sch_description : event.description,
		        sch_pname : event.username
            },
            success: function (response) {
                alert('수정되었습니다.')
            }
        });

    });
	// 삭제버튼
	$('#deleteEvent').on('click', function () {
	    
	    //$('#deleteEvent').unbind();
	    $("#calendar").fullCalendar('removeEvents', $(this).data('id'));
	    eventModal.modal('hide');
	
	    //삭제시
	    $.ajax({
	        type: "get",
	        url: "mn/deleteSchedule.do",
	        data: {
	            sch_id : event.sch_id
	        },
	        success: function (response) {
	            alert('삭제되었습니다.');
	            calendar;
	        }
	    });
	
	});
};
