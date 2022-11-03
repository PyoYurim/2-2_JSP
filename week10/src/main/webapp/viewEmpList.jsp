<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>사원 목록 보기</h3>
<table border ="1" width = "100%" style = "text-align:center;">
	<tr>
		<th>사원번호</th>
		<th>사원이름</th>
		<th>근무부서</th>
		<th>업무</th>
		<th>급여</th>
	</tr>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		String jdbcURL = "jdbc:mysql://localhost:3306/jspDB";
		String dbUser = "root";
		String dbPass = "rootpw";
		
		Connection conn = null;
		Statement  stat = null;
		ResultSet  rs   = null;
		
		conn = DriverManager.getConnection(jdbcURL, dbUser, dbPass);
		stat = conn.createStatement();
		
		String sql = "select * from emp";
		rs = stat.executeQuery(sql);
		
		while(rs.next()) {
			out.println("<tr><td>");
			out.println(rs.getString("empno")+"</td><td>");
			out.println(rs.getString("empname")+"</td><td>");
			out.println(rs.getString("empdept")+"</td><td>");
			out.println(rs.getString("empjob")+"</td><td>");
			out.println(rs.getString("empsal")+"</td><tr>");
			
		}
		
		rs.close();
		stat.close();
		conn.close();
	%>
</table>
</body>
</html>