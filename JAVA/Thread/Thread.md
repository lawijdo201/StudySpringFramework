Thread의 구현
==============

```
public class ThreadEx1 {
	public static void main(String[] args) {
		ThreadEx1_1 t1 = new ThreadEx1_1();
		
		Runnable r = new ThreadEx1_2();
		Thread t2 = new Thread(r);
		
		t1.start();
		t2.start();
	}
}

class ThreadEx1_1 extends Thread{
	public void run() {
		for(int i=0; i<5;i++) {
			System.out.println(getName());	//조상인 Thread의 getName()을 호출
		}
	}
}

class ThreadEx1_2 implements Runnable{
	public void run() {
		for(int i=0; i<5;i++) {
			//Thread.currentThread() - 현재 실행중인 Thread를 반환한다.
			System.out.println(Thread.currentThread().getName());
		}
	}
}
```
쓰레드의 실행
==============
* Thread().start()을 한다고 해서 쓰레드가 바로 실행되는 것이 아니라 실행대기상태에 있다가 자신의 차례가 되면 실행
* 한 번 실행이 종료된 쓰레드는 다시 실행할 수 없다. 즉, 하나의 쓰레드에 대해 start()가 한 번만 호출될 수 있다는 뜻이다. 그래서 만일 쓰레드의 작업을 한 번 더 수행해야 한다면 아래의 코드와 같이 새로운 쓰레ㄷ를 생성한 다음에 start()를 호출해야 한다.

```
ThreadEx1_1 t1 = new ThreadEx1_1();
t1.start();
t1 = new ThreadEx1_1(); //다시 생성
t1.start(); //OK
```

start()와 run()
=====================
* run()을 호출하는 것은 생성된 쓰레드를 실행시키는 것이 아니라 단순히 클래스에 선언된 메서드를 호출하는 것이 뿐이다.
* start()는 쓰레드가 작업을 실행하는데 필요한 호출스택(call stack)을 생상한 다음에 run()을 호출해서, 생성된 호출스택에 run()d이 첫 번쨰로 올라가게 한다.

데몬 쓰레드
===================
* 데몬 쓰레드는 다른 일반 쓰레드의 작업을 돕는 보조적인 역활을 수행하는 쓰레드이다.
* 일반 쓰레드가 모두 종료되면 데몬쓰레드는 강제적으로 자동으로 종료된다.
* 데몬 쓰레드는 무한루프와 조건문을 이용해서 실행 후 대기하고 있다가 특정 조건이 만족되면 작업을 수행하고 다시 대기하도록 작성한다.
* setDaemon()은 반드시 start()를 호출하기 전에 실행되어야한다.

```
public class ThreadEx10 implements Runnable {
	static boolean autoSave = false;

	public static void main(String[] args) {
		Thread t = new Thread(new ThreadEx10());
		t.setDaemon(true);    //데몬쓰레드 설정, 이 부분이 없으면 종료되지 않는다.
		t.start();

		for(int i = 1; i<=10;i++) {
			try {
				Thread.sleep(1000);
			}catch(InterruptedException e) {}
			System.out.println(i);
			if (i==5)
				autoSave = true;
		}
		System.out.println("프로그램을 종료합니다.");
	}
	
	public void run() {
		while(true) {
			try {
				Thread.sleep(3*1000);
			}catch(InterruptedException e) {}
			//autoSave의 값이 true이면 autoSave()를 호출한다.
			if(autoSave) {
				autoSave();
			}
		}
	}

	public void autoSave() {
		System.out.println("작업파일이 자동저장되었습니다.");
	}
}
```

쓰레드의 우선순의
====================
* void setProiority(int x): 쓰레드의 우선순위를x로 변경한다.(1 <= x <= 10)
* 우선순위는 쓰래드를 생성한 쓰래드로부터 상속받는다.

쓰레드의 실행제어
=======================

