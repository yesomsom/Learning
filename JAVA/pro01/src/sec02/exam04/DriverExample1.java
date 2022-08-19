package sec02.exam04;
import sec02.exam03.Bus;
import sec02.exam03.Vehicle;

public class DriverExample1 {

	public static void main(String[] args) {

		Driver1 driver = new Driver1();
		
		Bus bus = new Bus();
		Taxi taxi = new Taxi();
		
		driver.drive(bus);
		
		

	}

}
