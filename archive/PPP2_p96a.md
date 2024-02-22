> https://rentry.org/PPP2_p96a
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.3.1 Constant expressions
// -beginning on p 96

#include <iostream>

using std::cout;

int main()
{
  // constexpr double pi = 3.14159;
  constexpr double pi = 3.14159265359;  // using more-accurate def'n instead
  // pi = 7;  // error: assignment to constant

  constexpr double r = 2.0;
  // r = 2.1;  // error: assignment to constant

  double c = 2 * pi * r;  // OK: we just read pi; we don’t try to change it here

  cout << pi << '\n'  // output above variable values to console...
       << r << '\n'   //
       << c << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p96a.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p95) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p96b)