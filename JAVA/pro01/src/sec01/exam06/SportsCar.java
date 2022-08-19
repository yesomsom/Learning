package sec01.exam06;

public class SportsCar extends Car {
	
	int speedresult = 0;

	/*SportsCar(int speed) {
		super(speed);
	}*/
	
	@Override
	public int speedUp(int speed3) {
		this.speed = speed3;
		speed += 10;
		System.out.println("현재 속도는: " + speed);
		return speed;
	}
	
	@Override
	public int speedDown(int speed2) {
		this.speed = speed2;
		speed -= 10;
		System.out.println("현재 속도는: " + speed);
		return speed;
	}	
	
	/*public void stop() {
		
	}*/
	
	public int speedDownAdd(int speed1) {
		this.speed = speed1;
		if(speed==0) {
			super.stop();
		} else if (speed>=10) {
			speedresult = speedDown(speed);
		} else if(speed>0 && speed <10) {
			speedresult = super.speedDown(speed);
		}

		return speedresult;
	}
	
	
	public int speedUpAdd(int speed4) {
		this.speed = speed4;
		if(speed<=90) {
			speedresult = speedUp(speed);
		} else if(speed>90 && speed <100) {
			speedresult = super.speedUp(speed);
		} else if(speed == 100) {
			maxSpeed();
		}
		return speedresult;
	}
	
	public void maxSpeed() {
		System.out.println("최대속도 100에 도달했습니다.");
	}

}
