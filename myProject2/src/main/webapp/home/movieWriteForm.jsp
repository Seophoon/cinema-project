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
		<h2>��ȭ �Խñ� �ۼ�</h2>
		<form:form action = "../image/write.html" method = "post" enctype = "multipart/form-data"
			modelAttribute="imageBBS" onsubmit = "return check(this)">
			<table>
				<tr>
					<th>�� ��</th>
					<td>
						<form:input path="moviename" size="20" placeholder="����"/>
					</td>
				</tr>
				<tr>
					<th>����</th>
					<td>
						<form:input path="derector" size="20" placeholder="����"/>
					</td>
				</tr>
				<tr>
					<th>�̹���</th>
					<td>
						<input type = "file" name = "pictureUrl"/>
					</td>
				</tr>
				<tr>
					<th>�� ��</th>
					<td>
						<form:textarea path="description" rows="5" cols="50" placeholder="������ �Է��ϼ���."/>
					</td>
				</tr>
				<tr>
					<th>������</th>
					<td>
						<input type = "date" name = "movieDate"/>
					</td>
				</tr>
				<tr>
					<td colspan = "2" align = "center" style="border:none">
						<input type = "submit" value = "�� �ø���"/>
						<input type = "reset" value = "�� ��"/>
					</td>
				</tr>
			</table>
		</form:form>
	</div>
	<script type="text/javascript">
	function check(frm){
		if(frm.moviename.value ==''){
			alert("������ �Է��ϼ���.");
			frm.moviename.focus();
			return false;
		}else{
			if(frm.moviename.value.length > 30){
				alert("������ 30�� �̳��� �ۼ��ϼ���.");
				frm.moviename.focus();
				return false;
			}
		}
		if(frm.derector.value ==''){
			alert("���͸� �Է��ϼ���.");
			frm.derector.focus();
			return false;
		}else{
			if(frm.derector.value.length > 30){
				alert("������ 30�� �̳��� �ۼ��ϼ���.");
				frm.title.focus();
				return false;
			}
		}
		if(frm.pictureUrl.value == ''){
			alert("�̹��� ������ �����ϼ���.");
			frm.pictureUrl.focus();
			return false;
		}
		if(frm.description.value == ''){
			alert("�ٰŸ��� �Է��ϼ���.");
			frm.description.focus;
			return false;
		}else {
			if(frm.description.value.length > 300){
				alert("������ 300�� �̳��� �ۼ��ϼ���.");
				frm.description.focus();
				return false;
			}
		}
		if(frm.movieDate.value == ''){
			alert("�������� �Է��ϼ���.");
			frm.movieDate.focus();
			return false;
		}
		if( ! confirm("�Է��� ������ �½��ϱ�?")) return false;
	}
	</script>
</body>
</html>



















