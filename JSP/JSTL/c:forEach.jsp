<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
request.setCharacterEncoding("UTF-8");
%>
<%
	List dataList=new ArrayList();
	dataList.add("hello");
	dataList.add("world");
	dataList.add("안녕하세요!!");
%>
<c:set var="List" value="<%=dataList %>" />
<html>
<head>
<meta charset=”UTF-8">
<title>회원 정보 출력창</title>
</head>
<body>
<c:forEach var="i" begin="1" end="10" step="1" varStatus="loop">
i= ${i} &nbsp;&nbsp;&nbsp; 반복횟수: ${loop.count }<br>
</c:forEach>
<br>

<c:forEach var="i" begin="1" end="10" step="2">
5*${i}=${5*i }<br>
</c:forEach>
<br>

<c:forEach var="data" itens="${list}">
${data} <br>
</c:forEach>

<c:set var="fruits" value="사과, 파인애플, 바나나, 망고, 귤" />
<c:forTokens var="token" items="${fruit}" delims=",">
${token} <br>
</c:forTokens>
</body>
</html>
