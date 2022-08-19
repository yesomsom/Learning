package sec01.exam06;

public class ThreadA extends Thread {
	public ThreadA() {
		setName("ThreadA");
	}
	
	public void run() {
		for(int i=0; i<3; i++) {
			System.out.println(getName() + "가 출력한 내용");
		}
	}
}
