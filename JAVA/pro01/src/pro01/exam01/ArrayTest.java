package pro01.exam01;

public class ArrayTest {

	public static void main(String[] args) {
		int[][] data = new int[3][4];
		data[0][0] = 10;
		data[0][1] = 15;
		data[0][2] = 7;
		data[0][3] = 3;
		data[1][0] = 1;
		data[1][1] = 6;
		data[1][2] = 17;
		data[1][3] = 2;
		data[2][0] = 20;
		data[2][1] = 2;
		data[2][2] = 6;
		data[2][3] = 4;
		
		//int[][] data = {{10, 15, 7, 3}, {1, 6, 17, 2}, {20, 2, 6, 4}};
		
		System.out.println("data[1][1] = " + data[1][1]);
		System.out.println("data[1][3] = " + data[1][3]);
		System.out.println("data[2][3] = " + data[2][3]);
	}

}
