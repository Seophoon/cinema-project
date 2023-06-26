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
	<div align = "center">
		<form:form action = "../image/movieDeleteDo.html" method = "post" 
			onsubmit = "return check(this)" modelAttribute="imageBBS">
			<table width = "100%">
				<tr>
					<th>�� ��</th>
					<td>${imageBBS.moviename }</td>
				</tr>
				<tr>
					<th>����</th>
					<td>${imageBBS.derector }</td>
				</tr>
				<tr>
					<th>�̹���</th>
					<td>
						<img alt="" src="${pageContext.request.contextPath }/upload/${imageBBS.pictureUrl }" 
							width = "250" height = "200">
					</td>
				</tr>
				<tr>
					<th>�� ��</th>
					<td>${imageBBS.description }</td>
				</tr>
				<tr>
					<td colspan = "2" align = "center">
						<input type = "hidden" name = "seqno" value = "${imageBBS.seqno }"/>
						<input type = "submit" value = "����"/>
						<input type = "reset" value = "���"/>
					</td>
				</tr>
			</table>
		</form:form>
	</div>
	<script type="text/javascript">
		function check(frm){
			if( ! confirm("������ �����Ͻðڽ��ϱ�?")) return false;
		}
	</script>
</body>
</html>






















