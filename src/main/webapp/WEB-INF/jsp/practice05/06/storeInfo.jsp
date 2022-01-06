<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section>
	<div class="h1 mt-2 mb-3 ml-3">우리동네 가게</div>

	<div>
		<c:forEach var="storeList" items="${storeList }">
			<div class="border border-info rounded p-4 mb-3"
				OnClick="location.href ='/p05/06_storeInfo?id=${storeList.id }&storeName=${storeList.name }'"
				style="cursor: pointer;">
				<div class="h2 ml-2 font-weight-bold">${storeList.name }</div>
				<div class="h4 ml-2">전화 번호 :
					${storeList.phoneNumber }</div>
				<div class="h4 ml-2">주소 : ${storeList.address }</div>
			</div>
		</c:forEach>
	</div>

</section>