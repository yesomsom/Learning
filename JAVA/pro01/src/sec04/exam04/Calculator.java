package sec04.exam04;

public class Calculator {
	
	int plus(int x, int y) {
		int result = x + y;
		return result;
	}
	
	double avg(int x, int y) {
		double sum = plus(x, y);
		double result = sum / 2;
		return result;
	}
	
	void execute() { 
		double result = avg(7, 10);
		println("실행결과: " + result);
	}
	
	void println(String message) {
		System.out.println(message);
	} //println은 기존에 쓰는 것이므로 중복되어 이런 방법은 안좋은 방법이다. 개발자가 만든 언어가 우선

}
