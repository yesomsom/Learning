package sec01.exam12;
import java.io.*;

public class ReadExample {

	public static void main(String[] args) throws Exception {
		Reader reader = new FileReader("C:/Temp/test8.txt");
		char[] buffer = new char[100];
		
		while(true) {
			int readCharNum = reader.read(buffer);
			System.out.println(readCharNum); //문의 끝을 만나 마지막에 -1출력
			if(readCharNum == -1) break;
			for(int i=0; i<readCharNum; i++) {
				System.out.println(buffer[i]);
			}
		}
		
		reader.close();
	}

}