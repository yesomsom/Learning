package sec01.verify.exam04;

public class Child extends Parent {
	 private int studentNo;
	
	public Child(String name, int studentNo) {
		super(name);
		this.studentNo = studentNo;
	}
	
	public void SetChild(String name, int studentNo) {
		this.name = name;
		this.studentNo = studentNo;
	}
	
	public String GetChild(String name, int studentNo) {
		this.name = name;
		this.studentNo = studentNo;
		return "이름은 " + name + "이고, 학번은 " + studentNo;
	}
}
