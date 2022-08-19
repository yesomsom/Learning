package sec01.verify.exam04;

public class ChildExample {

	public static void main(String[] args) {
		Child child = new Child("이름", 0000);
		String str = child.GetChild("김땡땡", 1234);
		System.out.println(str);

	}

}
