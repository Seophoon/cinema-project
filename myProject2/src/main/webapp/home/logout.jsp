<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div align = "right">
		<form action = "../logout/logout.html" name = "fm">
			<c:if test="${sessionScope.USER != null }">
				<a href = "javascript:doMy()">���� ������</a>&nbsp;
				<font color = "red">${sessionScope.USER }��</font>&nbsp;
			</c:if>
			<c:if test="${sessionScope.ADMIN != null }">
				<font color = "red">${sessionScope.ADMIN }��</font>&nbsp;
			</c:if>
			<input type = "submit" value = "�α׾ƿ�"/>
		</form>
	</div>
	<script type="text/javascript">
		function doMy(){
			document.fm.action= "../my/my.html";
			document.fm.submit();
		}
	</script>
</body>
</html>