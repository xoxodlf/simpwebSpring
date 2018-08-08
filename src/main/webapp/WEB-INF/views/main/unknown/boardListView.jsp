<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="inbox-body">
	<div>
		<p>
			<img src="/ex/resources/img/anonymous.png" />
		</p>
		<h4 style="margin-left: 30px;">익명게시판입니다. 비방은 사절입니다.</h4>
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
			<a id="write" data-placement="top" href="#" class="tbtn btn"> <i
				class="ti">글쓰기</i>
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
			<tr class="t_thr">
				<th class="ttdh">No</th>
				<th class="ttdh">제목</th>
				<th class="ttdh">날짜</th>
				<th class="ttdh">조회수</th>
			</tr>
			<c:choose>
				<c:when test="${empty unknownList }">
					<tr>
						<td class="ttdh" colspan="4">게시글이 없습니다.</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${unknownList}" var="unknown">
						<c:choose>
							<c:when test="${unknown.isDelete==0}">
								<tr class="">
									<td class="ttdh"><c:if test="${unknown.depth==0}">${unknown.articleNo}</c:if></td>
									<td class=""><a
										href="/ex/unknown/detail?articleNo=${unknown.articleNo}"><c:if
												test="${unknown.depth!=0}">
												<span
													style="padding-right:10px;padding-left: calc(12*${unknown.depth}px);"><img
													src="/ex/resources/img/arrow.png" /></span>
											</c:if>${unknown.aTitle}</a></td>
									<td class="ttdh">${unknown.aDate}</td>
									<td class="ttdh">${unknown.aViewCount}</td>
								</tr>
							</c:when>
							<c:otherwise>
								<tr class="">
									<td class="ttdh">${unknown.articleNo}</td>
									<td class=""><c:if test="${unknown.depth!=0}">
											<span
												style="padding-right:10px;padding-left: calc(12*${unknown.depth}px);"><img
												src="/ex/resources/img/arrow.png" /></span>
										</c:if>이 게시물은 삭제된 게시물입니다.</td>
									<td class="ttdh">${unknown.aDate}</td>
									<td class="ttdh">${unknown.aViewCount}</td>
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
					<option value="a">전체</option>
					<option value="t">제목</option>
					<option value="c">내용</option>
					<option value="tc">제목+내용</option>
			</select></td>
			<td><input class="form-control" type="text" id="keyword"
				name="keyword" /></td>
			<td><a id="search" class="tbtn btn" style="width: 80%"> <i
					class="ti">검색</i>
			</a></td>
			<td></td>
		</tr>

	</table>
	<nav style="text-align: center;">
		<ul class="pagination">
			<c:if test="${page.curGroup ne 1}">
				<li class="page-item"><a style="cursor: pointer;" class="page-link" onclick="goBeforePage(${page.startPage},${page.groupSize})"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						<span class="sr-only">Previous</span>
				</a></li>
			</c:if>
			<c:forEach var="pageNum" begin="${page.startPage }"
				end="${page.endPage }">
				<c:choose>
					<c:when test="${pageNum eq  page.curPage}">
						<li class="page-item""><a style="background-color:#f75873;cursor: pointer; color:white;" class="page-link" onclick="goPage(${pageNum})">${pageNum}</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a style="cursor: pointer;" class="page-link" onclick="goPage(${pageNum})" >${pageNum}</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${page.curGroup ne page.groupCnt}">
				<li class="page-item"><a style="cursor: pointer;" class="page-link" onclick="goNextPage(${page.endPage})"
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
						if (varName.toUpperCase() == paramName.toUpperCase()) {
							returnValue = parameters[i].split('=')[1];
							return decodeURIComponent(returnValue);
						}
					}
				};

				$("select option[value='" + getParameters("searchType") + "']")
						.attr("selected", true);
				$("#keyword").val(getParameters("keyword"));
			
			}
	);
	
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
		var address = url.slice(0,url.indexOf('?')+1)+"searchType="+getParameters("searchType")+"&keyword="+getParameters("keyword")+"&curPage="+(startPage-groupSize);
		location.href=address;
	}
	function goNextPage(endPage){
		var url = location.href;
		var address = url.slice(0,url.indexOf('?')+1)+"searchType="+getParameters("searchType")+"&keyword="+getParameters("keyword")+"&curPage="+(endPage+1);
		location.href=address;
	}
	function goPage(pageNum){
		var url = location.href;
		var address = url.slice(0,url.indexOf('?')+1)+"searchType="+getParameters("searchType")+"&keyword="+getParameters("keyword")+"&curPage="+pageNum;
		location.href=address;
	}
	
	$("#write").on('click', (function() {
		location.href = "/ex/unknown/form";
	}));
	$("#search")
			.on(
					'click',
					(function() {
						if ($("#searchType").val() == "a"
								&& $("#keyword").val() != "") {
							alert("전체 검색은 검색어를 입력할 수 없습니다.");
						} else {
							location.href = "/ex/unknown/listSearch?searchType="
									+ $("#searchType").val()
									+ "&keyword="
									+ $("#keyword").val();
						}

					}));
	
	
	
</script>
