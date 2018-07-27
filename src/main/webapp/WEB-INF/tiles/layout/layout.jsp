<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<link
	href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet" id="bootstrap-css">
<link href="<c:url value="/resources/css/layout.css" />" rel="stylesheet">
<script
	src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<title>Insert title here</title>
</head>
<body>
	<div id="wrapper" class="mail-box">
		<aside id="header" class="sm-side"> <tiles:insertAttribute
			name="header" /> </aside>
		<aside id="content" class="lg-side">
		<div class="inbox-head">
			<h3>성공회대학교 글로컬IT학과 인도창</h3>
			<form action="#" class="pull-right position">
				<div class="input-append">
					<input type="text" class="sr-input" placeholder="Search">
					<button class="btn sr-btn" type="button">
						<img src="/ex/resources/img/search.png" width="40px">
					</button>
				</div>
			</form>
		</div>
		<tiles:insertAttribute name="content" /> </aside>
		<div id="footer">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>