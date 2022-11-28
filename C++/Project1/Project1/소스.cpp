#include <string>
using namespace std;

int main() {
	string tempstr = "a";
	string tempstr2 = "b";

	tempstr2 = tempstr; // b는 a로 덮어쓰기 된다.
	string str = tempstr + " 그리고 " + tempstr2; // a 그리고 a

	

}