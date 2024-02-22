> https://rentry.org/PPP2_p64a
```cpp
// Code derived from Stroustrup's PPP2 book
// § 3.3 Input and type
// -beginning on p 64

#include <iostream>
#include <string>

using std::cin;
using std::cout;
using std::string;

// read name and age
int main()
{
  cout << "Please enter your first name and age\n";
  string first_name;  // string variable
  int    age;         // integer variable
  cin >> first_name;  // read a string
  cin >> age;         // read an integer
  cout << "Hello, " << first_name << " (age " << age << ")\n";
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_03/main_p64a.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p63) • [Up](https://rentry.org/PPP2_ch03) • [Next](https://rentry.org/PPP2_p64b)