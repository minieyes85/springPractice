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

<title>JSP Core 라이브러리 1</title>

</head>

<body>

<c:set var="number1" value="36" />
<c:set var="number2" value="3" />
	<div class="container">
		<div class="h1">
			1.JSTL core 변수
		</div>
		<div>첫번째 숫자 : <c:out value="${number1}" /></div>
		<div>두번째 숫자 : <c:out value="${number2}" /></div>
		<hr>
		<div class="h1">
			2.JSTL core 연산
		</div>
		<div>더하기 : <c:out value="${number1 + number2}" /></div>
		<div>빼기 : <c:out value="${number1 - number2}" /></div>
		<div>곱하기 : <c:out value="${number1 * number2}" /></div>
		<div>나누기 : <c:out value="${number1 / number2}" /></div>
		<hr>
		<div class="h1">
			3.JSTL core out
		</div>
		<c:set var="textOut" value="<title>core out</title>" />
		<div><c:out value="${textOut}" /></div>
		<hr>
		<div class="h1">
			4.JSTL core if
		</div>
		<div>
		<c:set var="avg" value="${((number1 + number2) / 2)}" />
		<c:if test="${avg > 10}">
			<h1><c:out value="${avg}" /></h1>
		</c:if>
		<c:if test="${avg <= 10}">
			<h3><c:out value="${avg}" /></h3>
		</c:if>
		</div>
		<hr>
		<div class="h1">
			5.JSTL core if
		</div>
		<c:set var="times" value="${number1*number2}" />
		<c:if test="${times > 100}">
		</c:if>
		
	</div>

</body>

</html>