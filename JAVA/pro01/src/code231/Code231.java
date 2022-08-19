package code231;

class Data<T extends Number> {
	T obj;
	Data(T ob) {
		obj = ob;
	}
	int calcMultiple(int n) {
		return obj.intValue()*n;
 	}
	double calcMultiple1(double n) {
		return obj.doubleValue()*n;
 	}
}

public class Code231 {

	public static void main(String[] args) {
		Data<Integer> d = new Data<Integer>(100);
		int result = d.calcMultiple(5);
		System.out.println(result);
		
		Data<Double> e = new Data<Double> (17.5);
		int result2 = e.calcMultiple(5);
		System.out.println(result2);
		
		Data<Double> e1 = new Data<Double> (3.3);
		double result3 = e1.calcMultiple1(2.0);
		System.out.println(result3);

	}

}
