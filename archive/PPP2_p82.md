> https://rentry.org/PPP2_p82
```cpp
// Code derived from Stroustrup's PPP2 book
// § 3.9.2 Unsafe conversions
// -beginning on p 82

#include <iostream>

using std::cout;

int main()
{
  double x = 2.7;

  // lots of code...

  int y = x;  // y becomes 2

  cout << x << '\n'   //
       << y << '\n';

  int  a = 1000;
  char b = a;  // b becomes –24 (on some machines)

  cout << a << '\n'  //
       << b << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_03/main_p82.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p81) • [Up](https://rentry.org/PPP2_ch03)