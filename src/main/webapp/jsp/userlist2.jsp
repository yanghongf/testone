<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/common/global.jsp"%>
<script type="text/javascript" src="${BASE}/www/js/test.js"></script>
<script type="text/javascript"
	src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.7.2.min.js "></script>
<c:set var="uPager" value="${userPager}" />
<c:set var="userlist" value="${userPager.recordList}" />
<table id="list" class="css-table">
	<thead>
		<tr>
			<td>id</td>
			<td>username</td>
			<td>password</td>
			<td>modify</td>
			<td>delete</td>
		</tr>
	</thead>
	<tbody id="data">
		<c:forEach var="user" items="${userPager.recordList}" varStatus="id">
			<c:set var="id" value="${user.id}" />
			<c:set var="username" value="${user.username}" />
			<c:set var="password" value="${user.password}" />
			<tr data-id="${user.id}" data-name="${user.username}">
				<td id="userId">${id}</td>
				<td id="userName">${username}</td>
				<td id="password">${password}</td>
				<td><a href="${BASE}/toupdate/${user.id}">modify</a></td>
				<td><a href="${BASE}/delete/${user.id}">delete</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<c:set var="pageNumber" value="${uPager.pageNumber}" />
<c:set var="pageSize" value="${uPager.pageSize}" />
<c:set var="totalRecord" value="${uPager.totalRecord}" />
<c:set var="totalPage" value="${uPager.totalPage}" />
<tag:pager id="user_pager" pager="${userPager}" />
