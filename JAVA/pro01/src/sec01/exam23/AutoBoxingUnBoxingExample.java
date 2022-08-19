package sec01.exam23;

public class AutoBoxingUnBoxingExample {

	public static void main(String[] args) {
		Integer obj = 100;
		System.out.println("Value: " + obj.intValue());
		
		int value = obj;
		System.out.println("Value: " + value);
		
		int result = obj + 100;
		System.out.println("result: " + result);

	}

}
