<%@page import="kr.co.iamtek.db.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		BoardDTO dto = (BoardDTO) request.getAttribute("content_view");
	%>
	<form action="modify.do" method="post">
		<input type="hidden" name="bNumber" value="<%= dto.getbNumber() %>">
		<table width="500" border="1">
			<tr>
				<td bgcolor="grey">��ȣ</td><td><%= dto.getbNumber() %></td>
				<td bgcolor="grey">��ȸ</td><td><%= dto.getbHit() %></td>
				<td bgcolor="grey">�̸�</td><td><%= dto.getbAuthor() %></td>
			</tr>
			<tr>
				<td bgcolor="grey">����</td><td colspan="5"><input type="text" size="60" name="bTitle" value="<%= dto.getbTitle() %>"></td>
			</tr>
			<tr>
				<td bgcolor="grey">����</td><td colspan="5"><textarea rows="5" cols="60" name="bContent" ><%= dto.getbContent() %></textarea></td>
			</tr>
			<tr>
				<td colspan="6" align="center"><input type="submit" value="����"></td>
			</tr>
		</table>
	</form>
	<a href="list.do"><button>�� ���</button></a>
	<a href="delete.do"><button>�� ����</button></a>
	<a href="reply.do"><button>��� �ޱ�</button></a>

</body>
</html>