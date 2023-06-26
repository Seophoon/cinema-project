<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ�� ����</title>
</head>
<body>
	<div align = "center">
		<h2>ȸ�� ������ �Է��ϼ���</h2>
		<form:form action = "../entry/entry.html" method = "post" modelAttribute="user"
				onsubmit="return check(this)" name="fm">
				�� �� : <form:input path="name"/><br/>
				�� �� : <form:input path="id"/>
				<input type = "hidden" name = "idChecked"/>
				<input type = "button" value = "�ߺ��˻�" onClick = "idCheck()"/>
				<br/>
				�� �� : <form:input path="addr"/><br/>
				����ó : <form:input path="phone"/><br/>
				�� ȣ : <form:password path="pwd"/><br/>
				��ȣ Ȯ�� : <input type = "password" name = "CONFIRM"/><br/>
				�̸��� : <form:input path="email"/><br/>
				<br/><br/>
				<input type = "submit" value = "�� ��"/>
				<input type = "reset" value = "�� ��"/><br/><br/>
		</form:form>
	</div>
	<script type="text/javascript">
		function check(frm){
			if(frm.name.value == ""){
				alert("�̸��� �Է��ϼ���.");
				frm.name.focus();
				return false;
			}
			if(frm.id.value == ""){
				alert("������ �Է��ϼ���.")
				frm.id.focus();
				return false;
			}
			if(frm.idChecked.value == ""){
				alert("ID �ߺ��˻縦 �ϼ���.");
				frm.id.focus();
				return false
			}
			if(frm.addr.value == ""){
				alert("�ּҸ� �Է��ϼ���.");
				frm.addr.focus();
				return false;
			}
			if(frm.phone.value == ""){
				alert("����ó�� �Է��ϼ���.");
				frm.phone.focus();
				return false;
			}
			if(frm.pwd.value == ""){
				alert("��ȣ�� �Է��ϼ���.");
				frm.pwd.focus();
				return false;
			}
			if(frm.pwd.value != frm.CONFIRM.value){
				alert("��ȣ�� ��ġ���� �ʽ��ϴ�.");
				frm.pwd.focus();
				return false;
			}//��ȣȮ���� �ٸ����
			
			if(!confirm("�Է��� ������ �½��ϱ�?")) return false;
		}
		function idCheck(){
			var url = "../entry/idcheck.html?ID=" +document.fm.id.value;
			window.open(url, "_blank_", "width = 450, height = 300")
		}
	</script>
</body>
</html>