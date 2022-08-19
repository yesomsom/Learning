package sec02.exam01;

public class SignOperatorExample {

	public static void main(String[] args) {
		int x = -100;
		int result1 = +x;
		int result2 = -x;
		System.out.println("result1=" + result1);
		System.out.println("result2=" + result2);
		System.out.println(Math.abs(x));
		
		byte b = 100;
		int result3 = -b;
		System.out.println("result3=" + result3);
		System.out.println(Math.abs(result3));

	}

}
