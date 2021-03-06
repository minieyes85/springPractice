<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<section>

	<div>
		<div class="h1 text-center mt-3">예약 목록 보기</div>
		<div class="mt-3">
			<table class="table text-center">
				<thead class="font-weight-bold">
					<tr>
						<td>이름</td>
						<td>예약날짜</td>
						<td>숙박일수</td>
						<td>숙박인원</td>
						<td>전화번호</td>
						<td>예약상태</td>
						<td></td>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="bookingList" items="${bookingList }">
						<tr>
							<td>${bookingList.name }</td>
							<td><fmt:formatDate value="${bookingList.date }"
									pattern="yyyy년 MM월 dd일" /></td>
							<td>${bookingList.day }</td>
							<td>${bookingList.headcount }</td>
							<td>${bookingList.phoneNumber }</td>
							<c:choose>
								<c:when test="${bookingList.state == '대기중'}">
									<td class="text-info">${bookingList.state }</td>
								</c:when>
								<c:when test="${bookingList.state == '확정'}">
									<td class="text-success">${bookingList.state }</td>
								</c:when>
							</c:choose>
							<td>
								<button class="delReservBtn btn btn-danger"
									value="${bookingList.id }">삭제</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</section>

<script>
	$(".delReservBtn").on("click", function() {
		var id = $(this).val();
		$.ajax({
			method : "POST",
			url : "/pension/deleteReserv",
			data : {
				"id" : id
			},
			success : function(data) {
				alert("예약 내역이 삭제 되었습니다.");
				$("#mainDiv").load("/pension/reservList");
			},
			error : function() {
				alert("error");
			}
		});
	});
</script>