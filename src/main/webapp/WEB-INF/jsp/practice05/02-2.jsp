<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<title>JSTL Core 라이브러리 2 / 2. JSTL 응용하기</title>
</head>

<body>
	<div class="container">
		<div class="h1 mt-3">
			멤버쉽
		</div>
		<div>
		<table class="table text-center">
			<thead>
				<tr>
					<td>이름</td>
					<td>전화번호</td>
					<td>등급</td>
					<td>포인트</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="membership" items="${membership }" varStatus="status">
				<tr>
					<td>${membership.name }</td>
					<td>${membership.phoneNumber }</td>
					<c:choose>
						<c:when test="${membership.grade == 'VIP' }">
							<td class="text-danger">${membership.grade }</td>
						</c:when>
						<c:when test="${membership.grade == 'GOLD' }">
							<td class="text-warning">${membership.grade }</td>
						</c:when>
						<c:otherwise>
							<td>${membership.grade }</td>
						</c:otherwise>
					</c:choose>
					
					<c:choose>
						<c:when test="${membership.point > 5000 }">
							<td class="text-primary">${membership.point }P</td>
						</c:when>
						<c:otherwise>
							<td>${membership.point }P</td>
						</c:otherwise>
					</c:choose>					
				</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
	</div>


</body>

</html>