<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Notice</title>
<style type="text/css">
.jth {
	background: #47C83E;
	text-align: center;
	color: white;
}

.jjth {
	text-align: center;
	color: black;
}

.ji {
	background: #47C83E;
	text-align: center;
	color: white;
}
</style>
</head>
<body>
	<div class="inbox-body">
		<div>
			<p>
				<img src="/ex/resources/img/notice.png" />
			</p>
			<h4 style="margin-left: 30px;">공지사항 게시판 입니다.</h4>
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
				<a data-placement="top" href="/ex/notice/write"
					class="ji btn mini fa fa-angle-right pagination-right"> <i
					class="ji">글쓰기</i>
				</a>
			</ul>
		</div>

		<table class="table table-inbox table-hover">
			<tbody>
				<tr class="">
					<th class="jth">번호</th>
					<th class="jth">작성자</th>
					<th class="jth">제목</th>
					<th class="jth">날짜</th>
					<th class="jth">조회수</th>
				</tr>
				<c:choose>
					<c:when test="${empty noticeList}">
						<tr>
							<td class="jjth" colspan="5">게시글이 없습니다.</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${noticeList}" var="notice" varStatus="status">
							<tr class="">
								<td class="jjth">${notice.articleNo}</td>
								<td class="jjth">${notice.userName}</td>
								<td class="jjth"><a
									href="/ex/notice/content?articleNo=${notice.articleNo}">${notice.aTitle}</a></td>
								<td class="jjth">${notice.aDate}</td>
								<td class="jjth">${notice.aViewCount}</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
	<table>
		<td style="margin-right: 5px"><select name="searchOption"
			id="searchOption" class="form-control"
			style="width: 120px; margin-left: 540px">
				<option value="a">전체</option>
				<option value="n">작성자</option>
				<option value="t">제목</option>
				<option value="c">내용</option>
				<option value="tc">제목+내용</option>
		</select></td>
	</table>

	<input type="text" id="searchWord" name="searchWord" size="20"
		maxlength="30" style="margin-left: 450px" />
	<a id="search" class="ji btn mini fa" style="width: 10%"> <i
		class="ti">검색</i></a>
		<script type="text/javascript">
			

			$("#search").on(
					'click',
					(function() {
						var target = document.getElementById("searchOption");

						if (target.options[target.selectedIndex].text == "전체"&&$("#searchWord").val()!="") {
							alert("전체는 검색 내용을 작성할 수 없습니다.");
						} else {
							location.href = "/ex/notice/search?searchOption="
									+ $("#searchOption").val() + "&searchWord="
									+ $("#searchWord").val();
						}

					}));

			
			$(document).ready(function(){
				function getQuerystring(paramName) {
					var _tempUrl = window.location.search.substring(1); //url에서 처음부터 '?'까지 삭제 
					var _tempArray = _tempUrl.split('&'); // '&'을 기준으로 분리하기
					for (var i = 0; _tempArray.length; i++) {
						var _keyValuePair = _tempArray[i].split('=');
						// '=' 을 기준으로 분리하기 
						if (_keyValuePair[0] == paramName) { // _keyValuePair[0] : 파라미터 명 
							// _keyValuePair[1] : 파라미터 값 
							return _keyValuePair[1];
						}
					}
				}
				
				$("select option[value='"+getQuerystring('searchOption')+"']").attr("selected", true);
				$("#searchWord").val(getQuerystring('searchWord'));
			
			});
		</script>
</body>
</html>