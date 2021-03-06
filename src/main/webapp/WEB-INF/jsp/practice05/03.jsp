<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<title>JSTL fmt 라이브러리</title>
</head>

<body>

	<div class="container">
		<div class="h1 mt-3">
			1. 후보자 득표율
		</div>
		<div>
			<table class="table text-center">
				<thead>
					<tr>
						<td>기호</td>
						<td>득표 수</td>
						<td>득표 율</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="candidateInfo" items="${candidatesInfo }" varStatus="status">
					<tr>
						<td>${status.count }</td>
						<td><fmt:formatNumber value="${candidateInfo.vote }" /></td>
						<td><fmt:formatNumber value="${candidateInfo.rate }" type="percent"/></td>
					</tr>
					</c:forEach>
				</tbody>
			
			</table>
		</div>
		
		<div class="h1 mt-3">
			2. 카드 명세서
		</div>
		<div>
			<table class="table text-center">
				<thead>
					<tr>
						<td>사용처</td>
						<td>가격</td>
						<td>사용 날짜</td>
						<td>할부</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="cardBills" items="${cardBills }">
					<tr>
						<td>${cardBills.store }</td>
						<td><fmt:formatNumber type="currency" currencySymbol="&#8361;" value="${cardBills.pay }" /></td>
						<fmt:parseDate var="date" value="${cardBills.date }" pattern="yyyy-MM-dd"  />
						<td><fmt:formatDate value="${date }" pattern="yyyy년 M월 dd일" /></td>
						<td>${cardBills.installment }</td>
					</tr>
					</c:forEach>
				</tbody>
			
			</table>
		</div>
	
	</div>

</body>

</html>