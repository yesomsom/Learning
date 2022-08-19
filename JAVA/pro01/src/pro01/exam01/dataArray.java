package pro01.exam01;

public class dataArray {

	public static void main(String[] args) {
		//자료형[][] 배열명 = new 자료형[행크기][열크기];
		
		int[][] data = new int[3][4];
		data[0][0] = 10;
		data[0][1] = 15;
		data[0][2] = 7;
		data[0][3] = 3;
		data[1][0] = 1;
		data[1][1] = 5;
		data[1][2] = 17;
		data[1][3] = 30;
		data[2][0] = 20;
		data[2][1] = 2;
		data[2][2] = 6;
		data[2][3] = 13;
		
		//int[][] data = {{10, 15, 7, 3}, {1, 5, 17, 30}, {20, 2, 6, 13}};
		
		System.out.println(data[2][1]);
		System.out.println(data[1][0]);
	}

}
