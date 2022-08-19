package sec01.exam13;
import java.io.*;

public class ReadExample {

	public static void main(String[] args) throws Exception {
		Reader reader = new FileReader("C:/Temp/test9.txt");
		char[] buffer = new char[5];
		
		int readCharNum = reader.read(buffer, 2, 3);
		System.out.println(readCharNum);
		if(readCharNum != -1) {
			for(int i=0; i<buffer.length; i++) {
				System.out.println(buffer[i]);
			}
		}
		reader.close();
	}

}
