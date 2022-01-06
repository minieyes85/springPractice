<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

<title>Insert title here</title>
</head>
<body>

<button type="button" id="requestBtn">Request Button</button>

</body>


<script>
	$(function() {

		$("#requestBtn").on("click", function() {

			$.ajax("/p05/05")

			.done(function() {
				window.location.replace("/p05/05")
				alert("요청 성공");

			})

			.fail(function() {

				alert("요청 실패");

			})

			.always(function() {

				alert("요청 완료");

			});

		});

	});
</script>

</html>