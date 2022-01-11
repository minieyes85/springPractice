<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<section>
	<div class="mt-3 h1 text-center">
		예약하기
	</div>
	<div class="d-flex justify-content-center">
		<div class="w-50 font-weight-bold">
			<div class="mt-3">
				이름
				<input type="text" class="form-control" id="nameInput">
			</div>
			<div class="mt-3">
				예약날짜
				<input type="text" class="form-control" id="dateInput">
			</div>
			<div class="mt-3">
				숙박일수
				<input type="text" class="form-control" id="dayInput">
			</div>
			<div class="mt-3">
				숙박인원
				<input type="text" class="form-control" id="headcountInput">
			</div>
			<div class="mt-3">
				전화번호
				<input type="text" class="form-control" id="phoneNumberInput">
			</div>
			<div class="mt-3">
				<button class="btn btn-block btn-warning font-weight-bold" id="bookingBtn">예약하기</button>
			</div>
		</div>
	</div>

</section>

<script>
	$(document).ready(function(){
		
		$.datepicker.setDefaults({
            dateFormat: 'yy-mm-dd',
            prevText: '이전 달',
            nextText: '다음 달',
            monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            dayNames: ['일', '월', '화', '수', '목', '금', '토'],
            dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
            dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
            showMonthAfterYear: true,
            yearSuffix: '년'
        });

        $.datepicker._gotoToday = function(id) {
            $(id).datepicker('setDate', new Date()).datepicker('hide').blur();
        };
		
		$("#dateInput").datepicker();
		
		$("#bookingBtn").on("click",function(){
			let name = $("#nameInput").val();
			let date = new Date($("#dateInput").val());
			let day = $("#dayInput").val();
			let headcount = $("#headcountInput").val();
			let phoneNumber = $("#phoneNumberInput").val();
			
			if(name == "") {
				alert("이름을 입력하세요.");
			} else if(date == "") {
				alert("날짜를 입력하세요.");
			} else if(day == "") {
				alert("숙박일수를 입력하세요.");
			} else if(headcount == "") {
				alert("숙박인원을 입력하세요.");
			} else if(phoneNumber == "") {
				alert("전화번호를 입력하세요.");
			} else {
				
				$.ajax({
					method: "post",
					url: "/pension/booking.do",
					data:{
						"name" : name,
						"date" : date,
						"day" : day,
						"headcount" : headcount,
						"phoneNumber" : phoneNumber
					},
					success : function(data) {
						alert("이름 : " + name + "\n"
							+ "날짜 : " + $("#dateInput").val() + "\n"
							+ "숙박일수 : " + day + "\n"
							+ "숙박인원 : " + headcount + "\n"
							+ "전화번호 : " + phoneNumber + "\n"
							+ "예약 내역이 입력 되었습니다.");
						$("#mainDiv").load("/pension/reservList");
					},
					error : function() {
						alert("error");
					}
				});
			}
		})
	});

</script>