String
====================

```
String str1 = "abc";  //문자열 리터럴 "abc"의 주소가 str1에 저장됨, 문자열 리터럴은 클래스가 메모리에 로드될 때 자동적으로 미리 생성된다.
String str2 = "abc";  //문자열 리터럴 "abc"의 주소가 str2에 저장됨
String str3 = new String("abc");  //새로운 String인스턴스를 생성
String str4 = new String("abc");  //새로운 String인스턴스를 생성


str1 == str2    //true, str1의 주소값(0x100) str2의 주소값(0x100)

str3 == str4   //false, str3의 주소값(0x200) str4의 주소값(0x300)
(false)

str1.equals(str2) //true
str3.equals(str4) //true
```

##### String클래스의 생성자를 이용한 경우에는 new연산자에 의해서 메모리할당이 이루어지기 때문에 항상 새로운 String인스턴스가 생성된다.
##### 그러나 문자열 리터럴은 이미 존재하는 것을 재사용하는 것이다.
##### 하지만 String의 주소를 비교하는 "=="와 달리 두 문자열의 내용을 비교하는 equals()는 둘 다 참이다.

String클래스의 메서드
--------------------

* char charAt(int index)
  
  지정된 위치(index)에 있는 문자를 알려준다. (index는 0부터 시작)
  ```
  String s = "Hello";
  String n = "0123456";
  char c = s.charAt(1);    //c = 'e'
  char c2 = n.CharAt(2);   //c2 = '1'
  
  ```
  
  * int compareTo(String str)

    문자열(str)과 사전순서로 비교한다. 같으면 0을, 사전순으로 이전이면 음수를, 이후면 양수를 반환한다.
    ```
    int i = "aaa".compareTo("aaa");   //i = 0
    int i2 = "aaa".compareTo("bbb");  //i2 = -1
    int i3 = "bbb".compareTo("aaa");  //i3 = 1
    ```
    
    * String concat
    
