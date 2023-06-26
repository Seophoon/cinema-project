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
		<h2>공지사항 수정</h2>
		<form:form action = "../notice/noticeModify.html" method = "post" 
			onSubmit = "return check()" modelAttribute="notice">
			<table>
				<tr>
					<th>글 번호</th>
					<td><form:input path="no" readonly="true"/></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><form:input path="id" readonly="true"/></td>
				</tr>
				<tr>
					<th>제 목</th>
					<td>
						<form:input path="title" />
						<font color = "red"><form:errors path="title"/></font>
					</td>
				</tr>
				<tr>
					<th>작성일</th>
					<td><form:input path="notice_date" readonly="true"/></td>
				</tr>
				<tr>
					<th>내 용</th>
					<td>
						<form:textarea rows="5" cols="70" path="content"></form:textarea>
						<font color="red"><form:errors path="content"/></font>
					</td>
				</tr>
				<tr>
					<td colspan = "2" align = "center" style="border:none">
						<input type = "submit" value = "수정" name = "BTN"/>
						<input type = "submit" value = "삭제" name = "BTN"/><br/>
						<a href = "../notice/noticeList.html">■ 목록으로 돌아가기</a>
					</td>
				</tr>
			</table>
		</form:form>
	</div>
	<script type="text/javascript">
		function check(){
			if(! confirm("작업을 진행하시겠습니까?")) return false;
		}
	</script>
</body>
</html>