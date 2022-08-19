package sec01.exam04;

public class VariableScopeExample {

	public static void main(String[] args) {
		int v1 = 15;
		if(v1>10) {
			int v2;
			v2 = v1 - 10;
			int v3 = v1 + v2 +5;
			System.out.println(v3);
		}
		
		int v4 = 3;
		int v5;
		int v6 = 0;
		
		if(v4<10) {
			v5 = v4 + 10;
			v6 = v5 + v4;
		
		}
		System.out.println(v6);
	}
}
