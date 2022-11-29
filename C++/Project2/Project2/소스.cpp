#include <iostream>

// 포인터와 참조

int changeValue(int* p) {
	*p = 3; // 포인터에 저장된 주소값의 value를 3으로 
	
	return 0;
}

int main() {
	int num = 9;

	std::cout << "num: " << num << std::endl; // num: 9
	changeValue(&num);
	std::cout << "num: " << num << std::endl; // num: 3

	int& number = num; // num의 별명을 number로 붙임, 동치
	number = 7; // number에 7을 대입하면 num도 7

	std::cout << "number: " << number << std::endl; // number: 7
	std::cout << "num: " << num << std::endl; // num: 7

	num = 2; // num에 2를 대입하면 number도 2

	std::cout << "number: " << number << std::endl; // number: 2
	std::cout << "num: " << num << std::endl; // num: 2

	int a = 11;
	number = a; // a의 값 대입

	std::cout << "number: " << number << std::endl; // number: 11
	std::cout << "num: " << num << std::endl; // num: 11

	int c = 1;
	int* b = &c;

	std::cout << "c: " << c << std::endl; // c: 1
	std::cout << "b: " << b << std::endl; // b: 000000C94D5DFBC4

	int d = 2;
	b = &d;

	std::cout << "d: " << d << std::endl; // d: 2
	std::cout << "b: " << b << std::endl; // b: 000000C94D5DFC04

	return 0;
}