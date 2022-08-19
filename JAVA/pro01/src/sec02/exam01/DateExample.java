package sec02.exam01;

import java.text.*;
import java.util.*;

public class DateExample {

	public static void main(String[] args) {
		Date now = new Date();
		String strNow1 = now.toString();
		System.out.println(strNow1);
		
		SimpleDateFormat sdf = 
				new SimpleDateFormat("yyyy년 MM월 dd일 hh시 mm분 ss초");
		String strNow2 = sdf.format(now);
		System.out.println(strNow2);
		
		SimpleDateFormat sdf1 = 
				new SimpleDateFormat("yyyy.MM.dd E hh시 mm분 ss초");
		String strNow3 = sdf1.format(now);
		System.out.println(strNow3);
		
		SimpleDateFormat sdf2 = 
				new SimpleDateFormat("a kk시 mm분");
		String strNow4 = sdf2.format(now);
		System.out.println(strNow4);
	}

}
