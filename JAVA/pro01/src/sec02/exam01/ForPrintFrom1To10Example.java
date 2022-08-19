package sec02.exam01;

public class ForPrintFrom1To10Example {

	public static void main(String[] args) {
		
		int i = 0;
		System.out.println("------------------------------\n") ;
		System.out.println("<< " + (i+1) + "~10 까지의 수 출력 >>\n") ;
		for(i=1; i<=10; i++) {
			System.out.println(i);
		}

		System.out.println("------------------------------\n") ;
		System.out.println("<< 홀수 출력 >>\n");
		
		for(i=1; i<=10; i++) {
			if (i%2 == 0 ) {
			} else {
				System.out.println(i);
			}
		}
		System.out.println("------------------------------\n") ;
		System.out.println("<< 짝수 출력 >>\n");			
		for(i=1; i<=10; i++) {
			if (i%2 != 0 ) {
			} else {
				System.out.println(i);
			}	
		}

		
	}
}
