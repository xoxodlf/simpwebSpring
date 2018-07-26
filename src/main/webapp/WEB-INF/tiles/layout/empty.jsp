<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<link rel="stylesheet" id="bootstrap-css" href="<c:url value="/resources/css/bootstrap.min.css" />">
<link href="<c:url value="/resources/css/layout.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<title>Insert title here</title>
</head>
<body>
	<div id="wrapper">
		<div id="content" >
			<tiles:insertAttribute name="content" />
		</div>
	</div>
</body>
</html>