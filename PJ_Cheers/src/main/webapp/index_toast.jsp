<%@ page language="java" contentType="text/html; charset=UTF-8 "
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="com.smhrd.domain.Member"%>
<%@page import="com.smhrd.domain.Toast"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="InsertPostCon">
	<table>
		<tr>
			<td>번호</td>
			<td>
				${toast.toast_no}
			</td>
		</tr>
		<tr>
			<td>멤버id</td>
			<td>
				${loginMember.id}
			</td>
		</tr>
		<tr>
			<td>내용</td>
			<td><input type="text"></td>
		</tr>
		<tr>
			<td>날짜</td>
			<td><span name="toast_date"></span></td>
		</tr>

	</table>
		
		<input type="submit" value="등록">
		
		
	</form>
</body>
</html>