package sec01.exam03;
import java.util.*;

public class LinkedListExample {

	public static void main(String[] args) {
		List<String> list1 = new ArrayList<String>();
		List<String> list2 = new LinkedList<String>();

		long startTime;
		long endTime;
		
		//ArrayList 0인덱스에 값을 교체하면서 넣기
		startTime = System.nanoTime();
		for(int i=0; i<10000; i++) {
			list1.add(0, String.valueOf(i));
		}
		endTime = System.nanoTime();
		System.out.println("ArrayList  교체 걸린시간: "+ (endTime-startTime) + " ns");

		//LinkedList 0인덱스에 값을 교체하면서 넣기
		startTime = System.nanoTime();
		for(int i=0; i<10000; i++) {
			list2.add(0, String.valueOf(i));
		}
		endTime = System.nanoTime();
		System.out.println("LinkedList 교체 걸린시간: "+ (endTime-startTime) + " ns");
		
		//ArrayList i인덱스에 값을 순차적으로 넣기
		startTime = System.nanoTime();
		for(int i=0; i<10000; i++) {
			list1.add(i, String.valueOf(i));
		}
		endTime = System.nanoTime();
		System.out.println("ArrayList  걸린시간: "+ (endTime-startTime) + " ns");
		
		//LinkedList i인덱스에 값을 순차적으로 넣기
		startTime = System.nanoTime();
		for(int i=0; i<10000; i++) {
			list2.add(i, String.valueOf(i));
		}
		endTime = System.nanoTime();
		System.out.println("LinkedList 걸린시간: "+ (endTime-startTime) + " ns");
		
		}
}
