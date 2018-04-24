#include<iostream>
using namespace std;
int main(){
	int x = 0;
	while (1){
		cout << "					Student Information System";
		cout << "	1.insert information";
		cout << "	2.alert information";
		cout << "	3.delete information";
		cout << "	4.search information";
		cout << "	Write in a number ";
		cin >> x;

		switch (x){
		case 1:cout << "your number is 1"; break;
		case 2:cout << "2"; break;
		case 3:cout << "3"; break;
		case 4:cout << "4"; break;
		default:
			break;

		}
	}
	cin >> x;

	return 0;
}