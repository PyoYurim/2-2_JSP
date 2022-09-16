<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>< 개인정보 입력 결과 ></h3><br>
	<div align = "center"></div>
	<table border = "1">
	<tr>
	<th width = "120em">구분</th>
	<th width = "170em">내용</th>
	<tr>
	<th width = "120em">이름</th>
	<th width = "170em"><%=request.getParameter("name") %></th>
	<tr>
	<th width = "120em">나이</th>
	<th width = "170em"><%=request.getParameter("age") + "세" %></th>
	<tr>
	<th width = "120em">성별</th>
	<th width = "170em"><%=request.getParameter("gender")%></th>
	<tr>
	<th width = "120em">주소</th>
	<th width = "170em"><%=request.getParameter("addr")%></th>
	<tr>
	<th width = "120em">좋아하는 운동</th>
	<th width = "170em"><% String[] checkboxs = request.getParameterValues("exercise");
							for(int i = 0; i < checkboxs.length; i++) {
								if (checkboxs.length < 1) {	
									out.print(checkboxs[i]);
									}
								else if(checkboxs.length > 1){
									out.print(checkboxs[i]);
									if(i < checkboxs.length -1) {
										out.print(", ");
									}
								}
							}
							%></th>
	</table>
	
</body>
</html>