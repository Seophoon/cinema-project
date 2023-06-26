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
					<th>제 목</th>
					<td>${imageBBS.moviename }</td>
				</tr>
				<tr>
					<th>디렉터</th>
					<td>${imageBBS.derector }</td>
				</tr>
				<tr>
					<th>이미지</th>
					<td>
						<img alt="" src="${pageContext.request.contextPath }/upload/${imageBBS.pictureUrl }" 
							width = "250" height = "200">
					</td>
				</tr>
				<tr>
					<th>내 용</th>
					<td>${imageBBS.description }</td>
				</tr>
				<tr>
					<td colspan = "2" align = "center">
						<input type = "hidden" name = "seqno" value = "${imageBBS.seqno }"/>
						<input type = "submit" value = "삭제"/>
						<input type = "reset" value = "취소"/>
					</td>
				</tr>
			</table>
		</form:form>
	</div>
	<script type="text/javascript">
		function check(frm){
			if( ! confirm("정말로 삭제하시겠습니까?")) return false;
		}
	</script>
</body>
</html>






















