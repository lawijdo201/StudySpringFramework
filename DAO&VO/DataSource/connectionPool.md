JNDI
===========
* 필요한 자원을 (키/값) 쌍으로 저장한 후 필요할때 키를 이용해 값을 얻는방법
* 톰켓 컨테이너가 ConnectionPool 객체를 생성하면 이 객체에 대한 JNDI 이름(key)을 미리 설정해 놓음
* 그러면 웹 애플리케이션에서 데이터베이스와 연동 작업을 할 때 이 JNDI(이름)으로 접근하여 작업을 수행함

DataSource
=====================
커넥션풀에는 여러개의 Connection 객체가 생성되어 운용되는데, 이를 직접 웹 애플리케이션에서 다루기 힘들기 때문에 DataSource라는 개념을 도입하여 사용.

DataSource에 대해 정의하자면 아래와 같다.
----------------------------------
* 커넥션 풀의 Connection을 관리하기 위한 객체이다.
* JNDI Server를 통해서 이용된다.
* DataSource 객체를 통해서 필요한 Connection을 획득, 반납 등의 작업을 한다.

DataSource를 이용하려면 다음의 절차를 따릅니다.
----------------------------------------------------------
1. JNDI Server에서 lookup( ) 메소드를 통해 DataSource 객체를 획득한다.
2. DataSource 객체의 getConnection( ) 메소드를 통해서 Connection Pool에서 Free 상태의 Connection 객체를 획득한다.
3. Connection 객체를 통한 DBMS 작업을 수행한다.
4. 모든 작업이 끝나면 DataSource 객체를 통해서 Connection Pool에 Connection을 반납한다.
