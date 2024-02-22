> https://rentry.org/PPP2_p60
```cpp
// Code derived from Stroustrup's PPP2 book
// § 3.1 Input
// -beginning on p 60

#include <iostream>
#include <string>

using std::cin;
using std::cout;
using std::string;

// read and write a first name
int main()
{
  cout << "Please enter your first name (followed by 'enter'):\n";
  string first_name;  // first_name is a variable of type string
  cin >> first_name;  // read characters into first_name
  cout << "Hello, " << first_name << "!\n";
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_03/main_p60.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Up](https://rentry.org/PPP2_ch03) • [Next](https://rentry.org/PPP2_p63)