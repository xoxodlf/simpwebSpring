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

.ji {
	color: green;
}

.j_thr {
	background: #47C83E;
	color: white;
	text-align: center;
}

.jdc {
	background: #47C83E;
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
				<img src="/ex/resources/img/notice.png" />
			</p>
			<h4 style="margin-left: 30px;">공지사항 입니다.</h4>
		</div>
		<form id="NoticeContent">
			<table class="table table-inbox table-max">
				<colgroup>
					<col width="10%" />
					<col width="*" />
					<col width="10%" />
					<col width="10%" />
					<col width="10%" />
				</colgroup>
				<tr class="j_thr">
					<td class="jdc">제목 :</td>
					<td colspan="3">${notice.aTitle}</td>
					<td></td>
				</tr>
				<tr>
					<td class="tdc">내용 :</td>
					<td class="table_content" colspan="3">${notice.aContent}</td>
					<td><input name="articleNo" type="hidden"
						value="${notice.articleNo}" /></td>
				</tr>
			</table>
			<div class="table-max" style="width: 100%; margin-top: 20px;">
				<div class="left" style="width: 49.5%; display: inline-block;">
					<a id="list" data-placement="top" href="/ex/notice/" class="ji ">
						<i class="ji_color">목록 가기</i>
					</a>
				</div>
				<div class="right" style="width: 50%; display: inline-block;">
					<a id="modify" data-placement="top"
						href="/ex/notice/modify?articleNo=${notice.articleNo}"
						class="ji btn mini fa fa-angle-right pagination-right "> <i
						class="ji_color">수정 하기</i>
					</a> <a id="delete" data-placement="top"
						class="ji btn mini fa fa-angle-right pagination-right "> <i
						class="ji_color">삭제 하기</i>
					</a> <a id="writeC"
						href="/ex/notice/writeComment?articleNo=${notice.articleNo}"
						class="ji btn mini fa fa-angle-right pagination-right "
						style="margin-left: 5px;"> <i class="ji_color">답글달기</i></a>
				</div>
			</div>
		</form>
		<div class="table-max" style="width: 100%; margin-top: 20px;">
			<form id="NoticeComment">
				<table class="table table-inbox table-max">
					<colgroup>
						<col width="12%" />
						<col width="*" />
						<col width="10%" />
						<col width="10%" />
						<col width="10%" />
					</colgroup>
					<tr>
						<td class="tdc j_thr" style="vertical-align: middle;">댓글달기</td>
						<td colspan="3"><textarea id="ccontent" class="commentbox"
								name="cContent"></textarea></td>
						<td><a id="replyAdd" class="btn btn"> <i class="ji">등록</i></a><input
							type="hidden" name="userNo" value="1" /><input type="hidden"
							name="articleNo" value="${notice.articleNo}" /></td>
					</tr>
					<c:choose>
						<c:when test="${empty replyList}">
							<tr>
								<td class="jjdh" colspan="5">댓글이 없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach items="${replyList}" var="comment">
								<tr style="margin-top: 20px;">
									<td class="tdc j_thr">JIHEE</td>
									<td colspan="3">${comment.cContent}</td>
									<td>${comment.cDate}</td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</table>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		$("#modify").on('click', (function() {
			location.href = "/ex/notice/modify";
		}));
		$("#list").on('click', (function() {
			location.href = "/ex/notice/search?searchOption=a&searchWord=";
		}));
		$("#delete").on('click', (function() {
			var form = $("#NoticeContent");
			form.attr("action", "/ex/notice/delete");
			form.attr("method", "post");
			form.submit();
		}));
		$("#replyAdd").on('click', (function() {
			if ($("#ccontent").val() == "") {
				alert("댓글은 공백일 수 없습니다.");
			} else {
				var form = $("#NoticeComment");
				form.attr("action", "/ex/notice/addReply");
				form.attr("method", "post");
				form.submit();
			}
		}));
	</script>
</body>
</html>