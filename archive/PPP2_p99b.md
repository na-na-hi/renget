> https://rentry.org/PPP2_p99b
```cpp
// Code derived from Stroustrup's PPP2 book
// § 4.3.3 Conversions
// -beginning on p 99

#include <iostream>

using std::cout;

int main()
{
  double d = 2.5;
  cout << d << '\n';

  int i = 2;
  cout << i << '\n';

  double d2 = d / i;  // d2 == 1.25
  cout << d2 << '\n';

  int i2 = d / i;  // i2 == 1
  cout << i2 << '\n';

  // int i3{d / i};  // error: double -> int conversion may narrow (§3.9.2)
}
```
>*build & run:*
`g++ -std=c++20 -O2 -Wall -pedantic ./ch_04/main_p99b.cpp && ./a.out`
!!! info *sauce:*
    [Bjarne Stroustrup's PPP2 textbook](https://www.stroustrup.com/programming.html) 
    [/robowaifu/'s official C++ learning textbook thread](https://alogs.space/robowaifu/res/18749.html#18749)
[Prev](https://rentry.org/PPP2_p99a) • [Up](https://rentry.org/PPP2_ch04) • [Next](https://rentry.org/PPP2_p100a)