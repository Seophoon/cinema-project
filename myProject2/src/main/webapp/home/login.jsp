<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div align = "right">
	<form:form action="../login/logindo.html" modelAttribute="customer" method="post">
		<a href ="../entry/userEntry.html">ȸ������</a>&nbsp;
		ID&nbsp;<form:input path = "id" placeholder="���̵�"/>&nbsp;
		PASSWORD&nbsp;<form:password path = "pwd" placeholder="��й�ȣ"/>&nbsp;
		<input type = "submit" value = "�α���" name = "login"/>
	</form:form>
	</div>
</body>
</html>