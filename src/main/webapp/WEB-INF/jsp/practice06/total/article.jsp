<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<article class="d-flex">
	<div id="title" class="d-flex justify-content-center">
		<span id="titleText" class="m-5"> 실시간 <br> 예약하기
		</span>

	</div>

	<div id="bookCheck">
		<div>
			<div class="d-flex align-items-end mt-3 ml-4">
				<div id="bookCheckTitle" class="mb-2">예약확인</div>
			</div>

		</div>
		<div id="bookCheckInputPanel" class=" mt-2">
			<div>
				<div class="d-flex">
					<div class="inputKeys ml-3 mt-1 text-center">이름</div>
					<div class="inputValues">
						<div class="input-group input-group-sm mb-2">
							<input type="text" class="form-control" id="name">
						</div>
					</div>
				</div>
				<div class="d-flex">
					<div class="inputKeys ml-3 mt-1 text-center">전화번호</div>
					<div class="inputValues">
						<div class="input-group input-group-sm mb-2">
							<input type="text" class="form-control" id="phoneNumber">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="d-flex justify-content-end mt-3 mr-5">
			<div id="buttonPanel">
				<button type="button" class="btn btn-success" id="button">조회
					하기</button>
			</div>

		</div>
	</div>

	<div id="contact" class="d-flex justify-content-center">
		<div class="m-5">
			<div id="contactTitle">예약문의:</div>
			<div id="contactNumber">
				010- <br> 000-1111
			</div>
		</div>
	</div>

</article>

<script>
	$(document).ready(
			function() {

				$("#intro").on("click", function() {
					$("#mainDiv").load("/pension/main.do")
				});

				$("#reservation").on("click", function() {
					$("#mainDiv").load("/pension/reservation.do")
				});

				$("#resList").on("click", function() {
					$("#mainDiv").load("/pension/reservList")
				});

				var imgs = [ "test06_banner1.jpg", "test06_banner2.jpg",
						"test06_banner3.jpg", "test06_banner4.jpg" ]
				var imgIndex = 1;

				setInterval(function() {
					$("#img").attr("src",
							"/resources/static/img/pension/" + imgs[imgIndex]);
					imgIndex++;
					if (imgIndex == 4) {
						imgIndex -= 4;
					}
				}, 3000);

				$("#button").on("click", function() {
					let name = $("#name").val();
					let phoneNumber = $("#phoneNumber").val();

					if(name == "") {
						alert("이름을 입력 하세요.");
					} else if(phoneNumber == "") {
						alert("전화번호를 입력 하세요.");
					} else if(phoneNumber.slice(0, 3) != "010") {
						alert("010 으로 시작하는 번호만 입력 가능합니다.");
					} else {
						$.ajax({
							method : "post",
							url : "/pension/findBooking.do",
							data : {
								"name" : name,
								"phoneNumber" : phoneNumber
							},
							success : function(data){
								if(data.id == null) {
									
									alert("조회 결과가 없습니다.");
									
								} else {
									let rawDate = new Date(data.date);
									let printDate = rawDate.getFullYear() + "-"
													+ (rawDate.getMonth() + 1) + "-"
													+ rawDate.getDate();
									
									console.log(printDate);
									
									alert("이름 : " + data.name + "\n"
										+ "날짜 : " + printDate + "\n"
										+ "일수 : " + data.day + "\n"
										+ "인원 : " + data.headcount + "\n"
										+ "상태 : " + data.state);
								}
							},
							error : function() {
								alert("error");
							}
						});
					}
				});

			});
</script>