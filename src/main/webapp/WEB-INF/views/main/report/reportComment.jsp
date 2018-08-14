<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	min-height: 400px;
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
		<form id="reportForm" action="/ex/report/commentWriting" method="GET">
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
					<td colspan="3"><input class="tinput" id="reportT" type="text"
						name="aTitle"/></td>
					<td><input type="hidden" name="group" value="${report.group}" />
						<input type="hidden" name="order" value="${report.order}" /> <input
						type="hidden" name="depth" value="${report.depth}" /> <input
						type="hidden" name="userNo" value="${report.userNo}" /> <input
						type="hidden" name="boardNo" value="${report.boardNo}" /><input
						type="hidden" name="articleNo" value="${report.articleNo}" /></td>
				</tr>
				<tr>
					<td class="tdc">내용 :</td>
					<td class="table_content" colspan="3"><textarea
							class="ta_content" id="reportC" name="aContent"></textarea></td>
					<td></td>
				</tr>
			</table>
			<div class="table-max right" style="width: 100%; margin-top: 20px;">
				<input type="button" id="commentW" value="답글 등록"
					data-placement="top" href="#" class="tbtn btn ti"
					style="background-color: #8B32C7" />
			</div>
		</form>
	</div>
	<script type="text/javascript">
		$("#commentW").on('click', (function() {
			if ($("#aTitle").val() == "") {
				alert("제목을 입력하세요!");
			} else if ($("#reportC").val() == "") {
				alert("내용을 입력하세요!");
			} else {
				var form = $("#reportForm");
				form.submit();
			}
		}));
	</script>
</body>
</html>