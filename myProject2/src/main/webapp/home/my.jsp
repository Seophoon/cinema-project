<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div align = "center">
	<table width = "90%" >
		<tr>
			<th colspan="4"><h3>����������</h3></th>
		</tr>
		<tr>
			<th width = "35%">��ȭ</th>
			<th width = "10%">�¼�</th>
			<th width = "20%">������</th>
			<th width = "20%">����ð�</th>
		</tr>
		<c:forEach var="MYJARI" items= "${MYJARI }">
			<tr>
				<td>${MYJARI.moviename }</td>
				<td>${MYJARI.jari }</td>
				<td>${MYJARI.id }</td>
				<td>${MYJARI.yeyak_date }</td>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>