<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<section>
	<c:forEach var="reviewList" items="${reviewList }" begin="0" end="0">
		<div class="h1 mt-2 mb-3 ml-3">${reviewList.storeName }- 리뷰</div>
	</c:forEach>
	<div>
		<c:forEach var="reviewList" items="${reviewList }">
			<div class="border border-info rounded p-4 mb-3">
				<div class="d-flex">
					<div class="h2 ml-2 font-weight-bold">${reviewList.userName }</div>
					<div class="h4 ml-2">점수 : ${reviewList.point }</div>
				</div>
				<div class="h4 ml-2">날짜 : ${reviewList.createdAt }</div>
				<div class="h4 ml-2">리뷰 : ${reviewList.review }</div>
				<div class="h4 ml-2">메뉴 : ${reviewList.menu }</div>
			</div>
		</c:forEach>
	</div>

</section>