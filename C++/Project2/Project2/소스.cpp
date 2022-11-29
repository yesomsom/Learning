#include <iostream>

// 포인터와 참조

int changeValue(int* p) {
	*p = 3;
	
	return 0;
}

int main() {
	int num = 9;

	std::cout << "num: " << num << std::endl;
	changeValue(&num);
	std::cout << "num: " << num << std::endl;

	int& number = num;
	number = 7;

	std::cout << "number: " << number << std::endl;
	std::cout << "num: " << num << std::endl;

	num = 2;

	std::cout << "number: " << number << std::endl;
	std::cout << "num: " << num << std::endl;


	return 0;
}