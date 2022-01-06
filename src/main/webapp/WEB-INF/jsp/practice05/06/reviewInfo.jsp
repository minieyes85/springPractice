<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<section>
	<div class="h1 mt-2 mb-3 ml-3">${storeName }-리뷰</div>
	<c:if test="${count == 0 }">
		<div class="h2 font-weight-bold p-3 ml-3">작성된 리뷰가 없습니다.</div>
	</c:if>
	<div>
		<c:forEach var="reviewList" items="${reviewList }">
			<div class="border border-info rounded p-4 mb-3">
				<div class="d-flex">
					<div class="h2 ml-2 font-weight-bold">${reviewList.userName }</div>
					<div class="ml-2">
						<c:set var="point" value="${reviewList.point }" />
						<c:forEach begin="1" end="5">
							<c:choose>
								<c:when test="${point >= 1 }">
									<img src="/resources/static/img/star_fill.png" width="25px">
									<c:set var="point" value="${point-1 }" />
								</c:when>
								<c:when test="${point < 1 && point > 0 }">
									<img src="/resources/static/img/star_half.png" width="25px">
									<c:set var="point" value="${point-1 }" />
								</c:when>
								<c:otherwise>
									<img src="/resources/static/img/star_empty.png" width="25px">
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</div>
				</div>
				<div class="h5 text-secondary ml-2">
					<fmt:formatDate value="${reviewList.createdAt }"
						pattern="yyyy년 MM월 dd일" />
				</div>
				<div class="h4 ml-2">${reviewList.review }</div>
				<div class="d-flex">
					<div class="ml-2 p-2 rounded bg-light text-secondary">${reviewList.menu }</div>
				</div>
			</div>
		</c:forEach>
	</div>

</section>