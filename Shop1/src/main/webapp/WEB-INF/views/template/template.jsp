<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- tiles 설정에 따라서 내용을 가져옴 - tiles-config.xml 파일에서 title이라는 이름의 속성을 추가 -->
<title><tiles:insertAttribute name="title"/></title>
<!-- 태그 초기화 작업 -->
<link rel="stylesheet" href="/resources/common/reset.css">

<!-- 제이쿼리 문법을 로딩 -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>

<!-- 부트스트랩 사용을 위해 css, js를 로딩 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<!-- 부트스트랩 사이트의 js는 무조건 제이쿼리 문법 로딩하는 코드 기준 아래에 작성 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
<style type="text/css">
.container-fluid{
	width: 90%;
}
body{
	line-height: 1;
	font-family: 'SLEIGothicTTF';
	font-size: 18px;
}
</style>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col">
			<!-- tiles-config.xml 파일에서 name이라는 이름의 속성을 추가 -->
			<tiles:insertAttribute name="menu"/>
		</div>
	</div>
	<div class="row">
		<!-- 두 열을 class="col"로 적으면 균일한 크기를 가짐 -->
		<!-- bootstrap은 열을 12개로 나눔 -->
		<div class="col-2">
			<!-- tiles-config.xml 파일에서 side라는 이름의 속성을 추가 -->
			<tiles:insertAttribute name="side"/>
		</div>
		<div class="col-10">
			<!-- tiles-config.xml 파일에서 body라는 이름의 속성을 추가 -->
			<tiles:insertAttribute name="body"/>
		</div>
	</div>
</div>
</body>
</html>