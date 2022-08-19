package sec02.verify.exam06;
import java.util.Scanner;

public class Exam06 {

	public static void main(String[] args) throws Exception {
		boolean run = true;
		int studentNum = 0;
		int[] scores = null;
		int i = 0;
		double sum = 0;
		Scanner scanner = new Scanner(System.in);
		
		while(run) {
			System.out.println("---------------------------------");
			System.out.println("1.학생수 | 2.점수입력 | 3.점수리스트 | 4.분석 | 5.종료");
			System.out.print("선택> ");
			
			int selectNo = Integer.parseInt(scanner.nextLine());
			
			if(selectNo == 1) {
				System.out.println("1번을 선택하셨습니다.");
				System.out.print("학생수를 입력해주세요: ");
				studentNum = Integer.parseInt(scanner.nextLine());
				System.out.println("학생수> " + studentNum);
				scores = new int[studentNum];
				
			} else if(selectNo == 2) {
				System.out.println("2번을 선택하셨습니다.");
				System.out.print("점수를 입력해주세요: ");
				for(i=0; i<scores.length; i++) {
					scores[i] = Integer.parseInt(scanner.nextLine());
					System.out.println("scorces[" + i + "] > " + scores[i]);
				}

				
			} else if(selectNo == 3) {
				System.out.println("3번을 선택하셨습니다.");
				for(i=0; i<scores.length; i++) {
					System.out.println("scores[" + i + "]" + scores[i]);
				}
				
			} else if(selectNo == 4) {
				System.out.println("4번을 선택하셨습니다.");
				int max = 0;
				for(i=0; i<scores.length; i++) {
					if(max<scores[i]) {
						max = scores[i];
					} else {
					}
				}
				System.out.println("최고 점수: " + max);
				for(i=0; i<scores.length; i++) {
					sum += scores[i];
				}
				System.out.println("평균 점수: " + (sum/studentNum));

				
			} else if(selectNo == 5) {
				System.out.println("5번을 선택하셨습니다.");
				run = false;
			}
		
		

		}
	System.out.println("프로그램 종료");
	}
}
