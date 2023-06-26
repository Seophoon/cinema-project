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
		<h2>영화 게시글 작성</h2>
		<form:form action = "../image/write.html" method = "post" enctype = "multipart/form-data"
			modelAttribute="imageBBS" onsubmit = "return check(this)">
			<table>
				<tr>
					<th>제 목</th>
					<td>
						<form:input path="moviename" size="20" placeholder="제목"/>
					</td>
				</tr>
				<tr>
					<th>디렉터</th>
					<td>
						<form:input path="derector" size="20" placeholder="디렉터"/>
					</td>
				</tr>
				<tr>
					<th>이미지</th>
					<td>
						<input type = "file" name = "pictureUrl"/>
					</td>
				</tr>
				<tr>
					<th>내 용</th>
					<td>
						<form:textarea path="description" rows="5" cols="50" placeholder="내용을 입력하세요."/>
					</td>
				</tr>
				<tr>
					<th>개봉일</th>
					<td>
						<input type = "date" name = "movieDate"/>
					</td>
				</tr>
				<tr>
					<td colspan = "2" align = "center" style="border:none">
						<input type = "submit" value = "글 올리기"/>
						<input type = "reset" value = "취 소"/>
					</td>
				</tr>
			</table>
		</form:form>
	</div>
	<script type="text/javascript">
	function check(frm){
		if(frm.moviename.value ==''){
			alert("제목을 입력하세요.");
			frm.moviename.focus();
			return false;
		}else{
			if(frm.moviename.value.length > 30){
				alert("제목은 30자 이내로 작성하세요.");
				frm.moviename.focus();
				return false;
			}
		}
		if(frm.derector.value ==''){
			alert("디렉터를 입력하세요.");
			frm.derector.focus();
			return false;
		}else{
			if(frm.derector.value.length > 30){
				alert("제목은 30자 이내로 작성하세요.");
				frm.title.focus();
				return false;
			}
		}
		if(frm.pictureUrl.value == ''){
			alert("이미지 파일을 선택하세요.");
			frm.pictureUrl.focus();
			return false;
		}
		if(frm.description.value == ''){
			alert("줄거리를 입력하세요.");
			frm.description.focus;
			return false;
		}else {
			if(frm.description.value.length > 300){
				alert("내용은 300자 이내로 작성하세요.");
				frm.description.focus();
				return false;
			}
		}
		if(frm.movieDate.value == ''){
			alert("개봉일을 입력하세요.");
			frm.movieDate.focus();
			return false;
		}
		if( ! confirm("입력한 내용이 맞습니까?")) return false;
	}
	</script>
</body>
</html>



















