package sec01.exam05;

import java.util.*;

public class HashSetExample2 {

	public static void main(String[] args) {
		Set<Member1> set = new HashSet<Member1>();
		
		set.add(new Member1("홍길동", 30));
		set.add(new Member1("홍길동", 30));
		set.add(new Member1("홍길동", 20));
		set.add(new Member1("길동", 30));
		
		System.out.println("총 객체수: "+set.size());

	}

}
