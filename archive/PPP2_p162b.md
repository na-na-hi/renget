> https://rentry.org/PPP2_p162b
```cpp
// Code derived from Stroustrup's PPP2 book
// § 5.9.1 Practical debug advice
//  -and beginning on p 162

#include <iostream>

using std::cerr;

int my_fct(int a, double d)
{
  int res = 0;
  cerr << "my_fct(" << a << "," << d << ")\n";

  // . . . misbehaving code here . . .

  cerr << "my_fct() returns " << res << '\n';
  return res;
}

int main() { my_fct(1, 2.2); }
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_05/main_p162b.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p162a) • [Up](https://rentry.org/PPP2_ch05) • [Next](https://rentry.org/PPP2_p163)