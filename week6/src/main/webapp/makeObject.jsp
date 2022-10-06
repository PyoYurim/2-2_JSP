<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="member" class="week6.MemberInfo" scope="request"/>
<jsp:setProperty name="member" property="id" value="admin"/>
<jsp:setProperty property="name" name="member" value="홍길동"/>
<jsp:setProperty property="email" name="member" value="admin@inhatc.ac.kr"/>

<jsp:forward page = "useObject.jsp"></jsp:forward>
</body>
</html>