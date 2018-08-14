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
				<img src="/ex/resources/img/report.png" />
			</p>
			<h4 style="margin-left: 30px;">월별 평가 보고서 게시판 입니다.</h4>
		</div>
		<form id="reportForm">
			<table class="table table-inbox table-max">
				<colgroup>
					<col width="10%" />
					<col width="*" />
					<col width="10%" />
					<col width="10%" />
					<col width="10%" />
				</colgroup>
				<tr class="t_thr" style="background-color: #8B32C7">
					<td class="tdc">제목 :</td>
					<td colspan="3">${report.aTitle }</td>
					<td><input name="articleNo" type="hidden"
						value="${report.articleNo}" /></td>
				</tr>
				<tr>
					<td class="tdc">내용 :</td>
					<td class="table_content" colspan="3">${report.aContent }</td>
					<td></td>
				</tr>
			</table>
		</form>
		<div class="table-max" style="width: 100%; margin-top: 20px;">
			<div class="left" style="width: 49.5%; display: inline-block;">
				<a id="list" data-placement="top" href="#" class="tbtn btn"
					style="background-color: #8B32C7"> <i class="ti">글목록</i></a>
			</div>
			<div class="right" style="width: 50%; display: inline-block;">
				<a id="modify" data-placement="top"
					href="/ex/report/modify?articleNo=${report.articleNo}"
					class="tbtn btn" style="background-color: #8B32C7"> <i
					class="ti">글수정</i></a> <a id="delete" data-placement="top"
					class="tbtn btn" style="background-color: #8B32C7"> <i
					class="ti">글삭제</i></a><a id="commentW"
					href="/ex/report/comment?articleNo=${report.articleNo}"
					class="tbtn btn" style="margin-left: 5px;background-color: #8B32C7"> <i class="ti">답글달기</i></a>
			</div>
		</div>
		<div class="table-max" style="width: 100%; margin-top: 20px;">
			<form id="reportReply" action="/ex/report/reportReply" method="GET">
				<input name="articleNo" type="hidden" value="${report.articleNo}" />
				<table class="table table-inbox table-max">
					<colgroup>
						<col width="12%" />
						<col width="*" />
						<col width="10%" />
						<col width="10%" />
						<col width="10%" />
					</colgroup>
					<tr>
						<td class="tdc t_thr"
							style="vertical-align: middle; background-color: #8B32C7">댓글달기</td>
						<td colspan="3"><textarea class="commentbox" name="cContent"
								id="cContent"></textarea></td>
						<td><input type="button" class="tbtn btn" id="replyWrite"
							style="background-color: #8B32C7" class="ti" value="등록"></td>
					</tr>
					<c:choose>
						<c:when test="${empty replyList }">
							<tr style="margin-top: 20px;">
								<td class="tdc t_thr"
									style="background-color: white; color: #8B32C7;" colspan="5">댓글이
									없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach items="${replyList }" var="reply" varStatus="status">
								<tr style="margin-top: 20px;">
									<td class="tdc t_thr" style="background-color: #8B32C7">${Writer[status.index]}</td>
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
			location.href = "/ex/report/";
		}));

		$("#delete").on('click', (function() {
			var form = $("#reportForm");
			form.attr("action", "/ex/report/delete");
			form.attr("method", "post");
			form.submit();
		}));

		$("#replyWrite").on('click', (function() {
			if ($("#cContent").val() == "") {
				alert("댓글 내용을 입력하세요!");
			} else {
				console.log($("#cContent").val());

				var form = $("#reportReply");
				form.attr("action", "/ex/report/reportReply");
				form.attr("method", "GET");

				form.submit();
			}
		}));
	</script>
</body>
</html>