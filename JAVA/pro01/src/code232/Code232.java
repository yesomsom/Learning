package code232;
class WithWild<T extends Number> {
	T data;
	WithWild (T d) { data = d; }
	boolean same(WithWild<?> x) {
		if (Math.abs(data.doubleValue()) == Math.abs(x.data.doubleValue()))
			return true;
		return false;
	}
}

public class Code232 {

	public static void main(String[] args) {
		WithWild<Integer> a = new WithWild<Integer>(6);
		WithWild<Double> b = new WithWild<Double>(-6.0);
		WithWild<Long> c = new WithWild<Long>(5L);
		if(a.same(b)) System.out.println("a and b are equal");
		else System.out.println("a and b are different");
		if(a.same(c)) System.out.println("a and c are equal");
		else System.out.println("a and c are different");
	}

}
