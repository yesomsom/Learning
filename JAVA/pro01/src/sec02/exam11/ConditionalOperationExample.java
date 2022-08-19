package sec02.exam11;

public class ConditionalOperationExample {

	public static void main(String[] args) {
		int score = 85;
		int score1 = 80;
		int score2 = 98;
		
		char grade = (score > 90) ? 'A' : ((score > 80) ? 'B' : 'C');
		System.out.println(score + "점은 " + grade + "등급입니다.");
		char grade1 = (score1 > 90) ? 'A' : ((score1 > 80) ? 'B' : 'C');
		System.out.println(score1 + "점은 " + grade1 + "등급입니다.");
		char grade2 = (score2 > 90) ? 'A' : ((score2 > 80) ? 'B' : 'C');
		System.out.println(score2 + "점은 " + grade2 + "등급입니다.\n");
		
		// 1등의 점수를 출력
		if(score > score1) {
			if(score > score2) {
				System.out.printf("1등의 점수는 %d 입니다.", score);
			} else {
				System.out.printf("1등의 점수는 %d 입니다.", score2);
			}
		} else {
			if(score1 > score2) {
				System.out.printf("1등의 점수는 %d 입니다.", score1);
			} else {
				System.out.printf("1등의 점수는 %d 입니다.", score2);
			}
		}
		
	}

}
