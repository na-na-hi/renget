> https://rentry.org/PPP2_p100c
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.4 Statements
// -beginning on p 100

#include <iostream>

using std::cout;

int main()
{
  int a = 1;
  int b = 2;

  a = b;
  ++b;

  // a = b ++ b;  // syntax error: missing semicolon

  cout << a << '\n'  // output above variable values to console...
       << b << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p100c.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p100b) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p101a)