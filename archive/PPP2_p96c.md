> https://rentry.org/PPP2_p96c
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.3.1 Constant expressions
// -beginning on p 96

#include <iostream>

using std::cout;

constexpr int my_max = 100;  // rename variable to 'my_max'; std::max ambiguity

void use(int n)
{
  constexpr int c1 = my_max + 7;  // OK: c1 is 107
  // constexpr int c2 = n + 7;    // error: we don’t know the value of c2

  cout << my_max << '\n'  // output above variable values to console...
       << n << '\n'       //
       << c1 << '\n';
}

int main() { use(42); }
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p96c.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p96b) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p97)