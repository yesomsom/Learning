package sec01.exam06;
import sec01.exam04.*;

public class MyClassExample {

	public static void main(String[] args) {
		System.out.println("1)-------------------");
		
		MyClass myClass = new MyClass();
		myClass.rc.turnOn();
		myClass.rc.setVolume(5);

		System.out.println("2)-------------------");
		
		MyClass myClass2 = new MyClass(new Audio());
		
		System.out.println("3)-------------------");
		
		MyClass myClass3 = new MyClass();
		myClass3.methodA();
		
		System.out.println("4)-------------------");
		
		MyClass myClass4 = new MyClass();
		myClass4.methodB(new Television());
		}

}
