#include <iostream>
int Fibonacci(int num) {
	if (num < 1)
		return 0;
	if (num == 1 || num == 2)
		return 1;
	else
		return Fibonacci(num - 1) + Fibonacci(num - 2);
}
int main() {
	int num;
	int fiboNum;
	std::cout << "n번째 피보나치 수열 구하기" << std::endl;
	std::cout << "n을 입력해주세요: " << std::endl;
	std::cin >> num;
	fiboNum = Fibonacci(num);
	std::cout << num << "번째 피보나치 수열은 " << fiboNum << "입니다." << std::endl;
	return 0;
}
