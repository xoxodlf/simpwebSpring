<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="inbox-body">
		<div class="mail-option">
			<div class="chk-all">
				<input type="checkbox" class="mail-checkbox mail-group-checkbox">
				<div class="btn-group">
					<a data-toggle="dropdown" href="#" class="btn mini all"
						aria-expanded="false"> All <i class="fa fa-angle-down "></i>
					</a>
					<ul class="dropdown-menu">
						<li><a href="#"> None</a></li>
						<li><a href="#"> Read</a></li>
						<li><a href="#"> Unread</a></li>
					</ul>
				</div>
			</div>

			<div class="btn-group">
				<a data-original-title="Refresh" data-placement="top"
					data-toggle="dropdown" href="#" class="btn mini tooltips"> <i
					class=" fa fa-refresh"></i>
				</a>
			</div>
			<div class="btn-group hidden-phone">
				<a data-toggle="dropdown" href="#" class="btn mini blue"
					aria-expanded="false"> More <i class="fa fa-angle-down "></i>
				</a>
				<ul class="dropdown-menu">
					<li><a href="#"><i class="fa fa-pencil"></i> Mark as Read</a></li>
					<li><a href="#"><i class="fa fa-ban"></i> Spam</a></li>
					<li class="divider"></li>
					<li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
				</ul>
			</div>
			<div class="btn-group">
				<a data-toggle="dropdown" href="#" class="btn mini blue"> Move
					to <i class="fa fa-angle-down "></i>
				</a>
				<ul class="dropdown-menu">
					<li><a href="#"><i class="fa fa-pencil"></i> Mark as Read</a></li>
					<li><a href="#"><i class="fa fa-ban"></i> Spam</a></li>
					<li class="divider"></li>
					<li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
				</ul>
			</div>

			<ul class="unstyled inbox-pagination">
				<li><span>1-50 of 234</span></li>
				<li><a class="np-btn" href="#"><i
						class="fa fa-angle-left  pagination-left"></i></a></li>
				<li><a class="np-btn" href="#"><i
						class="fa fa-angle-right pagination-right"></i></a></li>
			</ul>
		</div>
		<table class="table table-inbox table-hover">
			<tbody>
			<tr class=""><th>no</th><th>id</th><th>pw</th><th>name</th><th>?</th></tr>
				<c:forEach items="${userList}" var="user">
					<tr class="">
						<td class="inbox-small-cells">${user.userNo}</td>
						<td class="view-message dont-show">${user.ID}</td>
						<td class="view-message">${user.password}</td>
						<td class="view-message inbox-small-cells">${user.name}</td>
						<td class="view-message text-right">March 15</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>