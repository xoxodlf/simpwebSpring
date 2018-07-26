<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" id="bootstrap-css"
	href="<c:url value="/resources/css/font-awesome.min.css" />">
<link rel="stylesheet" id="bootstrap-css"
	href="<c:url value="/resources/css/sign-up-style.css" />">
</head>
<body>
	<article class="container">
	<div class="page-header">
		<h1>
			회원가입 <small>basic form</small>
		</h1>
	</div>
	<div class="col-md-6 col-md-offset-3">
		<form role="form">
			<div class="form-group">
				<label for="InputEmail">이메일 주소</label> <input type="email"
					class="form-control" id="InputEmail" placeholder="이메일 주소">
			</div>
			<div class="form-group">
				<label for="InputPassword1">비밀번호</label> <input type="password"
					class="form-control" id="InputPassword1" placeholder="비밀번호">
			</div>
			<div class="form-group">
				<label for="InputPassword2">비밀번호 확인</label> <input type="password"
					class="form-control" id="InputPassword2" placeholder="비밀번호 확인">
				<p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
			</div>
			<div class="form-group">
				<label for="username">이름</label> <input type="text"
					class="form-control" id="username" placeholder="이름을 입력해 주세요">
			</div>
			<div class="form-group">
				<label for="username">휴대폰 인증</label> <input type="tel"
					class="form-control" id="phone" placeholder="- 없이 입력해 주세요">
			</div>
			<div class="form-group">
				<label>약관 동의</label>
				<div data-toggle="buttons">
					<label class="btn btn-primary active"> <span
						class="fa fa-check"></span> <input id="agree" type="checkbox"
						autocomplete="off" checked>
					</label> <a href="#">이용약관</a>에 동의합니다.
				</div>
			</div>
			<div class="form-group text-center">
				<button id="signup" type="button" class="btn btn-info">
					회원가입<i class="fa fa-check spaceLeft"></i>
				</button>
				<button type="button" class="btn btn-warning">
					가입취소<i class="fa fa-times spaceLeft"></i>
				</button>
			</div>
		</form>
	</div>
	</article>
	<script type="text/javascript">
		$("#signup").on('click', (function() {
			location.href="/ex/user/";
		}));
	</script>
</body>
</html>
