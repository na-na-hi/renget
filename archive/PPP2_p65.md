> https://rentry.org/PPP2_p65
```cpp
// Code derived from Stroustrup's PPP2 book
// § 3.3 Input and type
// -beginning on p 65

#include <iostream>
#include <string>

using std::cin;
using std::cout;
using std::string;

int main()
{
  cout << "Please enter your first and second names\n";
  string first;
  string second;
  cin >> first >> second;  // read two strings
  cout << "Hello, " << first << " " << second << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_03/main_p65.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p64b) • [Up](https://rentry.org/PPP2_ch03) • [Next](https://rentry.org/PPP2_p66)