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
	std::cout << "n��° �Ǻ���ġ ���� ���ϱ�" << std::endl;
	std::cout << "n�� �Է����ּ���: " << std::endl;
	std::cin >> num;
	fiboNum = Fibonacci(num);
	std::cout << num << "��° �Ǻ���ġ ������ " << fiboNum << "�Դϴ�." << std::endl;
	return 0;
}
