JDBC란?
===============
자바 애플리케이션에서 DBMS 종류에 상관없이 일관성 있게 연결해주는 기능


드라이버
-----------------------------
DBMS 개발사가 구현한 클래스의 집합

자바 애플리케이션에서 여러 종류의 DBMS와 연동과정
========================

#### 자바프로그램->JDBC 인터페이스 -> Oracle드라이버 -> Oracle

#### 자바프로그램->JDBC 인터페이스 -> DB2드라이버    -> DB2
                            
#### 자바프로그램->JDBC 인터페이스 -> mySQL드라이버  -> mySQL


자바 애플리케이션에서의 DBMS 연동 순서
======================================

1. import java.sql.* 과 DBMS 연돟 관련 네 가지 정보 설정하기
    * 드라이버명 : String driver = "oracle.jdbc.OracleDriver"
    *  URL : String url = "jdbc:oracle@ip번호:port번호:SID"
    *  사용자아이디 : String user = "사용자ID";
   *  비밀번호 : String pwd = "사용자pw";
  
2. 드라이버 로딩
   * Class.forName(driver);
  
3. Connection 맺기
    * Connection conn = DriverManager.getConnection(url, user, pwd);

4. Statement 객체 생성하기
    * Statment stmt = conn.createStatement();

5. Query문 작성하기
    * String query = "INSERT INTO Member VALUES ('0003','차범근',185,85,23)";
    * String query2 = "SELECT * FROM Member";

6. select문인 경우 결과값(ResultSet)처리하기
    * ResultSet rs = stmt.executeQuery(query2);

7. DBMS로 query 전송
    * stmt = executeUpdate(query);

8. close 작업
    * rs.close();
    * stmt.close();
    * conn.close();
