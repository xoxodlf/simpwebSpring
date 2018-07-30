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
		<form>
			<table class="table table-inbox table-max">
				<colgroup>
					<col width="10%" />
					<col width="*" />
					<col width="15%" />
					<col width="10%" />
				</colgroup>
				<tbody>
					<tr>
						<th class="ttdh" bgcolor="#FFFACD">제목 :</th>
						<td class="ttdh" bgcolor="#FFFACD"><input type="text"
							name="td1" style="width: 950px"></td>
					</tr>
					<tr class="ttdh">
						<th class="ttdh">내용:</th>

						<td class="ttdh"><a id="goCon"></a> <textarea rows="10"
								cols="130"></textarea></td>
					</tr>
				</tbody>
			</table>	
			
			<a id="list" data-placement="top" href="#" class="tbtn btn"
				style="background-color: #FFFACD; color: black;"> <i class="ti">글수정</i></a>	
		
		</form>
	</div>
	
	<script type="text/javascript">
	$("#list").on('click', (function() {
		location.href="/ex/information/form";
	}));
	</script>
	
</body>
</html>