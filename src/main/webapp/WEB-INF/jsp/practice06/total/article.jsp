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