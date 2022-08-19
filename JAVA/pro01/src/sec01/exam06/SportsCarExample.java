package sec01.exam06;
import java.util.Scanner;

public class SportsCarExample {

	public static void main(String[] args) {
		int sportsCarSpeed;
		int choosenum;
		
		Scanner scan = new Scanner(System.in);
		Car c = new Car();
		SportsCar sportsc = new SportsCar();
		
		System.out.print("speed 증가를 원하시면 1, 감소를 원하시면 2를 입력해주세요: ");
		choosenum = scan.nextInt();
		
		if(choosenum == 1) {
			System.out.println("1번을 선택하셨습니다. 속도를 증가시킵니다.");
			
			//1번 증속모드
			System.out.print("speed를 입력하세요: ");
			sportsCarSpeed = scan.nextInt();
			System.out.printf("입력한 speed 값은 %d 입니다.\n",sportsCarSpeed);
			
			if(sportsCarSpeed >= 0 && sportsCarSpeed < 100)
				System.out.println("증속을 시작합니다.\n");
			while(sportsCarSpeed < 100) {
				if(sportsCarSpeed<0) {
					while(sportsCarSpeed<0) {
					System.out.print("speed를 다시 입력해주세요: ");
					sportsCarSpeed = scan.nextInt();
					System.out.printf("입력한 speed 값은 %d 입니다.\n",sportsCarSpeed);
					}
					sportsCarSpeed = sportsc.speedUpAdd(sportsCarSpeed);
				} else {
					sportsCarSpeed = sportsc.speedUpAdd(sportsCarSpeed);
				}
			}
			if(sportsCarSpeed == 100) {
				sportsc.maxSpeed();
			}
			if(sportsCarSpeed > 100) {
				System.out.println("최대 속도 100을 넘었습니다. 감속해주세요.");
			}
			
		} else if(choosenum == 2) {
			System.out.println("2번을 선택하셨습니다. 속도를 감소시킵니다.");
			
			System.out.print("speed를 입력하세요: ");
			sportsCarSpeed = scan.nextInt();
			System.out.printf("입력한 speed 값은 %d 입니다.\n",sportsCarSpeed);
			
			
			if(sportsCarSpeed >= 0)
				System.out.println("감속을 시작합니다.\n");
			while(sportsCarSpeed != 0) {
				if(sportsCarSpeed<0) {
					while(sportsCarSpeed<0) {
					System.out.print("speed를 다시 입력해주세요: ");
					sportsCarSpeed = scan.nextInt();
					System.out.printf("입력한 speed 값은 %d 입니다.\n",sportsCarSpeed);
					}
					sportsCarSpeed = sportsc.speedDownAdd(sportsCarSpeed);
				} else {
					sportsCarSpeed = sportsc.speedDownAdd(sportsCarSpeed);
				}
			}
			if(sportsCarSpeed == 0) {
				c.stop();
			}
			
		} else {
			while(choosenum != 1 && choosenum != 2) {
				System.out.print("잘못입력하셨습니다.\n"
						+ "speed 증가를 원하시면 1, 감소를 원하시면 2를 입력해주세요: ");
				choosenum = scan.nextInt();
			} 
			if(choosenum == 1) {
				System.out.println("1번을 선택하셨습니다. 속도를 증가시킵니다.");
				
				//1번 증속모드
				System.out.print("speed를 입력하세요: ");
				sportsCarSpeed = scan.nextInt();
				System.out.printf("입력한 speed 값은 %d 입니다.\n",sportsCarSpeed);
				
				if(sportsCarSpeed >= 0 && sportsCarSpeed < 100)
					System.out.println("증속을 시작합니다.\n");
				while(sportsCarSpeed < 100) {
					if(sportsCarSpeed<0) {
						while(sportsCarSpeed<0) {
						System.out.print("speed를 다시 입력해주세요: ");
						sportsCarSpeed = scan.nextInt();
						System.out.printf("입력한 speed 값은 %d 입니다.\n",sportsCarSpeed);
						}
						sportsCarSpeed = sportsc.speedUpAdd(sportsCarSpeed);
					} else {
						sportsCarSpeed = sportsc.speedUpAdd(sportsCarSpeed);
					}
				}
				if(sportsCarSpeed == 100) {
					sportsc.maxSpeed();
				}
				if(sportsCarSpeed > 100) {
					System.out.println("최대 속도 100을 넘었습니다. 감속해주세요.");
				}
			} else if(choosenum == 2) {
				System.out.println("2번을 선택하셨습니다. 속도를 감소시킵니다.");
				
				System.out.print("speed를 입력하세요: ");
				sportsCarSpeed = scan.nextInt();
				System.out.printf("입력한 speed 값은 %d 입니다.\n",sportsCarSpeed);
				
				
				if(sportsCarSpeed >= 0)
					System.out.println("감속을 시작합니다.\n");
				while(sportsCarSpeed != 0) {
					if(sportsCarSpeed<0) {
						while(sportsCarSpeed<0) {
						System.out.print("speed를 다시 입력해주세요: ");
						sportsCarSpeed = scan.nextInt();
						System.out.printf("입력한 speed 값은 %d 입니다.\n",sportsCarSpeed);
						}
						sportsCarSpeed = sportsc.speedDownAdd(sportsCarSpeed);
					} else {
						sportsCarSpeed = sportsc.speedDownAdd(sportsCarSpeed);
					}
				}
				if(sportsCarSpeed == 0) {
					c.stop();
				}
				
			}
			
		}
		
		/*
		System.out.print("speed 증가를 원하시면 1, 감소를 원하시면 2를 입력해주세요: ");
		choosenum = scan.nextInt();
		
		if(choosenum == 1) {
			System.out.println("1번을 선택하셨습니다. 속도를 증가시킵니다.");
			
			
		} else if(choosenum == 2) {
			System.out.println("2번을 선택하셨습니다. 속도를 감소시킵니다.");
			
			
		} else {
			while(choosenum != 1 && choosenum != 2) {
				System.out.print("잘못입력하셨습니다.\n"
						+ "speed 증가를 원하시면 1, 감소를 원하시면 2를 입력해주세요: ");
				choosenum = scan.nextInt();
			} 
			if(choosenum == 1) {
				System.out.println("1번");
			} else if(choosenum == 2) {
				System.out.println("2번");
			}
			
		}
		
		*/
		
		/*
		//1번 증속모드
		System.out.print("speed를 입력하세요: ");
		sportsCarSpeed = scan.nextInt();
		System.out.printf("입력한 speed 값은 %d 입니다.\n",sportsCarSpeed);
		
		if(sportsCarSpeed >= 0 && sportsCarSpeed < 100)
			System.out.println("증속을 시작합니다.\n");
		while(sportsCarSpeed < 100) {
			if(sportsCarSpeed<0) {
				while(sportsCarSpeed<0) {
				System.out.print("speed를 다시 입력해주세요: ");
				sportsCarSpeed = scan.nextInt();
				System.out.printf("입력한 speed 값은 %d 입니다.\n",sportsCarSpeed);
				}
				sportsCarSpeed = sportsc.speedUpAdd(sportsCarSpeed);
			} else {
				sportsCarSpeed = sportsc.speedUpAdd(sportsCarSpeed);
			}
		}
		if(sportsCarSpeed == 100) {
			sportsc.maxSpeed();
		}
		if(sportsCarSpeed > 100) {
			System.out.println("최대 속도 100을 넘었습니다. 감속해주세요.");
		}
		*/
		
		/*
		//2번 감속모드
		System.out.print("speed를 입력하세요: ");
		sportsCarSpeed = scan.nextInt();
		System.out.printf("입력한 speed 값은 %d 입니다.\n",sportsCarSpeed);
		
		
		if(sportsCarSpeed >= 0)
			System.out.println("감속을 시작합니다.\n");
		while(sportsCarSpeed != 0) {
			if(sportsCarSpeed<0) {
				while(sportsCarSpeed<0) {
				System.out.print("speed를 다시 입력해주세요: ");
				sportsCarSpeed = scan.nextInt();
				System.out.printf("입력한 speed 값은 %d 입니다.\n",sportsCarSpeed);
				}
				sportsCarSpeed = sportsc.speedDownAdd(sportsCarSpeed);
			} else {
				sportsCarSpeed = sportsc.speedDownAdd(sportsCarSpeed);
			}
		}
		if(sportsCarSpeed == 0) {
			c.stop();
		}
		*/
		
		
	}
	


}
