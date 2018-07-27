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
	height: 400px;
	overflow:auto;
	text-align: left;
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
.left{
text-align: left;
}
td{
text-align: center;
}
.commentbox{
max-width:965px;
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
		<form id="boardForm">
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
					<td colspan="3">홍지희 바보 ㅎ</td>
					<td></td>
				</tr>
				<tr>
					<td class="tdc">내용 :</td>
					<td class="table_content" colspan="3">홍지희는 바보입니당 ㅎㅎㅎㅎㅎ 혜은이도 바보같아요 ㅎㅎㅎㅎㅎ</td>
					<td></td>
				</tr>
			</table>
			<div class="table-max" style="width:100%; margin-top: 20px;">
			<div class="left" style="width:49.5%; display: inline-block;">
				<a id="list" data-placement="top" href="#" class="tbtn btn" style="background-color: #8B32C7"> <i class="ti">글목록</i></a>
			</div>
			<div class="right" style="width:50%; display: inline-block;">
				<a id="modify" data-placement="top" href="#" class="tbtn btn" style="background-color: #8B32C7"> <i class="ti">글수정</i></a>
			</div>
			</div>
			<div class="table-max" style="width:100%; margin-top: 20px;">
			<table class="table table-inbox table-max">
				<colgroup>
					<col width="12%" />
					<col width="*" />
					<col width="10%" />
					<col width="10%" />
					<col width="10%" />
				</colgroup>
				<tr>
					<td class="tdc t_thr" style="vertical-align: middle; background-color: #8B32C7">댓글달기</td>
					<td colspan="3"><textarea class="commentbox"></textarea></td>
					<td><a id="list" data-placement="top" href="#" class="tbtn btn" style="background-color: #8B32C7"> <i class="ti">등록</i></a></td>
				</tr>
				<tr style="margin-top:20px;">
					<td class="tdc t_thr" style="background-color: #8B32C7">나상연</td>
					<td colspan="3">홍지희 바보 ㅎ</td>
					<td></td>
				</tr>
			</table>
			</div>
			
		</form>
	</div>
	<script type="text/javascript">
	$("#modify").on('click', (function() {
		location.href="/ex/report/modify";
	}));
	$("#list").on('click', (function() {
		location.href="/ex/report/";
	}));
	</script>
</body>
</html>