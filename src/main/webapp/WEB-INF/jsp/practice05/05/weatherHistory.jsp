<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<section id="infoArea">
	<div class="mt-3">
		<div class="ml-3 h2">과거날씨</div>
		<table class="table text-center">
			<thead>
				<tr>
					<td>날짜</td>
					<td>날씨</td>
					<td>기온</td>
					<td>강수량</td>
					<td>미세먼지</td>
					<td>풍속</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="weather" items="${weatherHistory}">
					<tr>
						<td><fmt:formatDate value="${weather.date}"
								pattern="yyyy년 MM월 dd일" /></td>
						<td><c:choose>
								<c:when test="${weather.weather == '맑음'}">
									<img src="/resources/static/img/sunny.jpg">
								</c:when>
								<c:when test="${weather.weather == '구름조금'}">
									<img src="/resources/static/img/partlyCloudy.jpg">
								</c:when>
								<c:when test="${weather.weather == '흐림'}">
									<img src="/resources/static/img/cloudy.jpg">
								</c:when>
								<c:when test="${weather.weather == '비'}">
									<img src="/resources/static/img/rainy.jpg">
								</c:when>
								<c:otherwise>

								</c:otherwise>
							</c:choose></td>
						<td>${weather.temperatures}</td>
						<td>${weather.precipitation}mm</td>
						<td>${weather.microDust}</td>
						<td>${weather.windSpeed}km/h</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</section>