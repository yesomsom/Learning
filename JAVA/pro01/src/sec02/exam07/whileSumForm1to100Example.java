package sec02.exam07;

public class whileSumForm1to100Example {

	public static void main(String[] args) {
		int sum = 0;
		int i = 0;
		
		while(i<=100) {
			sum += i;
			i++;
		}
		System.out.println("1~" + (i-1) + " 합 : " + sum);

	}

}
