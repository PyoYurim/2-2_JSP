<%@page import="java.util.Date" %>
<%@page import="java.util.HashMap" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	HashMap<String, Object> mapData = new HashMap<>();
	mapData.put("id", "admin");
	mapData.put("today", new Date());
	mapData.put("age", 25);
%>
<c:set var="map" value="<%=mapData %>"/>
<c:forEach var="m" items="${map }">
	${m.key } = ${m.value }<br>
</c:forEach>
<hr>
<c:set var="intArray" value="<%=new int[]{10,20,30,40,50} %>" />
<c:forEach var="aVal" items="${intArray }" begin="2" end="4" varStatus="status">
	${status.index } - ${status.count } - [${aVal }]<br>
</c:forEach>
<hr>
<c:forEach var="num" begin="1" end="9">
	7 * ${num } = ${7 * num }<br>
</c:forEach>
<hr>
<h3>forTokens 태그</h3>
콤마와 점을 구분자로 이용 : <br>
<c:forTokens var="token" items="빨강, 주황.노랑.초록,파랑,남색,보라" delims=",.">
	${token }
</c:forTokens>
</body>
</html>