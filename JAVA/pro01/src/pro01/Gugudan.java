package pro01;

public class Gugudan {

	public static void main(String[] args) {
		for(int i=2; i<10; i++) {
			System.out.println("<<  "+i+"단  >>");
			for(int n=1;n<10;n++) {
				System.out.println(i+" x "+n+ " = " + (i*n));
			}
		}
		int x =0;
		while(x<5) {
			System.out.println(x);
			++x;
		}
	}

}
