package sec04.exam06;

public class CalculatorExample {

	public static void main(String[] args) {
		Calculator myCalcu = new Calculator();
		
		double result1 = myCalcu.areaRectangle(10);
		
		double result2 = myCalcu.areaRectangle(10, 20);
		
		double result3 = myCalcu.areacircle(2);
		
		System.out.println("정사각형 넓이=" + result1 + " cm²");
		System.out.println("직사각형 넓이=" + result2 + " cm²");
		System.out.println("원 넓이=" + result3 + " cm²");
	}

}
