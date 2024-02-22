> https://rentry.org/PPP2_p96b
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.3.1 Constant expressions
// -beginning on p 96

#include <iostream>

using std::cout;

int main()
{
  constexpr int max = 17;  // a literal is a constant expression
  int           val = 19;

  int max2 = max + 2;  // a constant expression (a const int plus a literal)
  int val2 = val + 2;  // not a constant expression: it uses a variable

  cout << max << '\n'   // output above variable values to console...
       << val << '\n'   //
       << max2 << '\n'  //
       << val2 << '\n';
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p96b.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p96a) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p96c)