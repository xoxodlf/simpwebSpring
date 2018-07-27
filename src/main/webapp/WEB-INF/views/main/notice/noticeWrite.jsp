<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Notice</title>
<style type="text/css">
.tinput {
	width: 100%;
	color: black;
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
	min-height: 400px;
}

.ta_content {
	min-width: 810px;
	min-height: 360px;
	resize: none;
	width: 100%;
	height: 100%;
}

.ji {
	background: #47C83E;
	text-align: center;
	color: white;
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
				<img src="/ex/resources/img/notice.png" />
			</p>
			<h4 style="margin-left: 30px;">공지사항 입니다.</h4>
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
				<tr class="j_thr">
					<td class="jdc">제목 :</td>
					<td colspan="3"><input class="tinput" type="text" name="title" /></td>
					<td></td>
				</tr>
				<tr>
					<td class="tdc">내용 :</td>
					<td class="table_content" colspan="3"><textarea
							class="ta_content"></textarea></td>
					<td></td>
				</tr>
			</table>
			<div class="table-max right" style="width: 100%; margin-top: 20px;">
				<a id="write" data-placement="top" href="#"
					class="ji btn mini fa fa-angle-right pagination-right"> <i
					class="ti">올리기</i></a>
			</div>
			<div class="table-max right" style="width: 100%; margin-top: 20px;">
				<a id="write" data-placement="top" href="/ex/notice/"
					class="ji btn mini fa fa-angle-right pagination-right"> <i
					class="ti">목록 가기</i></a>
			</div>
		</form>
	</div>
	<script type="text/javascript">
		$("#write").on('click', (function() {
			location.href = "/ex/notice/";
		}));
	</script>
</body>
</html>