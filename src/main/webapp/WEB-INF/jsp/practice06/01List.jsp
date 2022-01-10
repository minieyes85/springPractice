<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<meta charset="UTF-8">
<title>즐겨찾기 목록</title>
</head>
<body>
	<div class="container">
		<div class="h1 mt-3 mb-3">즐겨찾기 목록</div>
		<div>
			<table class="table">
				<thead>
					<tr>
						<td>No.</td>
						<td>이름</td>
						<td>주소</td>
						<td></td>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="favorite" items="${favoritesList }"
						varStatus="status">
						<tr>
							<td>${status.count }</td>
							<td>${favorite.name }</td>
							<td>${favorite.url }</td>
							<td>
								<button type="button" class="deleteBtn btn btn-danger"
									value="${favorite.id }">삭제</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>

			</table>
			
			<div class="d-flex justify-content-end">
				<button type="button" class="btn btn-info" onclick="location.href='/p06/01' ">돌아가기</button>
			</div>
		</div>

	</div>

</body>

<script type="text/javascript">
	$(document).ready(function() {
		$(".deleteBtn").on("click",function() {
			var id = $(this).val();
			$.ajax({
				method : "POST",
				url : "/p06/delete", //controller에서 삭제 요청
				data : {
					"id" : id
					},
				dataType : "json", 
				success : function(data) {
					var count = data;
					alert("즐겨찾기가 삭제 되었습니다.");
					window.location.href = "/p06/01_list";
				},
				error : function() {
					alert("error");
				}
				});
			});
		});
</script>
</html>