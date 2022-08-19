package sec02.exam09;

public class BreakOutterExample {

	public static void main(String[] args) throws Exception {
		Outter: for(char upper='A' ; upper<='Z'; upper++) {
			for(char lower='a'; lower<='z'; lower++) {
				System.out.println(upper + "-" + lower);
				if(lower=='g') {
					break Outter;
				}
			}
		}
		System.out.println("프로그램 실행 종료");
		
		Out: for(char upper='A' ; upper<='Z'; upper++) {
			for(char lower='a'; lower<='z'; lower++) {
				System.out.println(upper + "-" + lower);
				if(lower=='c' && upper=='B') {
					break Out;
				}
				
			}
		}
		System.out.println("프로그램 실행 종료");
		
		for(char upper='A' ; upper<='Z'; upper++) {
			for(char lower='a'; lower<='z'; lower++) {
				System.out.println(upper + "-" + lower);
				if(lower=='b') {
					break;
				}
				
			}
			if(upper=='B') {
				break;
			}
		}
		System.out.println("프로그램 실행 종료");
	}

}
