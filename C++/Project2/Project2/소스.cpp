#include <iostream>

// �����Ϳ� ����

int changeValue(int* p) {
	*p = 3; // �����Ϳ� ����� �ּҰ��� value�� 3���� 
	
	return 0;
}

int main() {
	int num = 9;

	std::cout << "num: " << num << std::endl; // num: 9
	changeValue(&num);
	std::cout << "num: " << num << std::endl; // num: 3

	int& number = num; // num�� ������ number�� ����, ��ġ
	number = 7; // number�� 7�� �����ϸ� num�� 7

	std::cout << "number: " << number << std::endl; // number: 7
	std::cout << "num: " << num << std::endl; // num: 7

	num = 2; // num�� 2�� �����ϸ� number�� 2

	std::cout << "number: " << number << std::endl; // number: 2
	std::cout << "num: " << num << std::endl; // num: 2

	int a = 11;
	number = a; // a�� �� ����

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