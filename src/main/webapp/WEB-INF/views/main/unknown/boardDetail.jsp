<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.tinput {
	width: 100%;
	color: black;
}

.tdc {
	text-align: center;
	min-width: 64px;
}

.table_content {
	text-align: center;
	min-width: 740px;
	height: 400px;
	overflow: auto;
	text-align: left;
}

.ta_content {
	min-width: 810px;
	min-height: 360px;
	resize: none;
	width: 100%;
	height: 100%;
}

.table-max {
	max-width: 965px;
}

.right {
	text-align: right;
}

.left {
	text-align: left;
}

td {
	text-align: center;
}

.commentbox {
	max-width: 965px;
	min-width: 700px;
	resize: none;
}
</style>
</head>
<body>
	<div class="inbox-body">
		<div>
			<p>
				<img src="/ex/resources/img/anonymous.png" />
			</p>
			<h4 style="margin-left: 30px;">익명게시판입니다. 비방은 사절입니다.</h4>
		</div>
		<form id="boardForm">
			<table class="table table-inbox table-max">
				<colgroup>
					<col width="10%" />
					<col width="*" />
					<col width="10%" />
					<col width="10%" />
					<col width="10%" />
				</colgroup>
				<tr class="t_thr">
					<td class="tdc">제목 :</td>
					<td colspan="3">${unknown.aTitle}</td>
					<td></td>
				</tr>
				<tr>
					<td class="tdc">내용 :</td>
					<td class="table_content" colspan="3">${unknown.aContent}</td>
					<td><input name="articleNo" type="hidden"
						value="${unknown.articleNo}" /></td>
				</tr>
			</table>
			<div class="table-max" style="width: 100%; margin-top: 20px;">
				<div class="left" style="width: 49.5%; display: inline-block;">
					<a id="list" class="tbtn btn"> <i class="ti">글목록</i></a>
				</div>
				<div class="right" style="width: 50%; display: inline-block;">
					<a id="modify"
						href="/ex/unknown/modify?articleNo=${unknown.articleNo}"
						class="tbtn btn"> <i class="ti">글수정</i></a> <a id="delete"
						class="tbtn btn"> <i class="ti">글삭제</i></a>
				</div>
			</div>
		</form>
		<div class="table-max" style="width: 100%; margin-top: 20px;">
			<form id="replyForm">
				<table class="table table-inbox table-max">
					<colgroup>
						<col width="12%" />
						<col width="*" />
						<col width="10%" />
						<col width="10%" />
						<col width="10%" />
					</colgroup>
					<tr>
						<td class="tdc t_thr" style="vertical-align: middle;">댓글달기</td>
						<td colspan="3"><textarea class="commentbox" name="cContent"></textarea></td>
						<td><a id="replyAdd" class="tbtn btn"> <i class="ti">등록</i></a><input
							type="hidden" name="userNo" value="1" /><input type="hidden"
							name="articleNo" value="${unknown.articleNo}" /></td>
					</tr>
					<c:choose>
						<c:when test="${empty replyList }">
							<tr>
								<td class="ttdh" colspan="5">댓글이 없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach items="${replyList}" var="reply">
								<tr style="margin-top: 20px;">
									<td class="tdc t_thr">익명입니다</td>
									<td colspan="3">${reply.cContent}</td>
									<td>${reply.cDate}</td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</table>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		$("#list").on('click', (function() {
			location.href = "/ex/unknown/listSearch?searchType=a&keyword=";
		}));

		$("#delete").on('click', (function() {
			var form = $("#boardForm");
			form.attr("action", "/ex/unknown/delete");
			form.attr("method", "post");
			form.submit();
		}));

		$("#replyAdd").on('click', (function() {
			var form = $("#replyForm");
			form.attr("action", "/ex/unknown/insertReply");
			form.attr("method", "post");
			form.submit();
		}));
	</script>
</body>
</html>