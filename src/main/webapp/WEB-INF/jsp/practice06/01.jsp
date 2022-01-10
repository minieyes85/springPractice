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

<title>AJAX로 submit 대신 웹 요청하기</title>
</head>

<body>
	<div class="container">
		<div class="h1 mt-3 mb-3">즐겨찾기 추가하기</div>
		<div class="mb-3">
			제목 <input type="text" class="form-control" id="name">
		</div>
		<div>
			주소
			<div class="d-flex">
				<input type="text" class="form-control mr-3" id="url">
				<button type="button" class="btn btn-info" id="duplCheck">중복확인</button>
			</div>
		</div>
		<div id="indicator" class="mb-4">
			
		</div>
		<div class="mb-3">
			<button type="button" class="btn btn-secondary btn-block" id="addBtn" disabled>중복체크 필요</button>
		</div>

	</div>

</body>

<script type="text/javascript">
	$(document).ready(function() {
		$("#addBtn").on("click",function() {
						var name = $("#name").val();
						var url = $("#url").val();
						if (name == "") {
							alert("사이트 제목을 입력하세요.");
						} else if (url == "") {
							alert("사이트 주소를 입력하세요.");
						} else if (!url.startsWith("http://")
								&& !url.startsWith("https://")) {
							alert("주소 앞에 protocol을 정확히 입력하세요.");
						} else {
							$.ajax({
								method : "POST",
								url : "/p06/add",
								data : {
									"name" : $("#name").val(),
									"url" : $("#url").val()
								},
								dataType : "json",
								success : function(returnedData) {
									alert(returnedData + "건 입력 되었습니다.");
									window.location.href = "/p06/01_list";
								},
								error : function() {
									alert("error");
								}
							});
						}
					});
		$("#duplCheck").on("click",function(){
			$.ajax({
				method : "GET",
				url : "/p06/callList",
				dataType : "json",
				success : function(data) {
					var list = data;
					var flag = false;
					$(list).each(function(ind, obj){
						if($("#url").val() == obj["url"]){
							flag = true;
						};
					});
					
					if(flag) {
						alert("중복검사 완료");
						$("#indicator").attr("class", "text-danger");
						$("#indicator").text("중복된 주소 입니다.");
					} else {
						alert("중복검사 완료");
						$("#indicator").attr("class", "text-primary");
						$("#indicator").text("등록 가능한 주소 입니다.");
						$("#addBtn").removeAttr("disabled");
						$("#addBtn").attr("class", "btn btn-success btn-block");
						$("#addBtn").text("추가");
					}
				},
				error : function() {
					alert("error");
				}
			});
		});		
	});
</script>

</html>