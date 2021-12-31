<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<meta charset="UTF-8">
<title>공인중개사 추가</title>
</head>
<body>
	<div class="container">
		<form method="post" action="/p041/addRealtor">		
		<div class="h1 mt-3">
			공인중개사 추가
		</div>
		
		<div class="mt-3">
			상호명
			<input class="form-control" type="text" name="office">
		</div>
		
		<div class="mt-3">
			전화번호
			<input class="form-control" type="text" name="phoneNumber">
		</div>
		
		<div class="mt-3">
			주소
			<input class="form-control" type="text" name="address">
		</div>
		
		<div class="mt-3">
			등급
			<input class="form-control" type="text" name="grade">
		</div>
		
		<div class="mt-3">
			<button class="btn btn-primary" type="submit">추가하기</button>
		</div>
		</form>
	
	
	</div>

</body>
</html>