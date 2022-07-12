JSP 페이지 구성요소
==================

디렉티브 태그
-----------------------
* 페이지 디렉티브 태그: JSP 페이지의 여러가지 속성을 설정하는데 사용.
    * 사용 형식

      ### <%@ page 속성1 = "값1" 속성2 = "값2" 속성3 = "값3" ...%>
* 인클루드 디렉티브 태그: 공통으로 사용하는 JSP 페이지를 다른 JSP 페이지에 추가할 때 사용합니다.
     * 사용 형식

      ###jsp <%@ include file="공통기능.jsp"  %>
* 태그라이브 디렉티브 태그: 개발자나 프레임워크에서 제공하는 태그를 사용할 때 사용합니다.

JSP 스크립트 구성요소
=========================
* 선언문: JSP에서 변수나 메서드를 선언할 때 사용합니다.
* 스크립트릿: JSP에서 자바 코드를 작성할 때 사용합니다.
* 표현식: JSP에서 변수의 값을 출력할 때 사용합니다.

선언문
-------------
### <%! 멤버 변수 or 멤버 메서드 %>

스크립트릿
--------------------
### <% 자바 코드%>


표현식
----------------------
### <%=값 or 자바 변수 or 자바 식&>

* out 내장 객체를 이용해서 데이터를 출력할수 있다.
### ex) <% out.println(name + "," + age); %>

주석문
----------
### <%-- 내용 --%>

액션 태그
----------------
* 인클루드 액션 태그
   * 인클루드 디렉티브 태그처럼 화면을 분할해서 관리하는데 사용되는 태그
   * 화면의 유지 보수 및 재사용성을 높일 수 있음
   * 사용 방법
   ### <jsp:include page="jsp페이지" flush="true 또는 false">
   ### ~~~
   ### </jsp:include>

* 포워드 액션 태그
   * RequestDispatcher 클래스를 대신해서 포워딩하는 방법을 제공
   * 포워딩 시 값을 전달할 수 있음
   * 사용방법
   ### <jsp:forword page="포워딩할 JSP 페이지">
   ### ~~~
   ### </jsp:include>
   
<jsp:param>
-----------
   * String type의 값을 전달한다.
```
 <jsp:forward page="forwarding.jsp">
     <jsp:param name="파라미터키" value="<%= value %>"/>
</jsp:forward>
```


```
<%
     String value1 = request.getParameter("파라미터키");                                
%>
```
* <jsp:useBean>
   * 자바빈 객체에 접근할 때 사용하는 이름이다.
   * 사용방법
   ###   ex) <jsp:useBean id="m" class="sec01.ex01.MemberBean" scope="page"/>
   
   ##### id: jap페이지에서 자바 빈 객체에 접근할 때 사용할 이름
   
   ##### class: 패키지 이름을 포함한 자바 빈 이름
   
   ##### scope: 자바빈에 대한 접근 범위(page, request, session, application), 생략가능, 기본값은 page
  
* <jsp:setProperty>
    * 생성된 자바빈 객체에 프로퍼티 값을 지정하는 기능을 한다.
    * 사용방법
    ### ex) <jsp:setProperty name="m" property="id" value='<%=request.getParameter("id") %>' />
    
* <jsp:getProperty>
   * <jsp:getProperty name="자바빈" property="이름" />

### 응용

<jsp:useBean id="m" class="sec01.ex01.MemberBean">

<jsp:setProperty name="m" property="*" />  //MemberBean 클래스에서 넘어온 데이터를 자바빈 "m"에 모두 넣는다

<jsp:getProperty name="m" property="pwd" />  //useBean에서 pwd에 해당하는 값을 가져온다.

