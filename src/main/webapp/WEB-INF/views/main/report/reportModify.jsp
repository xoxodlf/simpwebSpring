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
	color:black;
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
.table-max{
	max-width:965px;
}
.right{
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
					<td colspan="3"><input class="tinput" type="text" name="aTitle" value="${report.aTitle }"/></td>
					<td><input name="articleNo" type="hidden" value="${report.articleNo}"/></td>
				</tr>
				<tr>
					<td class="tdc">내용 :</td>
					<td class="table_content" colspan="3"><textarea class="ta_content" name="aContent">${report.aContent }</textarea></td>
					<td></td>
				</tr>
			</table>
			<div class="table-max right" style="width:100%; margin-top: 20px;">
				<a id="modify" data-placement="top" href="#" class="tbtn btn" style="background-color: #8B32C7"> <i class="ti">글수정</i></a>
			</div>
		</form>
	</div>
	<script type="text/javascript">
	$("#modify").on('click', (function() {
		var form = $("#reportForm");
		form.attr("action","/ex/report/modifying");
		form.attr("method","post");
		form.submit();
	}));
	</script>
</body>
</html>