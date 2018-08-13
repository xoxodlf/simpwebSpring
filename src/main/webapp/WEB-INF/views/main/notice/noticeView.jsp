<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Notice</title>
<style type="text/css">
.notice {
	text-align: center;
}

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
						<c:forEach items="${noticeList}" var="notice">
							<c:choose>
								<c:when test="${notice.isDelete==0}">
									<tr class="">
										<td class="jjth"><c:if test="${notice.depth==0}">${notice.articleNo}</c:if></td>
										<td class="jjth">${notice.userName}</td>
										<td class=""><a
											href="/ex/notice/content?articleNo=${notice.articleNo}"><c:if
													test="${notice.depth!=0}">
													<span
														style="padding-right:10px;padding-left: calc(12*${notice.depth}px);"><img
														src="/ex/resources/img/arrow.png" /></span>
												</c:if>${notice.aTitle}</a></td>
										<td class="jjth">${notice.aDate}</td>
										<td class="jjth">${notice.aViewCount}</td>
									</tr>
								</c:when>
								<c:otherwise>
									<tr class="">
										<td class="jjth">${notice.articleNo}</td>
										<td class="jjth">${notice.userName}</td>
										<td class=""><c:if test="${notice.depth==1}">
												<span
													style="padding-right:10px;padding-left: calc(12*${notice.depth}px);"><img
													src="/ex/resources/img/arrow.png" /></span>
											</c:if>삭제 되었습니다.</td>
										<td class="jjth">${notice.aDate}</td>
										<td class="jjth">${notice.aViewCount}</td>
									</tr>
								</c:otherwise>
							</c:choose>
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

	<div class="notice">
		<c:if test="${NoticePaging.curRange ne 1 }">
			<a href="#" onClick="paging_current(1)">[처음]</a>
		</c:if>
		<c:if test="${NoticePaging.curPage ne 1}">
			<a href="#" onClick="paging_former'${NoticePaging.prevPage }')">[이전]</a>
		</c:if>
		<c:forEach var="pageNum" begin="${NoticePaging.startPage }"
			end="${NoticePaging.endPage }">
			<c:choose>
				<c:when test="${pageNum eq  NoticePaging.curPage}">
					<span style="font-weight: bold;"><a
						onClick="paging_current('${pageNum}')">${pageNum }</a></span>
				</c:when>
				<c:otherwise>
					<a onClick="paging_current('${pageNum}')">${pageNum }</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if
			test="${NoticePaging.curPage ne NoticePaging.pageCnt && NoticePaging.pageCnt > 0}">
			<a onClick="paging_next('${NoticePaging.nextPage}')">[다음]</a>
		</c:if>
		<c:if
			test="${NoticePaging.curRange ne NoticePaging.rangeCnt && NoticePaging.rangeCnt > 0}">
			<a onClick="paging_current('${NoticePaging.pageCnt}')">[끝]</a>
		</c:if>
	</div>

	<div class="notice">총 게시글 수 : ${NoticePaging.listCnt } / 총 페이지 수
		: ${NoticePaging.pageCnt } / 현재 페이지 : ${NoticePaging.curPage } / 현재 블럭
		: ${NoticePaging.curRange } / 총 블럭 수 : ${NoticePaging.rangeCnt }</div>


	<script type="text/javascript">
		$("#search").on(
				'click',
				(function() {
					var target = document.getElementById("searchOption");

					if (target.options[target.selectedIndex].text == "전체"
							&& $("#searchWord").val() != "") {
						alert("전체는 검색 내용을 작성할 수 없습니다.");
					} else {
						location.href = "/ex/notice/search?searchOption="
								+ $("#searchOption").val() + "&searchWord="
								+ $("#searchWord").val();
					}

				}));

		$(document).ready(
				function() {
					var getParameters = function(paramName) {
						var returnValue;
						var url = location.href;
						var parameters = (url.slice(url.indexOf('?') + 1,
								url.length)).split('&');
						for (var i = 0; i < parameters.length; i++) {
							var varName = parameters[i].split('=')[0];
							if (varName.toUpperCase() == paramName
									.toUpperCase()) {
								returnValue = parameters[i].split('=')[1];
								return decodeURIComponent(returnValue);
							}
						}
					};

					$(
							"select option[value='"
									+ getParameters("searchOption") + "']")
							.attr("selected", true);
					$("#searchWord").val(getParameters("searchWord"));

				});
		
		function getParameters(paramName) {
			var returnValue;
			var url = location.href;
			var parameters = (url.slice(url.indexOf('?') + 1,
					url.length)).split('&');
			for (var i = 0; i < parameters.length; i++) {
				var varName = parameters[i].split('=')[0];
				if (varName.toUpperCase() == paramName.toUpperCase()) {
					returnValue = parameters[i].split('=')[1];
					return decodeURIComponent(returnValue);
				}
			}
		}
		function paging_former(prevPage){
			var url = location.href;
			var address = url.slice(0,url.indexOf('?')+1)+"searchOption="+getParameters("searchOption")+"&searchWord="+getParameters("searchWord")+"&curPage="+pageNum;
			location.href=address;
		}
		function paging_current(pageNum){
			var url = location.href;
			var address = url.slice(0,url.indexOf('?')+1)+"searchOption="+getParameters("searchOption")+"&searchWord="+getParameters("searchWord")+"&curPage="+pageNum;
			location.href=address;
		}
		function paging_next(nextPage){
			var url = location.href;
			var address = url.slice(0,url.indexOf('?')+1)+"searchOption="+getParameters("searchOption")+"&searchWord="+getParameters("searchWord")+"&curPage="+nextPage;
			location.href=address;
		}
		
	</script>
</body>
</html>