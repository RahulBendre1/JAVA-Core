<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script language="JavaScript" src="member.js" ></script>
</head>
<body>
<h1>���� ������ �Դϴ�.</h1>
	<form action="joinOk.jsp" method="post" name="formJoin">
		���̵� : <input type="text" name="id" value="blitz"/><br>
		��й�ȣ : <input type="password" name="pw" value="1234"/><br>
		��й�ȣ(Ȯ��) : <input type="password" name="pw_check" value="1234"/><br>
		�̸� : <input type="text" name="name" value="�輺��"/><br>
		�̸��� : <input type="text" name="email" value="blitz70@hanmail.net"/><br>
		�ּ� : <input type="text" name="address" value="õȣ��"/><br>
		<input type="button" value="ȸ������"  onclick="checkJoin()">
		<input type="reset" value="���" onclick="location='login.jsp'">
	</form>
</body>
</html>