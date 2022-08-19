package sec01.exam04;

public class IfDiceExample {

	public static void main(String[] args) {
		int num = (int)(Math.random()*6) + 1;
		
		if(num==1) {
			System.out.println("1번이 나왔습니다.");
		} else if(num==2) {
			System.out.println("2번이 나왔습니다.");
		} else if(num==3) {
			System.out.println("3번이 나왔습니다.");
		} else if(num==4) {
			System.out.println("4번이 나왔습니다.");
		} else if(num==5) {
			System.out.println("5번이 나왔습니다.");
		} else {
			System.out.println("6번이 나왔습니다.");
		}
		
		int num1 = (int)(Math.random()*6) + 1;
		
		if(num1==1) {
			System.out.println("1번이 나왔습니다.");
		} else if(num1==2) {
			System.out.println("2번이 나왔습니다.");
		} else if(num1==3) {
			System.out.println("3번이 나왔습니다.");
		} else if(num1==4) {
			System.out.println("4번이 나왔습니다.");
		} else if(num1==5) {
			System.out.println("5번이 나왔습니다.");
		} else {
			System.out.println("6번이 나왔습니다.");
		}
		
		//주사위의 합, 차, 곱 구하기
		System.out.printf("주사위 합은: %d, 주사위 차는 %d, 주사위 곱은: %d 입니다.", num+num1, Math.abs(num-num1), num*num1);

	}

}
