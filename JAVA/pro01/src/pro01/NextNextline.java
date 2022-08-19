package pro01;
import java.util.*;

public class NextNextline {

	public static void main(String[] args) throws Exception {
		
		System.out.print("입력: ");
		Scanner sc1 = new Scanner(System.in);
		System.out.println(sc1.nextLine()); //nextLine은 엔터 전까지
		
		System.out.print("입력: ");
		Scanner sc2 = new Scanner(System.in);
		System.out.println(sc1.next()); //next는 스페이스바 전까지
	}

}
