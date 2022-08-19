package sec01.exam05;

public class Member1 {
	public String name;
	public int age;
	
	public Member1(String name, int age) {
		this.name = name;
		this.age = age;
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof Member1) {
			Member1 member1 = (Member1) obj;
			return member1.name.equals(name) && (member1.age==age); 
		} else {
			return false;
		}
	}
	@Override
	public int hashCode() {
		return name.hashCode() + age;
	}
}
