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
				<div id="isMemberRadio" class="d-flex">
					<div class="ml-3">
						<label>회원<input type="radio" name="isMember"
							value="member" checked></label>
					</div>
					<div class="ml-3">
						<label>비 회원<input type="radio" name="isMember"
							value="notMember"></label>
					</div>
				</div>
			</div>

		</div>
		<div id="bookCheckInputPanel" class=" mt-2">
			<div id="memberPanel" class="">
				<div class="d-flex">
					<div class="inputKeys ml-3 mt-1 text-center">아이디</div>
					<div class="inputValues">
						<div class="input-group input-group-sm mb-2">
							<input type="text" class="form-control" id="inputId">
						</div>
					</div>
				</div>

				<div class="d-flex mt-1">
					<div class="inputKeys ml-3 mt-1 text-center">비밀번호</div>
					<div class="inputValues">
						<div class="input-group input-group-sm mb-2">
							<input type="password" class="form-control" id="inputPw">
						</div>
					</div>
				</div>
			</div>

			<div id="notMemberPanel" class="d-none">
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
				<div class="d-flex">
					<div class="inputKeys ml-3 mt-1 text-center">날짜</div>
					<div class="inputValues">
						<div class="input-group input-group-sm mb-2">
							<input type="text" class="form-control" id="date">
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