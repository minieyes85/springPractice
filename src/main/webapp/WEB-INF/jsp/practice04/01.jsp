<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<title>Seller 추가</title>
</head>
<body>
	<div class="container">
		<form method="post" action="/p04/add_seller">
		
		<div class="h1 mt-3">판매자 추가</div>
		<div class="mt-3">
		닉네임
		<input class = "input-group" type="text" name="nickname">
		</div>
		
		<div class="mt-3">
		프로필 사진 url
		<input class = "input-group" type="text" name="profileImageUrl">
		</div>
		
		<div class="mt-3">
		온도
		<input class = "input-group" type="text" name="temperature">
		</div>
		
		<div class="mt-3">
		<button class="btn btn-primary" type="submit">추가하기</button>
		</div>
		
		</form>
	</div>

</body>
</html>