<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>예약하기</title>
<link rel = "Stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/jari.css">
</head>
<body>
<div align = "center">
<form:form action = "../yeyak/yeyakListCheck.html" method="post" modelAttribute="jari" name = "frm">
		<h4>영화 선택</h4>
		<form:select path="moviename">
			<c:forEach var="MOVIENAME" items= "${Movie }">
				<option>${MOVIENAME.moviename }</option>
			</c:forEach>
		</form:select>
		<br/><br/>
	<input type = "submit" value = "선택" />
</form:form>
</div>
</body>
</html>