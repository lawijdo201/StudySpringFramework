ExecuteQuery
==================

1. 수행결과로 ResultSet 객체의 값을 반환합니다.

2. SELECT 구문을 수행할 때 사용되는 함수입니다.

ExecuteUpdate
=========================

1. 수행결과로 Int 타입의 값을 반환합니다.

2. SELECT 구문을 제외한 다른 구문을 수행할 때 사용되는 함수입니다.

   * INSERT / DELETE / UPDATE 관련 구문에서는 반영된 레코드의 건수를 반환합니다.

   * CREATE / DROP 관련 구문에서는 -1 을 반환합니다.
