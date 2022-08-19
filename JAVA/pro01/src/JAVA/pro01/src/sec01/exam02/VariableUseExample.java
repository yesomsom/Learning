package sec01.exam02;

public class VariableUseExample {

	public static void main(String[] args) {
		int hour = 3;
		int minute = 5;
		int second = 20;
		
		System.out.println(hour + "시간" + minute + "분" + second + "초");
		
		int totalMinute = (hour*60) + minute;
		System.out.println("총" + totalMinute + "분");
		
		int totalSec = (totalMinute*60) + second;
		System.out.println("총" + totalSec + "초");
		

	}

}
