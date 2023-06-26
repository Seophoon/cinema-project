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
		<h2>������ �ۼ�</h2>
		<form:form action="../one/oneInputDo.html" method = "post" modelAttribute="oneBBS">
		<table width = "90%">
			<tr>
				<th>��ȭ</th>
				<td width = "70%">
				<form:select path="moviename">
					<c:forEach var="MOVIENAME" items= "${Movie }">
						<option>${MOVIENAME.moviename }</option>
					</c:forEach>
				</form:select>
				</td>
			</tr>
			
			<tr>
				<th>������</th>
				<td width = "70%">
					<form:textarea rows = "1" cols ="40" path="content"></form:textarea>
					<font color="red"><form:errors path="content"/></font>
				</td>
			</tr>
			<tr>
				<td colspan = "2" align = "center" style="border:none">
					<input type = "submit" value = "�ø���"/>
					<input type = "reset" value = "�� ��"/>
				</td>
			</tr>
		</table>
		</form:form>
	</div>
</body>
</html>