package sec01.exam03;

public class VariableExchangeExample {

	public static void main(String[] args) {
		int x = 3;
		int y = 5;
		System.out.println("x:" + x + ", y:" + y);
		
		int temp = x;
		x = y;
		y = temp;
		System.out.println("x:" + x + ", y:" + y);
		
		
		int a = 9;
		int b = 3;
		int c = 5;
		System.out.println("a:" + a + ", b:" + b + ", c:" + c);
		
		int d = c;
		c = a;
		a = b;
		b = d;
		System.out.println("a:" + a + ", b:" + b + ", c:" + c);
	}

}
