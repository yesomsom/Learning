package sec01.exam06;

public class Car {
	
	public int speed = 0;
	
	/*Car(int speed) {
		this.speed = speed;
	}*/
	
	public int speedUp(int speed3) {
		this.speed = speed3;
		speed += 1;
		System.out.println("현재 속도는: " + speed);
		return speed;
	}
	public int speedDown(int speed2) {
		this.speed = speed2;
		speed -= 1;
		System.out.println("현재 속도는: " + speed);
		return speed;
	}
	
	public final void stop() {
		System.out.println("차를 멈춤");
		speed = 0;
	}

}
