<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="form-body">
		<div style="padding: 15px 0px 0px 20px">
			<img src="/ex/resources/img/info.png" width="250px" height="100px">
			<h4>&nbsp &nbsp 정보공유 게시판입니다. 꿀팁모아 드려요!</h4>
		</div>

		<table class="table table-inbox table-max">
			<colgroup>
				<col width="10%" />
				<col width="*" />
				<col width="15%" />
				<col width="10%" />
			</colgroup>
			<tbody>
				<th class="ttdh" bgcolor="#FFFACD">제목 :</th>
				<td class="ttdh">두번째 글입니다~~
				</th>
				<tr class="ttdh">
					<th class="ttdh" bgcolor="#FFFACD">내용
					</td>
					<td class="ttdh"><a id="goCon"></a>오늘은 발표날이다<br>
					으아아아아아아아아아아아아ㅏ아아아아아ㅏ앙<br>
					다음주에는 더 열심히 하자!!!!<br>
					으ㅏ아앙아ㅏ아ㅏㅏㅇ</td>
				</tr>
			</tbody>
		</table>

		<form id=form1>
			<a id="list" data-placement="top" href="#" class="tbtn btn"
					style="background-color: #FFFACD; color: black; margin-left:20px; margin-top:20px;"> <i
					class="ti">글목록</i></a>
			
			
			<ul class="unstyled inbox-pagination">
				<a id="modify" data-placement="top" href="#" class="tbtn btn"
					style="background-color: #FFFACD; color: black; margin-left:20px; margin-top:20px;"> <i
					class="ti">글수정</i></a>
			</ul>

		</form>
		<br>

		<form id="form2">
			<table class="table table-inbox table-max">
				<colgroup>
					<col width="10%" />
					<col width="*" />
					<col width="15%" />
					<col width="10%" />
				</colgroup>
				<tbody>
					<th class="ttdh" bgcolor="#FFFACD">댓글달기</th>
				

					<td colspan="3"><textarea class="commentbox" rows="5"
							cols="100"></textarea> <a id="list" data-placement="top" href="#"
						class="tbtn btn" style="background-color: #FFFACD; color: black;">
							<i class="ti">등록</i>
					</a></td>
					
					
					<tr class="ttdh">
						<th class="ttdh" bgcolor="#FFFACD">이혜은
						</td>
						<td class="ttdh"><a id="goCon"></a>두번째 글입니다~~</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	<script type="text/javascript">
		$("#list").on('click', (function() {
			location.href = "/ex/information/a";
		}));
	</script>
	
	<script type="text/javascript">
		$("#modify").on('click', (function() {
			location.href = "/ex/information/c";
		}));
	</script>
</body>
</html>