Core 태그
===========================
```jsp
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
```
### Core 태그 라이브러리를 사용하기위해 반드시 위의 코드를 선언해야 한다.

|기능|태그|설명|예제|
|-------|---------|---------|-------------|
|변수 지원|<c:set>|JSP 페이지에서 변수를 지정합니다.|<c:set var="id" value="hong" scope="page" />|
|--|<c:remove>|지정된 변수를 제거합니다.|
|흐름 제어|<c:if>|조건문을 사용합니다.|
|--|<c:choose>|switch문을 사용합니다. <c:when>과 <c:otherwise> 서브 태그를 갖습니다.|
|--|<c:forEach|반복문을 사용합니다.|
|--|c:forTokens|구분자로 분리된 각각의 토큰을 처리할 때 사용합니다.|
|URL 처리|<c:import>|URL을 이용해 다른 자원을 JSP 페이지에 추가합니다.|
|--|<c:redirect>|response.sendRedirect()기능을 수행합니다.|
|--|<c:url>|요청 매개변수로부터 URL을 생성합니다.|
|기타 태그|<c:catch>|예외 처리에 사용합니다.|
|--|c:out>|JspWriter에 내용을 처리한 후 출력합니다.|

