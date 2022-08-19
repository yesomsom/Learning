package sec01.exam10;
import java.io.*;

public class WriteExample {

	public static void main(String[] args) throws Exception {
		Writer writer = new FileWriter("C:/Temp/test10_1.txt");
		
		String str = "I Love You";
		
		writer.write(str);
		
		writer.flush();
		writer.close();

	}

}
