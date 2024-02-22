> https://rentry.org/PPP2_p97
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.3.1 Constant expressions
// -beginning on p 97

#include <iostream>

using std::cout;

constexpr int my_max = 100;  // rename variable to 'my_max'; std::max ambiguity

void use(int n)
{
  constexpr int c1 = my_max + 7;  // OK: c1 is 107
  const int     c2 = n + 7;  // OK, but don’t try to change the value of c2

  // c2 = 7;  // error: c2 is a const

  cout << my_max << '\n'  // output above variable values to console...
       << n << '\n'       //
       << c1 << '\n'      //
       << c2 << '\n';
}

int main() { use(42); }
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p97.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p96c) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p98)