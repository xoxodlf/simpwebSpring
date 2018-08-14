<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="inbox-body">
		<div>
			<p>
				<img src="/ex/resources/img/report.png" />
			</p>
			<h4 style="margin-left: 30px;">월별 평가 보고서 게시판 입니다.</h4>
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
				<a id="write" data-placement="top" href="#" class="tbtn btn"
					style="background-color: #8B32C7"> <i class="ti">글쓰기</i>
				</a>
			</ul>
		</div>
		<table class="table table-inbox">
			<colgroup>
				<col width="10%" />
				<col width="*" />
				<col width="15%" />
				<col width="10%" />
			</colgroup>
			<tbody>
				<tr class="t_thr" style="background-color: #8B32C7">
					<th class="ttdh">No</th>
					<th class="ttdh">제목</th>
					<th class="ttdh">날짜</th>
					<th class="ttdh">작성자</th>
					<th class="ttdh">조회수</th>
				</tr>
				<c:choose>
					<c:when test="${empty reportList }">
						<tr>
							<td class="ttdh" colspan=5>게시글이 없습니다.</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${reportList }" var="report" varStatus="status">
							<c:choose>
								<c:when test="${report.isDelete==0}">
									<tr>
										<td class="ttdh"><c:if test="${report.depth==0}">${report.articleNo }</c:if></td>
										<td class=""><a
											href="/ex/report/View?articleNo=${report.articleNo}"><c:if
													test="${report.depth!=0}">
													<span
														style="padding-right:10px;padding-left: calc(12*${report.depth}px);"><img
														src="/ex/resources/img/arrow.png" /></span>
												</c:if>${report.aTitle }</a></td>
										<td class="ttdh">${report.aDate }</td>
										<td class="ttdh">${Writer[status.index] }</td>
										<td class="ttdh">${report.aViewCount }</td>
									</tr>
								</c:when>
								<c:otherwise>
									<tr class="">
										<td class="ttdh">${report.articleNo}</td>
										<td class=""><c:if test="${report.depth!=0}">
												<span
													style="padding-right:10px;padding-left: calc(12*${report.depth}px);"><img
													src="/ex/resources/img/arrow.png" /></span>
											</c:if>이 게시물은 삭제된 게시물입니다.</td>
										<td class="ttdh">${report.aDate}</td>
										<td class="ttdh">${Writer[status.index] }</td>
										<td class="ttdh">${report.aViewCount}</td>
									</tr>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
		<table style="margin-top: 20px; text-align: center;">
			<colgroup>
				<col width="20%" />
				<col width="10%" />
				<col width="*" />
				<col width="10%" />
				<col width="10%" />
			</colgroup>
			<tr>
				<td></td>
				<td style="margin-right: 5px;"><select name="searchType"
					id="searchType" class="form-control " style="width: 95%;">
						<option value="all">전체</option>
						<option value="title">제목</option>
						<option value="content">내용</option>
						<option value="writer">작성자</option>
						<option value="tAndc">제목+내용</option>
				</select></td>
				<td><input class="form-control" type="text" id="keyword"
					name="keyword" /></td>
				<td><a id="search" class="tbtn btn"
					style="width: 80%; background-color: #8B32C7"> <i class="ti">검색</i>
				</a></td>
				<td></td>
			</tr>

		</table>
		<nav style="text-align: center;">
			<ul class="pagination">
				<c:if test="${page.curGroup ne 1}">
					<li class="page-item"><a style="cursor: pointer;"
						class="page-link"
						onclick="goBeforePage(${page.startPage},${page.groupSize})"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							<span class="sr-only">Previous</span>
					</a></li>
				</c:if>
				<c:forEach var="pageNum" begin="${page.startPage }"
					end="${page.endPage }">
					<c:choose>
						<c:when test="${pageNum eq  page.curPage}">
							<li class="page-item""><a
								style="background-color: #8B32C7; cursor: pointer; color: white;"
								class="page-link" onclick="goPage(${pageNum})">${pageNum}</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a style="cursor: pointer;"
								class="page-link" onclick="goPage(${pageNum})">${pageNum}</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${page.curGroup ne page.groupCnt}">
					<li class="page-item"><a style="cursor: pointer;"
						class="page-link" onclick="goNextPage(${page.endPage})"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
							class="sr-only">Next</span>
					</a></li>
				</c:if>
			</ul>
		</nav>
	</div>
	<script type="text/javascript">
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
					$("select option[value='"
									+ getParameters("searchType") + "']").attr(
							"selected", true);
					$("#keyword").val(getParameters("keyword"));
				};
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
	
	function goBeforePage(startPage,groupSize){
		var url = location.href;
		location.href = "/ex/report/searchList?searchType="
			+ $("#searchType").val() + "&keyword="
			+ $("#keyword").val()+"&curPage="+(startPage-groupSize);

	}
	function goNextPage(endPage){
		var url = location.href;
		location.href = "/ex/report/searchList?searchType="
			+ $("#searchType").val() + "&keyword="
			+ $("#keyword").val()+"&curPage="+(endPage+1);

	}
	function goPage(pageNum){
		var url = location.href;
		location.href = "/ex/report/searchList?searchType="
			+ $("#searchType").val() + "&keyword="
			+ $("#keyword").val()+"&curPage="+pageNum;

	}

		
		

		$("#write").on('click', (function() {
			location.href = "/ex/report/Form";
		}));
		$("#goView").on('click', (function() {
			location.href = "/ex/report/View";
		}));
		$("#search").on(
				'click',
				(function() {
					location.href = "/ex/report/searchList?searchType="
							+ $("#searchType").val() + "&keyword="
							+ $("#keyword").val();
				}));
	</script>
</body>
</html>