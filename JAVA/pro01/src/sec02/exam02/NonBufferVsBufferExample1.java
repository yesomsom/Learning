package sec02.exam02;
import java.io.*;

public class NonBufferVsBufferExample1 {

	public static void main(String[] args) throws Exception {
		String originalFilePath3 = 
				"E:\\parkyerin\\pro01\\src\\sec02\\exam02\\originalFile3.jpg";
		String targetFilePath3 = "C:/Temp/targetFile3.jpg";
		FileInputStream fis = new FileInputStream(originalFilePath3);
		FileOutputStream fos = new FileOutputStream(targetFilePath3);
		
		String originalFilePath4 = 
				"E:\\parkyerin\\pro01\\src\\sec02\\exam02\\originalFile4.jpg";
		String targetFilePath4 = "C:/Temp/targetFile4.jpg";
		FileInputStream fis2 = new FileInputStream(originalFilePath4);
		FileOutputStream fos2 = new FileOutputStream(targetFilePath4);
		BufferedInputStream bis = new BufferedInputStream(fis2);
		BufferedOutputStream bos = new BufferedOutputStream(fos2);
		
		long nonBufferTime = copy(fis, fos);
		System.out.println("버퍼를 사용하지 않았을 때:\t" + nonBufferTime + "ns");
		
		long bufferTime = copy(bis, bos);
		System.out.println("버퍼를 사용했을 때:\t\t" + bufferTime + "ns");
		
		fis.close();
		fos.close();
		bis.close();
		bos.close();
	}
	
	static int data = -1;
	public static long copy(InputStream is, OutputStream os) throws Exception {
		long start = System.nanoTime();
		while(true) {
			data = is.read();
			if(data == -1) break;
			os.write(data);
		}
		os.flush();
		long end = System.nanoTime();
		return (end-start);
	}

}
