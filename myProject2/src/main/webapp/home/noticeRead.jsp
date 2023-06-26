<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div align = "center">
		<h3>공지사항 보기</h3>
		<form:form modelAttribute="notice">
		<table>
			<tr>
				<th>글번호</th>
				<td><form:input path="no" readonly="true"/></td>
			</tr>
			<tr>
				<th>제 목</th>
				<td><form:input path="title" readonly="true"/></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><form:input path="id" readonly="true"/></td>
			</tr>
			<tr>
				<th>작성일</th>
				<td><form:input path="notice_date" readonly="true"/></td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<form:textarea rows="5" cols="70" readonly="true" path="content"></form:textarea>
				</td>
			</tr>	
			<tr>
				<td colspan = "2" align = "center" style="border:none">
					<a href = "../notice/noticeList.html">■ 목록으로 돌아가기</a>
				</td>
			</tr>
		</table>	
		</form:form>
	</div>
</body>
</html>



















