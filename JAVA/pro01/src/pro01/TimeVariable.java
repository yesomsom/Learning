package pro01;

public class TimeVariable {

	public static void main(String[] args) {
		int hour = 2;
		int min = 50;
		int sec = 20;
		
		int totalMin = min + (hour*60);
		int totalSec = (totalMin * 60) + sec;
		System.out.println("총sec: " + totalSec);
	
	}

}
