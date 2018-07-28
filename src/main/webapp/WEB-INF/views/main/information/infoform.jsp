<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
img {
	display: block;
}
</style>

</head>
<body>
	<div class="form-body">
		<div style="padding: 15px 0px 0px 20px">
			<img src="/ex/resources/img/info.png" width="250px" height="100px">
			<h4>&nbsp &nbsp 정보공유 게시판입니다. 꿀팁모아 드려요!</h4>
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
			<a id="write" data-placement="top" href="#" class="tbtn btn" style="background-color: #FFFACD; color:black;" > <i class="ti">글쓰기</i></a>
			</ul>
			<table class="table table-inbox">
				<colgroup>
					<col width="10%" />
					<col width="*" />
					<col width="15%" />
					<col width="10%" />
				</colgroup>
				<tbody>
					<th class="ttdh" bgcolor="#FFFACD">No</th>
					<th class="ttdh" bgcolor="#FFFACD">제목</th>
					<th class="ttdh" bgcolor="#FFFACD">날짜</th>
					<th class="ttdh" bgcolor="#FFFACD">조회수</th>
					<tr class="">
						<td class="ttdh">1</td>
						<td class="ttdh"><a id="first">안녕하세요~~</a></td>
						<td class="ttdh">2018/07/27</td>
						<td class="ttdh">1</td>

					</tr>

					<tr>
						<td class="ttdh">2</td>
						<td class="ttdh"><a id="second">두번째 글입니다~~!</a></td>
						<td class="ttdh">2018/07/29</td>
						<td class="ttdh">3</td>
					</tr>
				</tbody>
			</table>
		</div>
		<script type="text/javascript">
			$("#first").on('click', (function() {
				location.href = "/ex/information/b";
			}));

			$("#second").on('click', (function() {
				location.href = "/ex/information/extra";
			}));
			
			$("#write").on('click', (function() {
				location.href = "/ex/information/c";
			}));
		</script>
</body>
</html>