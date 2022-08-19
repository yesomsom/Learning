package sec01.verify.exam05;

public class Child extends Parent {
	private String name;
	
	public Child() {
		this("홍길동");
		System.out.println("Child() call");
	}
	public Child(String name) {
		this.name = name;
		System.out.println("Child(String name) call");
	}
	public Child(String nation, String name) {
		super(nation);
		this.name = name;
		System.out.println("Child(String nation, String name) call");
	}
}
