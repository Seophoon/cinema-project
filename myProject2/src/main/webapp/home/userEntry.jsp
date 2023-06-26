<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 가입</title>
</head>
<body>
	<div align = "center">
		<h2>회원 정보를 입력하세요</h2>
		<form:form action = "../entry/entry.html" method = "post" modelAttribute="user"
				onsubmit="return check(this)" name="fm">
				이 름 : <form:input path="name"/><br/>
				계 정 : <form:input path="id"/>
				<input type = "hidden" name = "idChecked"/>
				<input type = "button" value = "중복검사" onClick = "idCheck()"/>
				<br/>
				주 소 : <form:input path="addr"/><br/>
				연락처 : <form:input path="phone"/><br/>
				암 호 : <form:password path="pwd"/><br/>
				암호 확인 : <input type = "password" name = "CONFIRM"/><br/>
				이메일 : <form:input path="email"/><br/>
				<br/><br/>
				<input type = "submit" value = "가 입"/>
				<input type = "reset" value = "취 소"/><br/><br/>
		</form:form>
	</div>
	<script type="text/javascript">
		function check(frm){
			if(frm.name.value == ""){
				alert("이름을 입력하세요.");
				frm.name.focus();
				return false;
			}
			if(frm.id.value == ""){
				alert("계정을 입력하세요.")
				frm.id.focus();
				return false;
			}
			if(frm.idChecked.value == ""){
				alert("ID 중복검사를 하세요.");
				frm.id.focus();
				return false
			}
			if(frm.addr.value == ""){
				alert("주소를 입력하세요.");
				frm.addr.focus();
				return false;
			}
			if(frm.phone.value == ""){
				alert("연락처를 입력하세요.");
				frm.phone.focus();
				return false;
			}
			if(frm.pwd.value == ""){
				alert("암호를 입력하세요.");
				frm.pwd.focus();
				return false;
			}
			if(frm.pwd.value != frm.CONFIRM.value){
				alert("암호가 일치하지 않습니다.");
				frm.pwd.focus();
				return false;
			}//암호확인이 다른경우
			
			if(!confirm("입력한 내용이 맞습니까?")) return false;
		}
		function idCheck(){
			var url = "../entry/idcheck.html?ID=" +document.fm.id.value;
			window.open(url, "_blank_", "width = 450, height = 300")
		}
	</script>
</body>
</html>