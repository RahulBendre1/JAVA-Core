<%@page import="java.sql.Timestamp"%>
<%@page import="kr.co.iamtek.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="member.js"></script>
</head>
<body>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="dto" class="kr.co.iamtek.DbDTO" scope="page"/>
<jsp:setProperty name="dto" property="*"  /> <%-- date�� ������ form ���븸 dto�� �Է� --%>
<%
	Timestamp date = new Timestamp(System.currentTimeMillis());
	dto.setDate(date);		//���� date�� dto�� �Է�
	DbDAO dao = DbDAO.getInstance();
	if (dao.getId(dto.getId()) == "") {
		dao.memberInsert(dto);
		session.setAttribute("id", dto.getId());
%>
	<script type="text/javascript">
			alert("ȸ�� ������ �����մϴ�.");
			location = "login.jsp";
	</script>
<%
	} else {
%>
	<script type="text/javascript">
		alert("���̵� �̹� �����մϴ�.");
		history.back();
	</script>
<%
	}
%>
</body>
</html>