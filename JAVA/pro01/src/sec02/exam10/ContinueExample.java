package sec02.exam10;

public class ContinueExample {

	public static void main(String[] args) throws Exception {
		System.out.println("------------------------\n");
		System.out.println(" *** 짝수를 출력합니다. *** ");
		for(int i=1; i<=10; i++) {
			if(i%2 != 0) {
				continue;
			}
			System.out.println(i);
		}
		System.out.println("------------------------\n");
		System.out.println(" *** 홀수를 출력합니다. *** ");
		for(int i=1; i<=10; i++) {
			if(i%2 == 0) {
				continue;
			}
			System.out.println(i);
		}
	}

}
