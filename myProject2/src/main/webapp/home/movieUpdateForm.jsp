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
		<form:form action = "../image/movieUpdateDo.html" method = "post" enctype="multipart/form-data"
			onSubmit = "return check(this)" modelAttribute="imageBBS">
			<table width = "90%">
				<tr height = "50">
					<th width = "80">제목</th>
					<td width = "160"><form:input path="moviename" value="${imageBBS.moviename }"/></td>
				</tr>
				<tr>
					<th>디렉터</th>
					<td>
						<form:input path="derector" size="20" value="${imageBBS.derector }"/>
					</td>
				</tr>
				<tr height = "50">
					<th width = "80">내용</th>
					<td width = "160"><form:textarea rows="4" cols="100" path = "description" value="${imageBBS.description }"></form:textarea></td>
					</tr>
				<tr>
				<tr>
					<th width = "80">포스터</th>
					<td align = "center">
						<img alt="" src="${pageContext.request.contextPath }/upload/${imageBBS.pictureUrl }" 
							width = "250" height = "200"><br/>
						<input type = "file" name = "pictureUrl"/>
					</td>
				</tr>
				<tr>
					<td colspan = "2" align = "center" style="border:none">
						<input type = "hidden" name = "SEQNO" value = "${imageBBS.seqno }"/>
						<input type= "submit" value = "수정"/>
						<input type = "Reset" value = '취소'/>
					</td>
				</tr>
			</table>
		</form:form>
		<script type="text/javascript">
			function check(frm){
				if(frm.title.value == ''){
					alert("제목을 입력하세요.");
					frm.title.focus();
					return false;
				}
				if(frm.content.value == ''){
					alert("글내용을 입력하세요.");
					frm.content.focus();
					return false;
				}
				if( ! confirm("정말로 변경하시겠습니까?")) return false;
			}
			
		</script>
	</div>
</body>
</html>























