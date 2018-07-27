<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Notice</title>
<style type="text/css">
.jth {
	background: #47C83E;
	text-align: center;
	color: white;
}

.ji {
	background: #47C83E;
	text-align: center;
	color: white;
}
</style>
</head>
<body>
	<div class="inbox-body">
		<div>
			<p>
				<img src="/ex/resources/img/notice.png" />
			</p>
			<h4 style="margin-left: 30px;">공지사항 게시판 입니다.</h4>
		</div>
		<div class="mail-option">
			<div class="chk-all">
				<input type="checkbox" class="mail-checkbox mail-group-checkbox">
				<div class="btn-group">
					<a data-toggle="dropdown" href="#" class="btn mini all"
						aria-expanded="false"> All <i class="fa fa-angle-down "></i>
					</a>
				</div>
			</div>

			<ul class="unstyled inbox-pagination">
				<a data-placement="top" href="/ex/notice/write"
					class="ji btn mini fa fa-angle-right pagination-right"> <i
					class="ji">글쓰기</i>
				</a>
			</ul>
		</div>
		<table class="table table-inbox table-hover">
			<tbody>
				<tr class="">
					<th class="jth">번호</th>
					<th class="jth">작성자</th>
					<th class="jth">제목</th>
					<th class="jth">날짜</th>
					<th class="jth">조회수</th>
				</tr>
				<tr class="">
					<td class="inbox-small-cells">1</td>
					<td class="view-message dont-show">관리자</td>
					<td class="view-message"><a href="/ex/notice/content">첫 공지사항</a></td>
					<td class="view-message inbox-small-cells">2018.07.27</td>
					<td class="view-message text-right">24</td>
				</tr>
			</tbody>
		</table>
	</div>

</body>
</html>