<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<section id="addArea">
	<div class="h1 m-3">날씨 입력</div>

	<div class="ml-3 mt-5" id="addForm">
	<form action="/p05/05_add.do" method="post">
		<div class="d-flex">
			<div class="d-flex align-items-center w-100">
				<div class="w-50 text-right mr-3">날짜</div>
				<input name="dateString" type="date" class="form-control">
			</div>
			<div class="d-flex align-items-center w-100">
				<div class="w-50 text-right mr-3">날씨</div>
				<select name="weather" class="form-control">
					<option value="맑음" selected>맑음</option>
					<option value="구름조금">구름조금</option>
					<option value="흐림">흐림</option>
					<option value="비">비</option>
				</select>
			</div>
			<div class="d-flex align-items-center w-100">
				<div class="w-50 text-right mr-3">미세먼지</div>
				<select name="microDust" class="form-control">
					<option value="좋음" selected>좋음</option>
					<option value="보통">보통</option>
					<option value="나쁨">나쁨</option>
					<option value="최악">최악</option>
				</select>
			</div>
		</div>

		<div class="d-flex mt-3">
		
			<div class="d-flex align-items-center w-100">
				<div class="w-50 text-right mr-3">기온</div>
				<div class="input-group">
					<input name="temperatures" type="text" class="form-control">
					<div class="input-group-append">
						<span class="input-group-text">℃</span>
					</div>
				</div>
			</div>
			
			<div class="d-flex align-items-center w-100">
				<div class="w-50 text-right mr-3">강수량</div>
				<div class="input-group">
					<input name="precipitation" type="text" class="form-control">
					<div class="input-group-append">
						<span class="input-group-text">mm</span>
					</div>
				</div>
			</div>
			
			<div class="d-flex align-items-center w-100">
				<div class="w-50 text-right mr-3">풍속</div>
				<div class="input-group">
					<input name="windSpeed" type="text" class="form-control">
					<div class="input-group-append">
						<span class="input-group-text">km/h</span>
					</div>
				</div>
			</div>
			
		</div>

		<div class="d-flex justify-content-end mt-4">
			<button id="submit" type="submit" class="btn btn-success">저장</button>
		</div>
	</form>
	</div>


</section>