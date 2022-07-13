<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  <%-- 선언 필수 --%>
<%
	request.setCharacterEncoding("utf-8");
%>
<c:set var="contextPath" value="&{pageContext.request.contextPath}" />
<html>
<head>
<meta charset=”UTF-8">
<title>회원 정보 출력창</title>
</head>
<body>
	<c:set var="title1" value="hello world!" />
	<c:set var="title2" value="쇼핑몰 중심 JSP입니다!" />
	<c:set var="str1" value="중심" />
	<h2>여러 가지 문자열 함수 기능</h2>
	title1="hello world"<br>
	title2="쇼핑몰 중심 JSP 입니다.!"<br>
	str1="중심"<br><br>
	
	fn:length(title1)=${fn:length(title1)} <br> <%-- 문자열 길이를 반환합니다. --%>
	fn:toUpperCase(title1)=${fn:toUpperCase(title1) }<br> <%-- 문자열을 대문자로 변환합니다. --%>
	fn:toLowerCase(title1)=${fn:toLowerCase(title1) }<br> <%-- 문자열을 소문자로 변환합니다. --%>
	
	fn:substring(title1,3,6)=${fn:substring(title1,3,6) }<br>	<%-- 문자열 인덱스 3~5까지를 반환합니다. 저장x --%>
	fn:trim(title1)=${fn:trim(title1) }<br> <%--문자열 앞뒤 공백 제거 --%>
	fn:replace(title1," ","/")=${fn:replace(title1," ","/") } <%-- 문자열에서 " "을 "/"로 대체합니다. --%>
	
	fn:indexOf(title2,str1)=${fn:indexOf(title2,str1) }<br>	<%-- title2문자열에서 str1의 인덱스를 구합니다. --%>
	fn:contains(title2,str1)=${fn:contains(title2,str1) }<br> <%-- title2문자열에서 str1이 포함되었는지 구합니다. return boolean --%>
</body>
</html>
