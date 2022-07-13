<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:url var="url1" value="member1.jsp" >			<%-- <c:url>태그로 이동할 페이지를 설정합니다. --%>
	<c:param name="id" value="hong" />			<%-- 이동할 페이지로 전달할 데이터를 설정합니다. --%>
	<c:param name="pwd" value="1234" />
	<c:param name="name" value="홍길동" />
	<c:param name="email" value="hong@test.com" />
</c:url>
<html>
<head>
<meta charset=”UTF-8">
<title>회원 정보 출력창</title>
</head>
<body>

<a href='${url1 }'>화원정보 출력</a>
</body>
</html>
