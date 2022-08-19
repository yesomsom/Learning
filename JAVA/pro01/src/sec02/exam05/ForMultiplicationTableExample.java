package sec02.exam05;

public class ForMultiplicationTableExample {

	public static void main(String[] args) {
		System.out.println("<< 2 ~ 9단 구구단 >>\n");
		for(int m=2; m<=9; m++) {
			System.out.println("*** " + m + "단 ***");
			for (int n=1; n<=9; n++) {
				System.out.println(m + " x " + n + " = " + (m*n));
			}
		}
		System.out.println("--------------------\n");
		System.out.println("<< 2 ~ 13단 구구단 >>\n");
		for(int m=2; m<=13; m++) {
			System.out.println("*** " + m + "단 ***");
			for (int n=1; n<=13; n++) {
				System.out.println(m + " x " + n + " = " + (m*n));
			}
		}
		
		//2단만 나오게 하기
		System.out.println("--------------------\n");
		System.out.println("<< 2단 구구단 >>\n");
		for(int m=2; m<=2; m++) {
			System.out.println("*** " + m + "단 ***");
			for (int n=1; n<=9; n++) {
				System.out.println(m + " x " + n + " = " + (m*n));
			}
		}

	}

}
