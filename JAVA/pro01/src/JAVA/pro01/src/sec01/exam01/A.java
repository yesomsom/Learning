package sec01.exam01;

class A {
	A() {System.out.println("A 객체가 생성됨"); }
	
	class B {
		B() {System.out.println("B 객체가 생성됨"); }
		int field1;
		void method1() {System.out.println("classB-method1"); }
	}
	
	static class C {
		C() {System.out.println("C 객체가 생성됨"); }
		int field1;
		static int field2;
		void method1() {System.out.println("classC-method1"); }
		static void method2() {System.out.println("classC-method2"); }
	}
	
	void method() {
		
		class D {
			D() {System.out.println("D 객체가 생성됨"); }
			int field1;
			void method1() {System.out.println("classD-method1"); }
		}
		D d = new D();
		d.field1 = 3;
		d.method1();
	}
}
