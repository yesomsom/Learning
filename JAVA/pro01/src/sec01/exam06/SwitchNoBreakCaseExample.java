package sec01.exam06;

public class SwitchNoBreakCaseExample {

	public static void main(String[] args) {
		int time = (int)(Math.random()*4) +8; // 8 <= time < 12 즉, 정수는 8, 9, 10 가능
		System.out.println("[현재시간: " + time + " 시]");
		
		switch(time) {
			case 8:
				System.out.println("출근합니다.");
			case 9:
				System.out.println("회의를 합니다.");	
			case 10:
				System.out.println("업무를 합니다.");
			default:
				System.out.println("외근을 나갑니다.");	
			
		}

	}

}
