> https://rentry.org/PPP2_p68a
```cpp
// Code derived from Stroustrup's PPP2 book
// § 3.4 Operations and operators
// -beginning on p 68

#include <iostream>
#include <string>

using std::cin;
using std::cout;
using std::string;

// read first and second name
int main()
{
  cout << "Please enter your first and second names\n";
  string first;
  string second;
  cin >> first >> second;              // read two strings
  string name = first + ' ' + second;  // concatenate strings
  cout << "Hello, " << name << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_03/main_p68a.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p67) • [Up](https://rentry.org/PPP2_ch03) • [Next](https://rentry.org/PPP2_p68b)