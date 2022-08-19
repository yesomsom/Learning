package sec03.exam01;

public class CarExample {

	public static void main(String[] args) {
		Car myCar = new Car("검정", 3000);
		Car myCar1 = new Car();
		
		System.out.println(myCar);
		System.out.println(myCar1);
		System.out.println(myCar.color);
		System.out.println(myCar.cc);
	}

}
